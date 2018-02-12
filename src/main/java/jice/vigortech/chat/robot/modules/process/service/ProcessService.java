package jice.vigortech.chat.robot.modules.process.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import jice.vigortech.chat.robot.common.constants.ResultCode;
import jice.vigortech.chat.robot.common.model.service.BaseService;
import jice.vigortech.chat.robot.common.util.SecurityUtils;
import jice.vigortech.chat.robot.modules.process.dao.ProcessDao;
import jice.vigortech.chat.robot.modules.process.entiry.ProcessBlock;
import jice.vigortech.chat.robot.modules.process.entiry.Processes;
import jice.vigortech.chat.robot.modules.sys.system.entity.PageQuery;
import jice.vigortech.chat.robot.modules.sys.user.entity.User;

@Service
@Transactional(readOnly=true)
public class ProcessService extends BaseService{
	
	@Autowired
	ProcessDao proDao;
	
	/**
	 * 获取流程列表
	 * @param query
	 * @return
	 */
	public Object getProcessList(PageQuery query) {
		try {
			User user = SecurityUtils.getCurrentUser();
			if(user==null){
				return ResultCode.SESSION_INVALID;
			}
			query.setSql(super.dataScopeFilter(user, "oy", "uy"));
			list = proDao.getProcessList(query);
			total = proDao.getProcessCount(query);
			data.put("processList",list);
			data.put("total",total);
			return data;
		} catch (Exception e) {
			e.printStackTrace();
			return ResultCode.OPERATION_FAILED;
		}
	}

	/**
	 * 获取流程详情
	 * @param id
	 * @return
	 */
	public Object getProDetail(Integer id) {
		try {
			Map<String, Object> temp = proDao.getProDetailById(id);
			if(temp==null){
				return ResultCode.PROCESS_NOT_EXIST;
			}
			list = proDao.getBlockByPid(id);
			temp.put("processBlockList", list);
			return temp;
		} catch (Exception e) {
			e.printStackTrace();
			return ResultCode.OPERATION_FAILED;
		}
	}
	
	/**
	 * 添加或是修改流程
	 * @param process
	 * @return
	 */
	@Transactional(readOnly=false,rollbackFor=Exception.class)
	public ResultCode saveOrUpdatePro(Processes process) {
		process.setContent(process.getProcessBlockList());
		if(process.getId()==null){
			//添加
			try {
				User user = SecurityUtils.getCurrentUser();
				if(user==null){
					return ResultCode.SESSION_INVALID;
				}
				process.setCreateBy(user);
				if(proDao.insertProcess(process)>0){
					if(process.getProcessBlockList()!=null){
						for (ProcessBlock map : process.getProcessBlockList()) {
							map.setPid(process.getId());
							proDao.insertBolk(map);
						}
					}
				}
				return ResultCode.OPERATION_SUCCESSED;
			} catch (Exception e) {
				e.printStackTrace();
				return ResultCode.OPERATION_FAILED;
			}
		}else{
			//修改
			try {
				if(proDao.updateProcess(process)>0){
					proDao.deleteBlock(process.getId());
					if(process.getProcessBlockList()!=null){
						for (ProcessBlock map : process.getProcessBlockList()) {
							map.setPid(process.getId());
							proDao.insertBolk(map);
						}
					}
				}
				return ResultCode.OPERATION_SUCCESSED;
			} catch (Exception e) {
				e.printStackTrace();
				return ResultCode.OPERATION_FAILED;
			}
		}
	}
	
	/**
	 * 根据流程id删除流程
	 * @param id
	 * @return
	 */
	@Transactional(readOnly=false,rollbackFor=Exception.class)
	public ResultCode deleteProcessById(Integer id) {
		try {
			if(proDao.getProDetailById(id)==null){
				return ResultCode.PROCESS_NOT_EXIST;
			}
			if(proDao.deleteProcessById(id)>0){
				proDao.deleteBlock(id);
			}
			return ResultCode.OPERATION_SUCCESSED;
		} catch (Exception e) {
			e.printStackTrace();
			return ResultCode.OPERATION_FAILED;
		}
	}
}
