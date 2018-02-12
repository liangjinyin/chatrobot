package jice.vigortech.chat.robot.modules.sys.user.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import jice.vigortech.chat.robot.common.constants.ResultCode;
import jice.vigortech.chat.robot.common.constants.SysConstants;
import jice.vigortech.chat.robot.common.model.service.BaseService;
import jice.vigortech.chat.robot.common.util.AESUtil;
import jice.vigortech.chat.robot.common.util.Md5PasswordEncoderWithSalt;
import jice.vigortech.chat.robot.common.util.SecurityUtils;
import jice.vigortech.chat.robot.modules.sys.menu.dao.MenuDao;
import jice.vigortech.chat.robot.modules.sys.office.dao.OfficeDao;
import jice.vigortech.chat.robot.modules.sys.role.dao.RoleDao;
import jice.vigortech.chat.robot.modules.sys.role.entity.Role;
import jice.vigortech.chat.robot.modules.sys.system.entity.PageQuery;
import jice.vigortech.chat.robot.modules.sys.user.dao.MobileCodeDao;
import jice.vigortech.chat.robot.modules.sys.user.dao.UserDao;
import jice.vigortech.chat.robot.modules.sys.user.entity.User;


@Service
@Transactional(readOnly=true)
public class UserService extends BaseService{

	@Autowired
	UserDao userDao;
	@Autowired
	OfficeDao officeDao;
	@Autowired
	RoleDao roleDao;
	@Autowired
	MobileCodeDao codeDao;
	@Autowired
	MenuDao menuDao;
	
	/**
	 * 获取用户列表
	 * @param query
	 * @return
	 */
	public Object getUserList(PageQuery query) {
		try {
			User user = SecurityUtils.getCurrentUser();
			if(user==null){
				return ResultCode.SESSION_INVALID;
			}
			query.setSql(super.dataScopeFilter(user, "oy", null));
			List<Map<String,Object>> officeAllList = officeDao.getAllOffice();;
			
			list = userDao.getUserList(query);
			total = userDao.getUserCount(query);
			
			data.put("list", officeAllList);
			data.put("userList", list);
			data.put("total", total);
			return data;
		} catch (Exception e) {
			e.printStackTrace();
			return ResultCode.OPERATION_FAILED;
		}
	}
	
	/**
	 * 注册用户或是修改用户
	 * @param user
	 * @return
	 */
	@Transactional(readOnly=false,rollbackFor=Exception.class)
	public Object addUser(User user/*,MobileCode code*/) {
		
			if(user.getId()==null){
				//添加
				try {
					if(userDao.getUserByUserName(user.getUsername())!=null){
						return ResultCode.USER_HAS_EXIST;
					}
					String password = Md5PasswordEncoderWithSalt.encodePassword(user.getPassword()); 
					user.setPassword(password);
					//user.setCreateBy(createBy);
					if(userDao.insertUser(user)>0){//用户注册后生成token并保存
						Map<String,Object> userConfig = new HashMap<String,Object>();
						String token = AESUtil.encrypt(user.getUsername(), SysConstants.SYS_TOKEN_SALT);
						userConfig.put("id", user.getId());
						userConfig.put("name", user.getUsername());
						userConfig.put("token", token);
						userConfig.put("time", "30");
						userDao.insertUserConfig(userConfig);
						//添加默认的角色
						userDao.setRole(user.getId());
					}
					return ResultCode.OPERATION_SUCCESSED;
				} catch (Exception e) {
					e.printStackTrace();
					return ResultCode.OPERATION_FAILED;
				}
			}else{
				//修改
				if(userDao.updateUser(user)>0){
					return ResultCode.OPERATION_SUCCESSED;
				}else{
					return ResultCode.OPERATION_FAILED;
				}
			}
		/*if(codeDao.checkMobileCode(user.getPhone(), code) > 0){
		  添加登陆
		 
		}else if(codeDao.checkMobileIncorrectOrExpired(user.getPhone(), code)==null) {
			return ResultCode.MOBILECODE_INCORRECT;
		} else {
			return ResultCode.MOBILECODE_EXPIRED;
		}*/
	}
	
	/**
	 * 修改密码
	 * @param password
	 * @param newPassword
	 * @return
	 */
	@Transactional(readOnly=false,rollbackFor=Exception.class)
	public ResultCode chgPasswd(String password, String newPassword) {
		User user  = SecurityUtils.getCurrentUser();
		if(user==null){
			return ResultCode.SESSION_INVALID;
		}
		try {
			userDao.chgPasswd(Md5PasswordEncoderWithSalt.encodePassword(newPassword),user.getId());
			return ResultCode.OPERATION_SUCCESSED;
		} catch (Exception e) {
			e.printStackTrace();
			return ResultCode.OPERATION_FAILED;
		}
		
	}
	
	/**
	 * 删除用户
	 * @param id
	 * @return
	 */
	@Transactional(readOnly=false,rollbackFor=Exception.class)
	public ResultCode deleteUserById(Integer id) {
		if(userDao.getUserById(id)==null){
			return ResultCode.USER_NOTEXIST;
		}
		try {
			userDao.deleteUserById(id);
			roleDao.removeRoleUser(id);
			return ResultCode.OPERATION_SUCCESSED;
		} catch (Exception e) {
			e.printStackTrace();
			return ResultCode.OPERATION_FAILED;
		}
	}
	
	/**
	 * 获取用户详情
	 * 
	 * @param id
	 * @return
	 */
	public Object getUserDetail(Integer id) {
		try {
			return userDao.getUserById(id);
		} catch (Exception e) {
			e.printStackTrace();
			return ResultCode.OPERATION_FAILED;
		}
	}
	/**
	 * 根据用户名获取token
	 * @param username
	 * @param flag 
	 * @return
	 */
	@Transactional(readOnly=false,rollbackFor=Exception.class)
	public Object getUserTokenByUserName(String username, boolean flag) {
		Map<String,Object> token = null; 
		List<String> menu = null;
		try {
			token = userDao.getTokenByUserName(username);
			User user = userDao.getUserByUserName(username);//获取该用户下的菜单
			if("admin".equals(username)) {
				menu = userDao.getUserMenu();
			} else {
				List<Role> roleList = roleDao.getRoleByUser(user.getId());//获取该用户的角色
				menu = userDao.getUesrRoleMenu(roleList);
			}
			if(!flag){//根据不同的设备更新user，返回值也不同
				if(!StringUtils.isNotEmpty(user.getType())){
					user.setType("pc端");
					userDao.updateUser(user);
				}
				data.put("menuList",menu);
				data.put("username",username);
				data.put("token",token);
				return data;
			}else{
				if(!StringUtils.isNotEmpty(user.getType())){
					user.setType("移动端");
					userDao.updateUser(user);
				}
				return token;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return ResultCode.OPERATION_FAILED;
		}
	}
}
