package jice.vigortech.chat.robot.modules.sys.role.service;

import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import jice.vigortech.chat.robot.common.constants.ResultCode;
import jice.vigortech.chat.robot.common.model.service.BaseService;
import jice.vigortech.chat.robot.common.util.SecurityUtils;
import jice.vigortech.chat.robot.modules.sys.office.dao.OfficeDao;
import jice.vigortech.chat.robot.modules.sys.office.entity.Office;
import jice.vigortech.chat.robot.modules.sys.role.dao.RoleDao;
import jice.vigortech.chat.robot.modules.sys.role.entity.Role;
import jice.vigortech.chat.robot.modules.sys.system.entity.PageQuery;
import jice.vigortech.chat.robot.modules.sys.user.dao.UserDao;
import jice.vigortech.chat.robot.modules.sys.user.entity.User;

@Service
@Transactional(readOnly=true,rollbackFor=Exception.class)
public class RoleService extends BaseService{

	@Autowired
	RoleDao roleDao;
	@Autowired
	UserDao userDao;
	@Autowired
	OfficeDao officeDao;
	
	/**
	 * 获取角色列表
	 * @param query
	 * @return
	 */
	public Object getRoleList(PageQuery query) {
		try {
			
			User user = SecurityUtils.getCurrentUser();
			if(user==null){
				return ResultCode.SESSION_INVALID;
			}
			query.setSql(super.dataScopeFilter(user, "oy", "uy"));
			list = roleDao.getRoleList(query);
			total = roleDao.getRoleCount(query);
			data.put("roleList", list);
			data.put("total", total);
			return data;
		} catch (Exception e) {
			e.printStackTrace();
			return ResultCode.OPERATION_FAILED;
		}
	}

	/**
	 * 根据角色id删除角色
	 * @param id
	 * @return
	 */
	@Transactional(readOnly=false,rollbackFor=Exception.class)
	public ResultCode deleteRoleById(Integer id) {
		try {
			if(roleDao.getRoleById(id)==null){
				return ResultCode.ROLE_NOT_EXITS;
			}
			roleDao.deleteUserByRoleId(id);
			roleDao.deleteOfficeByRoleId(id);
			roleDao.deleteThemeByRoleId(id);
			roleDao.deleteSecretByRoleId(id);
			roleDao.deleteRoleById(id);
			return ResultCode.OPERATION_SUCCESSED;
		} catch (Exception e) {
			e.printStackTrace();
			return ResultCode.OPERATION_FAILED;
		}
	}
	
	/**
	 * 添加或是修改角色
	 * @param role
	 * @return
	 */
	@Transactional(readOnly=false,rollbackFor=Exception.class)
	public ResultCode saveOrUpdateRole(Role role) {
		try {
			if(role.getId()==null){
				//添加
				User user = SecurityUtils.getCurrentUser();
				if(user==null){
					return ResultCode.SESSION_INVALID;
				}
				role.setCreateBy(user);
				if(roleDao.InsertRole(role)>0){
					save(role);
				}
			}else{
				//修改
				if(roleDao.updateRole(role)>=0){
					roleDao.deleteOfficeByRoleId(role.getId());
					save(role);
				}
			}
			return ResultCode.OPERATION_SUCCESSED;
		} catch (Exception e) {
			e.printStackTrace();
			return ResultCode.OPERATION_FAILED;
		}
	}

	/**
	 * 根据id获取角色详情
	 * @param id
	 * @return
	 */
	public Object getRoleDetailById(Integer id) {
		try {
			Map<String,Object> roleDetail = roleDao.getRoleById(id);
			if(roleDetail==null){
				return ResultCode.ROLE_NOT_EXITS;
			}
			return roleDetail;
		} catch (Exception e) {
			e.printStackTrace();
			return ResultCode.OPERATION_FAILED;
		}
	}
	
	/**
	 * 保存角色与office的关系
	 * 
	 */
	private void save(Role role){
		if(role.getOfficeList()!=null){
			for (Office temp : role.getOfficeList()) {
				roleDao.insert(temp.getId(),role.getId());//添加office
				}
			}
	}
	
	/**
	 * 获取角色用户列表
	 * @param id 角色id
	 * @param dept 
	 * @return
	 */
	public Object getRoleUserList(Integer id) {
		try {
			list = roleDao.getRoleUserList(id);
			Map<String,Object> temp = roleDao.getRoleById(id);
			List<Map<String,Object>> userAllList= userDao.getUserAllList();
			/*//返回机构
			Map<String,Object> officeAllList = officeDao.getParent();
			List<Map<String,Object>> children = officeDao.getAllOffice();;
			officeAllList.put("children", children);
			data.put("officeAllList", officeAllList);*/		
			
			
			data.put("userAllList", userAllList);		
			data.put("userList", list);
			data.put("roleDetail", temp);
			return data;
		} catch (Exception e) {
			e.printStackTrace();
			return ResultCode.OPERATION_FAILED;
		}
	}
	
	/**
	 * 角色分配用户
	 * @param ids 用户id
	 * @return
	 */
	@Transactional(readOnly=false,rollbackFor=Exception.class)
	public ResultCode addRoleUser(String ids,Integer id) {
		try {
			roleDao.deleteUserByRoleId(id);
			if(StringUtils.isNoneBlank(ids)){
				String[] split = ids.split(",");
				for (String userId : split) {
					roleDao.addRoleUser(Integer.parseInt(userId),id);
				}
			}
			
			return ResultCode.OPERATION_SUCCESSED;
		} catch (Exception e) {
			e.printStackTrace();
			return ResultCode.OPERATION_FAILED;
		}
	}
	
	/**
	 * 角色分配主题和密级
	 * @param themeIds 主题id
	 * @param id 角色id
	 * @param secretIds 密级id
	 * @return
	 */
	@Transactional(readOnly=false,rollbackFor=Exception.class)
	public ResultCode addRoleThemeAndSecret(String themeIds, Integer id, String secretIds) {
		try {
			roleDao.deleteThemeByRoleId(id);
			roleDao.deleteSecretByRoleId(id);
			if(StringUtils.isNoneBlank(themeIds)){
				String[] temp1 = themeIds.split(",");
				for (String themeId : temp1) {
					roleDao.addRoleTheme(Integer.parseInt(themeId),id);
				}
			}
			
			if( StringUtils.isNoneBlank(secretIds)){
				String[] temp2 = secretIds.split(",");
				for (String secretId : temp2) {
					roleDao.addRoleSecret(Integer.parseInt(secretId),id);
				}
			}
			return ResultCode.OPERATION_SUCCESSED;
		} catch (Exception e) {
			e.printStackTrace();
			return ResultCode.OPERATION_FAILED;
		}
	}
	
	/**
	 * 移除用户与角色之间的关系
	 * @param userId 用户id
	 * @param id 角色id
	 * @return
	 */
	@Transactional(readOnly=false,rollbackFor=Exception.class)
	public ResultCode removeRoleUser(Integer userId) {
		try {
			roleDao.removeRoleUser(userId);
			return ResultCode.OPERATION_SUCCESSED;
		} catch (Exception e) {
			e.printStackTrace();
			return ResultCode.OPERATION_FAILED;
		}
	}
	
	/**
	 * 移除主题与角色之间的关系
	 * @param themeId 主题id
	 * @return
	 */
	@Transactional(readOnly=false,rollbackFor=Exception.class)
	public ResultCode removeRoleTheme(Integer themeId) {
		try {
			roleDao.removeRoleTheme(themeId);
			return ResultCode.OPERATION_SUCCESSED;
		} catch (Exception e) {
			e.printStackTrace();
			return ResultCode.OPERATION_FAILED;
		}
	}
	
	/**
	 * 移除密级与角色之间关系
	 * @param secretId
	 * @return
	 */
	@Transactional(readOnly=false,rollbackFor=Exception.class)
	public ResultCode removeRoleSecret(Integer secretId) {
		try {
			roleDao.removeRoleSecret(secretId);
			return ResultCode.OPERATION_SUCCESSED;
		} catch (Exception e) {
			e.printStackTrace();
			return ResultCode.OPERATION_FAILED;
		}
	}
	
	/**
	 * 获取角色中密级和主题
	 * @param id 角色id
	 * @return
	 */
	public Object getRoleTsList(Integer id) {
		try {
			List<Map<String,Object>> themeList = roleDao.getRoleThemeList(id);
			List<Map<String,Object>> secretList = roleDao.getRoleSecretList(id);
			Map<String,Object> roleDetail = roleDao.getRoleById(id);
			data.put("roleDetail", roleDetail);
			data.put("themeList", themeList);
			data.put("secretList", secretList);
			return data;
		} catch (Exception e) {
			e.printStackTrace();
			return ResultCode.OPERATION_FAILED;
		}
	}
}
