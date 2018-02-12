package jice.vigortech.chat.robot.modules.process.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;

import jice.vigortech.chat.robot.modules.process.entiry.ProcessBlock;
import jice.vigortech.chat.robot.modules.process.entiry.Processes;
import jice.vigortech.chat.robot.modules.sys.system.entity.PageQuery;

@Mapper
public interface ProcessDao {
	@Select("<script>"
			+ "select id ,name,`describe`,content,ask,y_action yAction,n_action nAction,flag, create_date createDate,create_by createBy,update_date updateDate from robot_process "
			+ "where del_flag=0 "
			+ "<if test=\"name!=null and name!=''\">"
			+ "and name like concat('%',#{name},'%') "
			+ "</if>"
			+ "<if test=\"date != null and date != ''\">"
			+ "and update_date like concat('%', #{date}, '%') "
			+ "</if> "
			+ "order by update_date "
			+ "limit ${rowNo}, ${pageSize} "
			+ "</script>")
	List<Map<String, Object>> getProcessList(PageQuery query);

	@Select("<script>"
			+ "select count(1) from robot_process "
			+ "where del_flag=0 "
			+ "<if test=\"name!=null and name!=''\">"
			+ "and name like concat('%',#{name},'%') "
			+ "</if>"
			+ "<if test=\"date != null and date != ''\">"
			+ "and update_date like concat('%', #{date}, '%') "
			+ "</if> "
			+ "</script>")
	int getProcessCount(PageQuery query);
	
	@Select("select id,`name`,`describe` ,content,ask,y_action yAction,n_action nAction,flag,update_date updateDate from robot_process "
			+ "where del_flag=0 and id=${id}")
	Map<String,Object> getProDetailById(@Param("id")Integer id);
	
	@Insert("insert into robot_process (`name`,`describe`,content,ask,y_action ,n_action,flag,create_by,create_date,update_date) "
			+ "values(#{name},#{describe},#{content},#{ask},#{yAction},#{nAction},#{flag},#{createBy.username},#{updateDateString},#{updateDateString})")
	@SelectKey(before = false, keyProperty = "id", resultType = Integer.class, statement = { "select last_insert_id()" })
	int insertProcess(Processes process);
	
	@Insert("insert into robot_process_block(pid,aid,it_name,sort)"
			+ "values(#{pid},#{aid},#{itName},#{sort})")
	int insertBolk(ProcessBlock map);

	@Update("update robot_process set `name`=#{name},`describe`=#{describe},content=#{content}, "
			+ "ask=#{ask},y_action=#{yAction},n_action=#{nAction},flag=#{flag}," 
			+ "update_date=#{updateDateString} where id=#{id} ")
	int updateProcess(Processes process);
	
	@Update("update robot_process set del_flag=1 where id=${id}")
	int deleteProcessById(@Param("id")Integer id);
	
	@Select("select pid,aid,it_name itName,sort from robot_process_block where del_flag = 0 and pid = #{pid} "
			+ "order by sort")
	List<Map<String, Object>> getBlockByPid(@Param("pid")Integer id);
	
	@Update("update robot_process_block set del_flag =  1 where pid = #{pid}")
	int deleteBlock(@Param("pid")Integer id);
	
}
