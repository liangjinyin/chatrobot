package jice.vigortech.chat.robot.modules.intents.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import jice.vigortech.chat.robot.common.constants.ResultCode;
import jice.vigortech.chat.robot.modules.application.dao.AppDao;
import jice.vigortech.chat.robot.modules.intents.dao.IntentDao;
import jice.vigortech.chat.robot.modules.intents.entity.Ask;
import jice.vigortech.chat.robot.modules.intents.entity.Entity;
import jice.vigortech.chat.robot.modules.intents.entity.Intents;
import jice.vigortech.chat.robot.modules.intents.entity.Mark;
import jice.vigortech.chat.robot.modules.intents.entity.Solt;
import jice.vigortech.chat.robot.modules.sys.system.entity.PageQuery;

@Service
@Transactional(readOnly=true)
public class IntentService {
	@Autowired
	AppDao appDao;
	@Autowired
	IntentDao intentDao;
	/**
	 * 添加/修改 场景
	 * @param intent
	 * @param id 应用id
	 * @return
	 */
	@Transactional(readOnly=false, rollbackFor=Exception.class)
	public ResultCode insertIntent(Intents intent, Integer id) {
		intent.setAppId(id);
		if(appDao.getAppById(id)==null){
			return ResultCode.APP_NOT_EXIST;
		}
		
		if(intent.getId()==null){
			//添加
			try {
				if(intentDao.checkByName(intent.getName())!=null){
					return ResultCode.INTENT_HAS_EXIST;
				}else{
					if(intentDao.insertIntent(intent)>0){
						insertIntent(intent);
						return ResultCode.OPERATION_SUCCESSED;
					}else{
						return ResultCode.OPERATION_SUCCESSED;
					}
				}
			} catch (Exception e) {
				e.printStackTrace();
				return ResultCode.OPERATION_FAILED;
			}
		}
		//修改
		Map<String,Object> old = intentDao.getIntentById(intent.getId());
		if(old==null){
			return ResultCode.INTENT_NOT_EXIST;
		}else{
			if(intentDao.updateIntent(intent)>=0 ){
				//修改或添加ask
				Map<String,Object> temp  = intentDao.getIntentById(intent.getId());
				deleteAskAndSlot(temp,intent.getId());
				insertIntent(intent);
				return ResultCode.OPERATION_SUCCESSED;
			}else{
				return ResultCode.OPERATION_FAILED;
			}
		}
	}
	/**
	 * 删除 场景
	 * @param id
	 * @return
	 */
	@Transactional(readOnly=false, rollbackFor=Exception.class)
	public ResultCode deleteIntent(Integer id) {
		//权限验证
		Map<String,Object> intent  = intentDao.getIntentById(id);
		if(intent==null){
			return ResultCode.INTENT_NOT_EXIST;
		}
		if(intentDao.deleteIntent(id)>0){
			deleteAskAndSlot(intent,id);
			return ResultCode.OPERATION_SUCCESSED;
		}
		return ResultCode.OPERATION_FAILED;
	}
	/**
	 * 获取场景列表
	 * @param name 场景的名称
	 * @param id 应用的id
	 * @return
	 */
	public Object getIntentList(PageQuery query,Integer id) {
		//TODO 优化
		Map<String,Object> data = new HashMap<String,Object>();
		List<Map<String,Object>> list = intentDao.getIntentList(query,id);
		List<Map<String,Object>> outputList = intentDao.getMarkListByAppId(id);
		
		data.put("list", list);
		data.put("outputList", outputList);
		data.put("total",intentDao.getIntentCount(query,id));
		return data;
	}
	/**
	 * 获取场景明细
	 * @param id 场景id
	 * @return
	 */
	public Object getIntentDetail(Integer id) {
		Map<String,Object> intent  = intentDao.getIntentById(id);
		if(intent==null){
			return ResultCode.INTENT_NOT_EXIST;
		}
		Map<String,Object> data = new HashMap<String,Object>();
		String intentName = (String) intent.get("name");
		List<Map<String,Object>> askList = intentDao.getAskListByIName(intentName);
		for (Map<String, Object> map : askList) {
			Integer aid =  (Integer) map.get("id");
			List<Map<String,Object>> entityList = intentDao.getEntityListByAId(aid);
			map.put("entitys", entityList);
		}
		List<Map<String,Object>> solt = intentDao.getActionListByIid(id);
		List<Map<String,Object>> output = intentDao.getMarkListByIid(id);
		
		//将输入和检测封装成对象返回
		String inputId  = (String) intent.get("input");
		List<Map<String, Object>> inputObj = null;
		List<Map<String, Object>> checkIdObj = null;
		if(StringUtils.isNoneEmpty(inputId)){
			inputObj = intentDao.getMarkById(inputId);
		}
		String checkId  = (String) intent.get("check");
		if(StringUtils.isNotEmpty(checkId)){
			checkIdObj = intentDao.getMarkById(checkId);
		}
		
		intent.put("askList", askList);
		intent.put("slotList", solt);
		intent.put("output", output);
		intent.put("inputObj", inputObj);
		intent.put("checkIdObj", checkIdObj);
		data.put("intent", intent);
		//data.put("kkk", getIntentDetail(1));
		return data;
	}
	
	private void insertIntent(Intents intent){
		
		if(intent.getAskList()!=null){
			for (Ask ask : intent.getAskList()) {
				ask.setIntent(intent.getName());
				String text = ask.getText();
				if(intentDao.insertAsk(ask)>0){
					if(ask.getEntitys()!=null){
						for(Entity entity:ask.getEntitys()){
							entity.setAskId(ask.getId());
							String value = entity.getValue();
							int start = text.indexOf(value);
							int end = start+value.length();
							entity.setStart(start);
							entity.setEnd(end);
							intentDao.insertEntity(entity);
						}
					} 
				}
			}
		}
		//添加solt
		if(intent.getSlotList()!=null){
			for(Solt solt :intent.getSlotList()){
				solt.setIntentId(intent.getId());
				intentDao.insertAction(solt);
			}
		}
		if(intent.getOutput()!=null){
			String id = "";
			for(Mark output :intent.getOutput()){
				output.setIntId(intent.getId());
				output.setAppId(intent.getAppId());
				if(intentDao.insertOutput(output)>0){
					id += output.getId()+",";
				}
			}
			if(id.length()>1){
				intent.setOutputId(id.substring(0, id.length()-1));
				intentDao.updateIntent(intent);
			}
		}
	}
	
	private void deleteAskAndSlot(Map<String,Object> intent,Integer id){
		String iname = (String) intent.get("name");
		List<Map<String,Object>> askList = intentDao.getAskListByIName(iname);
		for (Map<String, Object> map : askList) {
			Integer aid =  (Integer) map.get("id");
			intentDao.deleteEntityListByAId(aid);
		}
		intentDao.deleteAskByName(iname);
		intentDao.deleteSolt(id);
		intentDao.deleteOutput(id);
	}
	
	/**
	 * 获取所有的意图
	 * @return
	 */
	public Object getAllIntents() {
		try {
			return intentDao.getAllIntents();
		} catch (Exception e) {
			e.printStackTrace();
			return ResultCode.OPERATION_FAILED;
		}
	}
}
