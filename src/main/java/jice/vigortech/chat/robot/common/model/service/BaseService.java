package jice.vigortech.chat.robot.common.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.assertj.core.util.Lists;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import jice.vigortech.chat.robot.modules.sys.role.entity.Role;
import jice.vigortech.chat.robot.modules.sys.user.entity.User;

@Service
@Transactional(readOnly = true)
public abstract class BaseService {
	
	//protected User user = SecurityUtils.getCurrentUser();
	
	/**
	 * 日志对象
	 */
	protected Logger logger = LoggerFactory.getLogger(getClass());
	protected int total = 0;
	protected Map<String,Object> data = new HashMap<String,Object>();
	protected List<Map<String,Object>> list =null;

	/**
	 * 数据范围过滤
	 * @param user 当前用户对象，通过“entity.getCurrentUser()”获取
	 * @param officeAlias 机构表别名，多个用“,”逗号隔开。
	 * @param userAlias 用户表别名，多个用“,”逗号隔开，传递空，忽略此参数
	 * @return 标准连接条件对象
	 */
	public static String dataScopeFilter(User user, String officeAlias, String userAlias) {

		StringBuilder sqlString = new StringBuilder();
		
		// 进行权限过滤，多个角色权限范围之间为或者关系。
		List<String> dataScope = Lists.newArrayList();
		
		// 超级管理员，跳过权限过滤
		if (!user.getUsername().equalsIgnoreCase("ADMIN")){
			boolean isDataScopeAll = false;
			for (Role r : user.getRoleList(user.getId())){
				for (String oa : StringUtils.split(officeAlias, ",")){
					if (!dataScope.contains(r.getDataScope()) && StringUtils.isNotBlank(oa)){
						if (Role.DATA_SCOPE_COMPANY.equals(r.getDataScope())){
							sqlString.append(" OR " + oa + ".id = '" + user.getCompany().getId() + "'");
							// 包括本公司下的部门 （type=1:公司；type=2：部门）
							sqlString.append(" OR (" + oa + ".parent_id = '" + user.getCompany().getId() + "' AND " + oa + ".type = '2')");
						}
						else if (Role.DATA_SCOPE_OFFICE.equals(r.getDataScope())){
							sqlString.append(" OR " + oa + ".id = '" + user.getOffice().getId() + "'");
						}
						else if (Role.DATA_SCOPE_CUSTOM.equals(r.getDataScope())){
							sqlString.append(" OR EXISTS (SELECT 1 FROM sys_role_office WHERE role_id = '" + r.getId() + "'");
							sqlString.append(" AND office_id = " + oa +".id)");
						}
						dataScope.add(r.getDataScope());
					}
				}
			}
			// 如果没有全部数据权限，并设置了用户别名，则当前权限为本人；如果未设置别名，当前无权限为已植入权限
			if (!isDataScopeAll){
				if (StringUtils.isNotBlank(userAlias)){
					for (String ua : StringUtils.split(userAlias, ",")){
						sqlString.append(" OR " + ua + ".id = '" + user.getId() + "'");
					}
				}else {
					for (String oa : StringUtils.split(officeAlias, ",")){
						//sqlString.append(" OR " + oa + ".id  = " + user.getOffice().getId());
						sqlString.append(" OR " + oa + ".id IS NULL");
					}
				}
			}else{
				// 如果包含全部权限，则去掉之前添加的所有条件，并跳出循环。
				sqlString = new StringBuilder();
			}
		}
		if (StringUtils.isNotBlank(sqlString.toString())){
			return " AND (" + sqlString.substring(4) + ")";
		}
		return "";
	}

}
