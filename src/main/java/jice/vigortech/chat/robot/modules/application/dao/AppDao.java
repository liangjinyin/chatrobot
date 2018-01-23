package jice.vigortech.chat.robot.modules.application.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import jice.vigortech.chat.robot.modules.application.entity.Application;
import jice.vigortech.chat.robot.modules.sys.system.entity.PageQuery;

@Mapper
public interface AppDao {
	
	@Select("select id id ,`name` `name`, is_private isPrivate, `describe` `describe`,  "
			+ "link link, `language` `language`, zone zone, client_token clientToken, "
			+ "dev_token devToken, def_reply defReply, create_by createBy, "
			+ "create_date createDate, update_date updateDate ,storage storage "
			+ "from robot_app where del_flag = 0 "
			+ "and id=${id} "
			)
	Map<String,Object> getAppById(@Param("id")Integer id);
	@Select("select id id ,`name` `name`, is_private isPrivate, `describe` `describe`,  "
			+ "link link, `language` `language`, zone zone, client_token clientToken, "
			+ "dev_token devToken, def_reply defReply, create_by createBy, "
			+ "create_date createDate, update_date updateDate ,storage storage "
			+ "from robot_app where del_flag = 0 "
			+ "and id=${id} "
			)
	Application findAppById(@Param("id")Integer id);

	@Select("<script>"
			+ "select DISTINCT(a.id),a.name ,a.create_date createDate,a.update_date updateDate,a.create_by createBy "
			/*+ ",b.name micService "*/
			+ "from robot_app a "
			+ "LEFT JOIN sys_user uy ON uy.name=a.create_by "
			+ "LEFT JOIN sys_office oy ON oy.id = uy.office_id "
			/*+ "left join sys_mic_service b on b.id = a.mic_service "*/
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
	List<Map<String, Object>> getAllAppList(PageQuery query);
	
	@Select("<script>"
			+ "select count(DISTINCT(a.id)) "
			+ "from robot_app a "
			+ "LEFT JOIN sys_user uy ON uy.name=a.create_by "
			+ "LEFT JOIN sys_office oy ON oy.id = uy.office_id "
			+ "where a.del_flag=0 ${sql} "
			+ "<if test=\"name != null and name != ''\">"
			+ "and a.name like concat('%', #{name}, '%') "
			+ "</if> "
			+ "<if test=\"date != null and date != ''\">"
			+ "and a.update_date like concat('%', #{date}, '%') "
			+ "</if> "
			+ "</script>")
	int getAppCount(PageQuery query);
	
	@Update("update robot_app set del_flag=1 where id = ${id}")
	Integer deleteApp(@Param("id")Integer id);

	@Insert("insert into robot_app ( "
			+ "`name`,is_private,`describe`,link,`language`,zone,client_token,dev_token,mic_service, "
			+ "def_reply,storage,create_by,create_date,update_date ) "
			+ "values( "
			+ "#{name},#{isPrivate},#{describe},#{link},#{language},#{zone}, "
			+ "#{clientToken},#{devToken},#{micService},#{defReply},#{storage},#{createBy.username},#{createDateString}, "
			+ "#{updateDateString} ) "
			)
	Integer insertApp(Application app);

	@Update("update robot_app "
			+ "set `name`=#{app.name},is_private=#{app.isPrivate} , "
			+ "`describe`=#{app.describe},link=#{app.link},`language`=#{app.language},zone=#{app.zone}, "
			+ "client_token=#{app.clientToken},dev_token=#{app.devToken}, mic_service=#{app.micService},def_reply=#{app.defReply}, "
			+ "storage=#{app.storage}, update_date = #{app.updateDateString} "
			+ "where id=#{app.id}")
	Integer updateApp(@Param("app")Application app);
	
	@Select("SELECT a.text, a.intent, b.`start`, b.`end`, b.entity, b.`value` "
			+ "FROM robot_scene_ask a JOIN robot_scene_ask_entitys b ON b.ask_id = a.id "
			+ "WHERE a.del_flag = 0 AND b.del_flag = 0 AND a.id IN "
			+ "( SELECT id FROM robot_scene WHERE del_flag = 0 AND app_id = ${id} ) ")
	List<Map<String,Object>> getAppSlot(@Param("id")Integer id);
	
}
