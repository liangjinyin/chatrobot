package jice.vigortech.chat.robot.modules.sys.role.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;

import jice.vigortech.chat.robot.modules.sys.role.entity.Role;
import jice.vigortech.chat.robot.modules.sys.system.entity.PageQuery;

@Mapper
public interface RoleDao {
	
	@Select("<script>"
			+ "select a.id,a.name,a.enname enName,a.data_scope dataScope, a.create_by createBy, "
			+ "a.create_date createDate,a.update_date updateDate "
			+ "from sys_role a "
			+ "LEFT JOIN sys_user uy ON uy.name=a.create_by "
			+ "LEFT JOIN sys_office oy ON oy.id = uy.office_id "
			+ "where a.del_flag=0 ${sql} "
			+ "<if test=\"name != null and name != ''\">"
			+ "and a.name like concat('%', #{name}, '%') "
			+ "</if> "
			+ "<if test=\"date != null and date != ''\">"
			+ "and a.update_date like concat('%', #{date}, '%') "
			+ "</if> "
			+ "order by a.update_date desc "
			+ "limit ${rowNo}, ${pageSize} "
			+ "</script>")
	List<Map<String, Object>> getRoleList(PageQuery query);
	
	@Select("<script>"
			+ "select count(1) "
			+ "from sys_role "
			+ "where del_flag=0 "
			+ "<if test=\"name != null and name != ''\">"
			+ "and name like concat('%', #{name}, '%') "
			+ "</if> "
			+ "<if test=\"date != null and date != ''\">"
			+ "and update_date like concat('%', #{date}, '%') "
			+ "</if> "
			+ "</script>")
	int getRoleCount(PageQuery query);
	
	@Select("select id,`name`,enname enName,data_scope dataScope, create_by createBy, "
			+ "create_date createDate,update_date updateDate "
			+ "from sys_role "
			+ "where del_flag=0 and id=${id}")
	Map<String, Object> getRoleById(@Param("id")Integer id);

	@Update("update sys_role set del_flag=1 where id=${id}")
	int deleteRoleById(@Param("id")Integer id);
	
	@Insert("insert into sys_role(`name`,enname,data_scope,create_by,create_date,update_date) "
			+ "values(#{name},#{enName},#{dataScope},#{createBy.username},#{updateDateString},#{updateDateString})")
	@SelectKey(before = false, keyProperty = "id", resultType = Integer.class, statement = { "select last_insert_id()" })
	int InsertRole(Role role);

	@Insert("insert into sys_role_office(role_id,office_id) "
			+ "values(${roleId},${officeId})")
	int insert(@Param("officeId")Integer id,@Param("roleId") Integer id2);

	@Update("update sys_role set name=#{name},enname=#{enName}, "
			+ "data_scope=#{dataScope},update_date=#{updateDateString} "
			+ "where id=#{id}")
	int updateRole(Role role);
	
	@Select("select id,name,enname enName,data_scope dataScope "
			+ "from sys_role where del_flag=0 and id in "
			+ "(SELECT role_id rid from sys_user_role where user_id =${id}) ")
	List<Role> getRoleByUser(@Param("id")Integer id);

	@Delete("delete from sys_role_office where role_id=${id}")
	int deleteOfficeByRoleId(@Param("id")Integer id);
	
	@Select("select a.id,a.name,a.phone, "
			+ "a.company_id companyid,a.office_id officeid,'微构科技公司' companyName,b.name officeName "
			+ "from sys_user a "
			+ "left join sys_office b on b.id = a.office_id "
			+ "where a.id in ( "
			+ "select user_id from sys_user_role where role_id=${id}) "
			+ "and a.del_flag=0")
	List<Map<String, Object>> getRoleUserList(@Param("id")Integer id);
	
	@Insert("replace into sys_user_role (user_id,role_id) "
			+ "values(${userId},${roleId}) ")
	int addRoleUser(@Param("userId")Integer userId, @Param("roleId")Integer id);
	
	@Insert("replace into sys_user_role (theme_id,role_id) "
			+ "values(${themeId},${roleId}) ")
	int addRoleTheme(@Param("themeId")Integer themeId,@Param("roleId") Integer id);

	@Insert("replace into sys_user_role (secret_id,role_id) "
			+ "values(${secretId},${roleId}) ")
	int addRoleSecret(@Param("secretId")Integer secretId,@Param("roleId") Integer id);

	@Delete("delete from sys_user_role where user_id=${id}")
	int removeRoleUser(@Param("id")Integer userId);
	
	@Delete("delete from sys_role_theme where theme_id=${id}")
	int removeRoleTheme(@Param("id")Integer themeId);

	@Delete("delete from sys_role_secret where secret_id=${id}")
	int removeRoleSecret(@Param("id")Integer secretId);
	
	@Select("SELECT id,name from sys_theme WHERE del_flag=0 and id "
			+ "in (SELECT theme_id from sys_role_theme  where role_id = ${id}) ")
	List<Map<String, Object>> getRoleThemeList(@Param("id")Integer id);
	
	@Select("SELECT id,name from sys_secret WHERE del_flag=0 and id "
			+ "in (SELECT secret_id from sys_role_secret  where role_id = ${id}) ")
	List<Map<String, Object>> getRoleSecretList(@Param("id")Integer id);
	
	@Delete("delete from sys_user_role where role_id=${id}")
	int deleteUserByRoleId(@Param("id")Integer id);
	
	@Delete("delete from sys_role_secret where role_id=${id}")
	int deleteThemeByRoleId(@Param("id")Integer id);
	
	@Delete("delete from sys_role_theme where role_id=${id}")
	int deleteSecretByRoleId(@Param("id")Integer id);
}
