package jice.vigortech.chat.robot.modules.intents.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;

import jice.vigortech.chat.robot.modules.intents.entity.Ask;
import jice.vigortech.chat.robot.modules.intents.entity.Entity;
import jice.vigortech.chat.robot.modules.intents.entity.Intents;
import jice.vigortech.chat.robot.modules.intents.entity.Mark;
import jice.vigortech.chat.robot.modules.intents.entity.Solt;
import jice.vigortech.chat.robot.modules.sys.system.entity.PageQuery;

@Mapper
public interface IntentDao {
	//添加场景
	@Insert("insert into robot_scene "
			+ "(app_id, name, rank,answer,input,`check`,act_name,create_date,update_date) "
			+ "values(#{appId}, #{name}, #{rank},#{answer},#{input}, #{check},#{actionName},#{updateDateString}, "
			+ "#{updateDateString}) "
			)
	@SelectKey(before = false, keyProperty = "id", resultType = Integer.class, statement = { "select last_insert_id()" })
	Integer insertIntent(Intents intent);
	@Insert("insert into robot_scene_ask( "
			+ "text,intent) "
			+ "values( "
			+ "#{text},#{intent})"
			)
	@SelectKey(before = false, keyProperty = "id", resultType = Integer.class, statement = { "select last_insert_id()" })
	int insertAsk(Ask ask);
	@Insert("insert into robot_scene_ask_entitys ("
			+ "ask_id,start,end,value,entity) "
			+ "values(#{askId},#{start},#{end},#{value},#{entity})"
			)
	int insertEntity(Entity entity);
	
	@Insert("insert into robot_scene_slot("
			+ "int_id,flag,dict_name,type_name,`message`,def_value) "
			+ "values(#{intentId}, #{flag}, #{dictName}, #{typeName}, #{message},#{defValue} )")
	Integer insertAction(Solt action);
	
	@Insert("insert into robot_scene_mark("
			+ "int_id,app_id,name,ask,y_hint,y_action,in_hint,in_action,on_hint,on_action,lifecycle) "
			+ "values(#{intId},#{appId},#{name},#{ask},#{yHint},#{yAction},#{inHint},#{inAction},#{onHint},#{onAction},#{lifecycle})")
	@SelectKey(before = false, keyProperty = "id", resultType = Integer.class, statement = { "select last_insert_id()" })
	int insertOutput(Mark output);
	
	//删除场景
	
	@Update("update robot_scene set del_flag = 1 where id = ${id}")
	Integer deleteIntent(@Param("id")Integer id);
	@Update("update robot_scene_slot set del_flag = 1 where int_id = ${id}")
	Integer deleteSolt(@Param("id")Integer id);
	@Update("update robot_scene_ask_entitys set del_flag=1 where ask_id=${id}")
	int deleteEntityListByAId(@Param("id")Integer aid);
	@Update("update robot_scene_ask set del_flag=1 where intent=#{name}")
	int deleteAskByName(@Param("name")String iname);
	@Update("update robot_scene_mark set del_flag=1 where int_id=${id}")
	int deleteOutput(@Param("id")Integer id);
	
	//更新场景
	@Update("update robot_scene set name=#{name},rank=#{rank},act_name=#{actionName},answer=#{answer},input=#{input}, "
			+ "output=#{outputId},`check`=#{check},update_date=#{updateDateString} where id=#{id}"
			)
	int updateIntent(Intents intent);
	@Update(
			"update robot_scene_ask set text=#{text} "
			+ "where id = #{id}"
			)
	int updateAsk(Ask ask);
	@Update("update robot_scene_ask_entitys set start=#{start}, "
			+ "end=#{end},value=#{value},entity=#{entity} "
			+ "where id=#{id}")
	int updateEntity(Entity entity);
	@Update(
			 "update robot_scene_slot set dict_name=#{dictName},type_name=#{typeName}, "
			+ "`message`=#{message},flag=#{flag},def_value=#{defValue} "
			+ "where id = #{id}"
			)
	int updateAction(Solt slot);
	
	
	//查询场景信息
	@Select("select id id,app_id appId,input,name,`check`,rank,act_name actionName, "
			+ "update_date updateDate "
			+ "from robot_scene "
			+ "where del_flag=0 and id=${id} "
			)
	Map<String,Object> getIntentById(@Param("id")Integer id);
	
	@Select("<script>"
			+ "select id id,`name`,create_date createDate,update_date updateDate from robot_scene where del_flag=0 and app_id=${id} "
			+ "<if test=\"page.name != null and page.name != ''\">"
			+ "and name like concat('%', #{page.name}, '%') "
			+ "</if> "
			+ "<if test=\"page.date != null and page.date != ''\">"
			+ "and update_date like concat('%', #{page.date}, '%') "
			+ "</if> "
			+ "order by update_date desc "
			+ "limit ${page.rowNo}, ${page.pageSize} "
			+ "</script>")
	List<Map<String, Object>> getIntentList(@Param("page")PageQuery query,@Param("id") Integer id);
	
	@Select("<script>"
			+ "select count(1) from robot_scene where del_flag=0 and app_id=${id} "
			+ "<if test=\"page.name != null and page.name != ''\">"
			+ "and name like concat('%', #{page.name}, '%')  "
			+ "</if>"
			+ "<if test=\"page.date != null and page.date != ''\">"
			+ "and update_date like concat('%', #{page.date}, '%') "
			+ "</if> "
			+ "</script>")
	int getIntentCount(@Param("page")PageQuery query,@Param("id")Integer id);
	
	@Select("select id id ,text text,intent intent from robot_scene_ask where intent=#{name} and del_flag=0")
	List<Map<String, Object>> getAskListByIName(@Param("name") String name);
	@Select("select id, `start` ,`end`,`value`,entity from robot_scene_ask_entitys where del_flag=0 "
			+ "and ask_id=${id} order by id")
	List<Map<String, Object>> getEntityListByAId(@Param("id")Integer id);
	
	@Select(" select id id ,flag flag,dict_name dictName,type_name typeName,`message` message, "
			+ "def_value defValue from robot_scene_slot where del_flag=0 and int_id=${id} "
			+ "order by id")
	List<Map<String, Object>> getActionListByIid(@Param("id")Integer id);
	
	@Select("select id ,name from robot_scene where del_flag=0 and app_id=${appId}")
	List<Intents> getIntentByAppId(@Param("appId")Integer appId);
	
	@Select("select id ,name from robot_scene where del_flag=0 and name=#{name}")
	Map<String,Object> checkByName(@Param("name")String name);
	
	@Select("select id ,name,ask,y_hint yHint,y_action yAction,in_hint inHint, "
			+ "in_action inAction,on_hint onHint,on_action onAction,lifecycle from robot_scene_mark where del_flag=0 and int_id=${id}")
	List<Map<String, Object>> getMarkListByIid(@Param("id")Integer id);
	
	@Select("select id ,name,ask,y_hint yHint,y_action yAction,in_hint inHint, "
			+ "in_action inAction,on_hint onHint,on_action onAction,lifecycle from robot_scene_mark where del_flag=0 and app_id=${id}")
	List<Map<String, Object>> getMarkListByAppId(@Param("id")Integer id);
	
	@Select("select id ,name from robot_scene_mark where  id in (${id})")
	List<Map<String, Object>> getMarkById(@Param("id")String id);

}
