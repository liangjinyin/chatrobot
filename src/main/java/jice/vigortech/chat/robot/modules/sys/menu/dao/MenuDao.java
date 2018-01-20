package jice.vigortech.chat.robot.modules.sys.menu.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface MenuDao {

	/*@Select("select a.id,a.menu_name name,1 checked "
			+ "from sys_menu a "
			+ "where a.id in(select menu_id sys_role_menu where role_id = ${id}) "
			+ "and a.parent_menu is null "
			+ "order by a.sort")
	List<Menu> getMenuListByRoleId(@Param("id")Integer id);
	
	@Select("select id, menu_name name "
			+ "from sys_menu "
			+ "where id in(select menu_id from sys_role_menu where role_id = ${roleId}) "
			+ "and id = (select parent_menu from sys_menu where id=${menuId})")
	List<Menu> getSubMenuListByRoleId(@Param("menuId")String id,@Param("roleId")Integer id2);*/
	
	@Select("select id,menu_name name from sys_menu order by sort ")
	List<Map<String, Object>> getAllSubMenu();
	
	@Select("select id,menu_name name from sys_menu "
			+ "where id in(select menu_id from sys_role_menu where role_id = ${id}) "
			+ "order by sort")
	List<Map<String, Object>> getMenuListByRoleId(@Param("id")Integer id);

}
