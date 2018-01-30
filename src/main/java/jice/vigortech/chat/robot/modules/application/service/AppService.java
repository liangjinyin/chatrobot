package jice.vigortech.chat.robot.modules.application.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import jice.vigortech.chat.robot.common.constants.ResultCode;
import jice.vigortech.chat.robot.common.model.service.BaseService;
import jice.vigortech.chat.robot.common.util.SecurityUtils;
import jice.vigortech.chat.robot.modules.application.dao.AppDao;
import jice.vigortech.chat.robot.modules.application.entity.Application;
import jice.vigortech.chat.robot.modules.dicts.dao.DictDao;
import jice.vigortech.chat.robot.modules.dicts.entity.Dicts;
import jice.vigortech.chat.robot.modules.intents.dao.IntentDao;
import jice.vigortech.chat.robot.modules.intents.entity.Intents;
import jice.vigortech.chat.robot.modules.mservices.dao.MSerivceDao;
import jice.vigortech.chat.robot.modules.sys.system.entity.PageQuery;
import jice.vigortech.chat.robot.modules.sys.user.entity.User;

@Service
@Transactional(readOnly=true)
public class AppService extends BaseService{

	@Autowired
	AppDao appDao;
	@Autowired
	IntentDao intentDao;
	@Autowired
	DictDao dictDao;
	@Autowired
	private MSerivceDao mServiceDao;

	/**
	 * 删除应用,级联删除 应用下的场景和词库
	 * 
	 * @param id
	 * @return
	 */
	@Transactional(readOnly = false, rollbackFor = Exception.class)
	public ResultCode delApp(Integer id) {
		Map<String, Object> app = appDao.getAppById(id);
		if (app == null) {
			return ResultCode.APP_NOT_EXIST;
		}
		if (appDao.deleteApp(id) > 0) {
			List<Intents> intentList = intentDao.getIntentByAppId(id);
			for (Intents intents : intentList) {
				List<Map<String, Object>> askList = intentDao.getAskListByIName(intents.getName());
				for (Map<String, Object> map : askList) {
					intentDao.deleteEntityListByAId((Integer) map.get("id"));
				}
				intentDao.deleteIntent(intents.getId());
				intentDao.deleteSolt(intents.getId());
				intentDao.deleteOutput(intents.getId());
			}
			List<Dicts> dictList = dictDao.getDictByAppId(id);
			for (Dicts dicts : dictList) {
				dictDao.deleteDictById(dicts.getId());
				dictDao.deleteWord(dicts.getId());
			}
			return ResultCode.OPERATION_SUCCESSED;
		}
		return ResultCode.OPERATION_FAILED;
	}

	/**
	 * 添加或是修改
	 * 
	 * @param app
	 * @return
	 */
	@Transactional(readOnly = false, rollbackFor = Exception.class)
	public ResultCode addApp(Application app) {
		if (app.getId() == null) {
			// 新增
			try {
				User user = SecurityUtils.getCurrentUser();
				if(user==null){
					return ResultCode.SESSION_INVALID;
				}
				app.setCreateBy(user);
				appDao.insertApp(app);
				return ResultCode.OPERATION_SUCCESSED;
			} catch (Exception e) {
				e.printStackTrace();
				return ResultCode.OPERATION_FAILED;
			}
		} else {
			// 修改
			try {
				appDao.updateApp(app);
				return ResultCode.OPERATION_SUCCESSED;
			} catch (Exception e) {
				e.printStackTrace();
				return ResultCode.OPERATION_FAILED;
			}
		}

	}

	/**
	 * 得到应用列表
	 * 
	 * @return appList
	 */
	public Object getAppList(PageQuery query) {
		
		User user = SecurityUtils.getCurrentUser();
		if(user==null){
			return ResultCode.SESSION_INVALID;
		}
		query.setSql(super.dataScopeFilter(user, "oy", "uy"));
		if(user.getUsername().equals("admin")){
			
		}else{
			//任何角色都可以看到公共的APP
			int len = query.getSql().length()-1;
			String sql = query.getSql().substring(0, len);
			sql = sql+" or a.is_private=1)";
			query.setSql(sql);
		}
		list = appDao.getAllAppList(query);
		data.put("list", list);
		data.put("total",appDao.getAppCount(query));
		return data;
	}

	/**
	 * 得到应用明细
	 * 
	 * @return
	 */
	public Object getAppDetail(Integer id) {
		// 权限的校验
		Map<String, Object> detail = appDao.getAppById(id);
		return detail;
	}

	/**
	 * 获取所有的微服务信息
	 * @return
	 */
	public Object getMicService(PageQuery query) {
		try {
			list = mServiceDao.getMicServiceList(query);
			data.put("micServiceList",list);
			return data;
		} catch (Exception e) {
			e.printStackTrace();
			return ResultCode.OPERATION_FAILED;
		}
	}
}
