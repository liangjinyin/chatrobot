package jice.vigortech.chat.robot.modules.mservices.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;

import jice.vigortech.chat.robot.modules.mservices.entity.Iattribute;
import jice.vigortech.chat.robot.modules.mservices.entity.MicService;
import jice.vigortech.chat.robot.modules.sys.system.entity.PageQuery;

@Mapper
public interface MSerivceDao {
	
	
	@Insert("insert into robot_mic_service ("
			+ "`name`,url,attr,`describe`,create_by,create_date,update_date )"
			+ "values( #{name},#{url},#{attrJson},#{describe},#{createBy.username},#{updateDateString},#{updateDateString}"
			+ ") ")
	@SelectKey(before = false, keyProperty = "id", resultType = Integer.class, statement = { "select last_insert_id()" })
	int saveMicService(MicService micService);
	
	
	@Insert("insert into robot_mic_arrt(mid,`name`,`value`,`describe`)"
			+ "values(#{mid},#{name},#{value},#{describe})")
	int saveArrt(Iattribute iAttribute);
	
	@Select("<script> "
			+ "SELECT `name`,id,url,`describe`,create_by createBy,update_date updateDate "
			+ "from robot_mic_service " 
			+ "WHERE del_flag = 0  "
			+ "<if test=\"name!=null and name!=''\"> "
			+ "and name like concat('%',#{name},'%') "
			+ "</if>"
			+ "<if test=\"date != null and date != ''\">"
			+ "and update_date like concat('%', #{date}, '%') "
			+ "</if> "
			+ "order by update_date "
			+ "limit ${rowNo}, ${pageSize} "
			+ "</script>")
	List<Map<String,Object>> getMicServiceList(PageQuery query);
	
	@Select("<script> "
			+ "SELECT count(1) "
			+ "from robot_mic_service " 
			+ "WHERE del_flag = 0  "
			+ "<if test=\"name!=null and name!=''\"> "
			+ "and name like concat('%',#{name},'%') "
			+ "</if>"
			+ "<if test=\"date != null and date != ''\">"
			+ "and update_date like concat('%', #{date}, '%') "
			+ "</if> "
			+ "</script>")
	int getMicServiceCount(PageQuery query);
	
	@Select("select `name`,id,url,attr,`describe`,create_by createBy,update_date updateDate "
			+ "from robot_mic_service where  id=${id}")
	Map<String, Object> getMicServiceById(@Param("id")Integer id);
	
	
	@Delete ("delete from robot_mic_arrt  where mid=${id}")
	int deleteArrt(@Param("id")Integer id);
	
	@Update("update robot_mic_service set del_flag=1 where id=${id}")
	int deleteMicService(@Param("id")Integer id);

	@Select("select name,`value`,id,`describe`,mid from robot_mic_arrt where mid=${id}")
	List<Map<String, Object>> getMicArrtByMid(@Param("id")Integer id);

	@Update("update robot_mic_service set name=#{name},url=#{url},attr=#{attrJson}, "
			+ "`describe` = #{describe},update_date=#{updateDateString} "
			+ "where id=#{id}")
	int updateMicService(MicService micService);

}
