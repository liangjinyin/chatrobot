package jice.vigortech.chat.robot.modules.mservices.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import jice.vigortech.chat.robot.common.constants.ResultCode;
import jice.vigortech.chat.robot.common.model.service.BaseService;
import jice.vigortech.chat.robot.common.util.SecurityUtils;
import jice.vigortech.chat.robot.modules.mservices.dao.MSerivceDao;
import jice.vigortech.chat.robot.modules.mservices.entity.Iattribute;
import jice.vigortech.chat.robot.modules.mservices.entity.MicService;
import jice.vigortech.chat.robot.modules.sys.system.entity.PageQuery;
import jice.vigortech.chat.robot.modules.sys.user.entity.User;

@Service
@Transactional(readOnly=true)
public class MServiceService extends BaseService{

	@Autowired
	MSerivceDao mServiceDao;
	/**
	 * 获取微服务列表
	 * @param query 
	 * @return
	 */
	public Object getMicServiceList(PageQuery query) {
		try {
			User user = SecurityUtils.getCurrentUser();
			if(user==null){
				return ResultCode.SESSION_INVALID;
			}
			//query.setSql(super.dataScopeFilter(user, "oy", "uy"));
			list = mServiceDao.getMicServiceList(query);
			total =  mServiceDao.getMicServiceCount(query);
			data.put("mServiceList", list);
			data.put("total", total);
			return data;
		} catch (Exception e) {
			e.printStackTrace();
			return ResultCode.OPERATION_FAILED;
		}
	}
	/**
	 *  添加或是修改微服务
	 * @param micService
	 * @return
	 */
	@Transactional(readOnly=false ,rollbackFor=Exception.class)
	public ResultCode saveMicSerivice(MicService micService) {
		User user = SecurityUtils.getCurrentUser();
		if(user==null){
			return ResultCode.SESSION_INVALID;
		}
		if(micService.getId()==null){
			//添加
			try{
				micService.setCreateBy(user);
				//合成微服务接口
				String interfaces = micService.getUrl();
				String temp1 = null;
				if(micService.getAttrList()!=null){
					for (Iattribute arrt : micService.getAttrList()) {
						temp1 = arrt.getName()+"="+arrt.getValue()+"&";
						interfaces += temp1;
					}
					micService.setInterfaces(interfaces.substring(0, interfaces.length()-1));
				}else{
					micService.setInterfaces(interfaces);
				}
				
				mServiceDao.saveMicService(micService);
				save(micService);
				return ResultCode.OPERATION_SUCCESSED;
			}catch(Exception e){
				e.printStackTrace();
				return ResultCode.OPERATION_FAILED;
			}
		}else{
			//修改
			try {
				if(mServiceDao.getMicServiceById(micService.getId())==null){
					return ResultCode.MIC_NOT_EXIST;
				}
				mServiceDao.deleteArrt(micService.getId());
				save(micService);
				return ResultCode.OPERATION_SUCCESSED; 
			}catch(Exception e){
				e.printStackTrace();
				return ResultCode.OPERATION_FAILED;
			}
		}
	}
	/**
	 * 删除
	 * @param id
	 * @return
	 */
	@Transactional(readOnly=false ,rollbackFor=Exception.class)
	public ResultCode deleteMicServiceById(Integer id) {
		try {
			if(mServiceDao.getMicServiceById(id)==null){
				return ResultCode.MIC_NOT_EXIST;
			}
			mServiceDao.deleteArrt(id);
			mServiceDao.deleteMicService(id);
			return ResultCode.OPERATION_SUCCESSED;
		} catch (Exception e) {
			e.printStackTrace();
			return ResultCode.OPERATION_FAILED;
		}
	}

	/**
	 * 获取微服务详情
	 * @param id
	 * @return
	 */
	public Object getMicServiceDetail(Integer id) {
		try {
			/*MicService micService = mServiceDao.getMicServiceById(id);
			List<Iattribute> arrt = mServiceDao.getMicArrtByMid(id);
			micService.setAttrList(arrt);*/
			
			data = mServiceDao.getMicServiceById(id);
			list = mServiceDao.getMicArrtByMid(id);
			data.put("attrList", list);
			return data;
		} catch (Exception e) {
			e.printStackTrace();
			return ResultCode.OPERATION_FAILED;
		}
	}
	
	private void save(MicService micService) {
		
		if(micService.getAttrList()!=null){
			for (Iattribute temp : micService.getAttrList()) {
				temp.setMid(micService.getId());
				mServiceDao.saveArrt(temp);
			}
		}
	}

}
