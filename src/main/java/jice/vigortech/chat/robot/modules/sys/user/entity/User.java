package jice.vigortech.chat.robot.modules.sys.user.entity;

import java.io.Serializable;
import java.util.List;

import jice.vigortech.chat.robot.common.model.entity.BaseEntity;
import jice.vigortech.chat.robot.common.util.SecurityUtils;
import jice.vigortech.chat.robot.modules.sys.role.entity.Role;

public class User extends BaseEntity implements Serializable {

	/**
	 * 用户
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private String username;
	private String password;
	private String phone;
	private String email;
	private String type;//用户的类型，，，移动端 或是公司内部 PC端
	private String role;
	private List<Role> roleList;
	private Integer companyid;
	private Integer officeid;
	/*private Office company;	// 归属公司
	private Office office;	// 归属部门
*/	
	
	
	
	
	
/*
	public User(String username, String password, String phone, String email, String role, List<Role> roleList,
			Integer companyid, Integer officeid, Office company, Office office) {
		super();
		this.username = username;
		this.password = password;
		this.phone = phone;
		this.email = email;
		this.role = role;
		this.roleList = roleList;
		this.companyid = companyid;
		this.officeid = officeid;
		this.company = company;
		this.office = office;
	}
*/


	public Integer getCompanyid() {
		return companyid;
	}

	public void setCompanyid(Integer companyid) {
		this.companyid = companyid;
	}

	public Integer getOfficeid() {
		return officeid;
	}

	public void setOfficeid(Integer officeid) {
		this.officeid = officeid;
	}

/*	public Office getCompany() {
		return company;
	}

	public void setCompany(Office company) {
		this.company = new Office(company.getId());
	}

	public Office getOffice() {
		return office;
	}

	public void setOffice(Office office) {
		this.office = office;
	}*/

	public List<Role> getRoleList(Integer id) {
		
		return roleList==null?SecurityUtils.getRoleListByUser(id):roleList;
		//return roleList;
	}

	public void setRoleList(List<Role> roleList) {
		this.roleList = roleList;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	
	
	
}
