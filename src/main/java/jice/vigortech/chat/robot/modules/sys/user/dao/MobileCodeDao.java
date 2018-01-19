package jice.vigortech.chat.robot.modules.sys.user.dao;

import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import jice.vigortech.chat.robot.modules.sys.user.entity.MobileCode;

@Mapper
public interface MobileCodeDao {
	
	@Insert("insert into sys_user_mobcode(code,mobile,create_date) "
			+ "values(#{code},#{mobile},#{updateDateString})")
	int createMobileCode(MobileCode code);
	
	//手机验证码，10分钟有效
	@Update("update sys_user_mobcode "
			+ "set verify_date = #{code.updateDateString} "
			+ "where mobile = #{mobile}  and verify_date is null "
			+ "and code = #{code.code} and unix_timestamp(create_date) >= unix_timestamp(#{code.updateDateString}) - 600")
	int checkMobileCode(@Param("mobile")String phone, @Param("code")MobileCode code);


	@Select("select mobile,code,create_date createDate,verify_date verifyDate "
			+ "from sys_user_mobcode "
			+ "where mobile = #{mobile}  "
			+ "and unix_timestamp(code.create_date) >= unix_timestamp(#{code.updateDateString}) - 600 "
			+ "and code = #{code.code} ")	
	Map<String,Object> checkMobileIncorrectOrExpired(@Param("mobile")String phone, @Param("code")MobileCode code);
		
}
