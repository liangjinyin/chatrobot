package jice.vigortech.chat.robot.modules.sys.user.service;

import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import jice.vigortech.chat.robot.common.constants.ResultCode;
import jice.vigortech.chat.robot.modules.sys.user.dao.MobileCodeDao;
import jice.vigortech.chat.robot.modules.sys.user.dao.UserDao;
import jice.vigortech.chat.robot.modules.sys.user.entity.MobileCode;

@Service
@Transactional(readOnly=true)
public class CodeService {
	

	public static final int MOBILE_CODE_LENGH = 6;
	@Autowired
	MobileCodeDao codeDao;
	
	private String createCode(int length) {
		String base = "1234567890";
		Random random = new Random();     
        StringBuffer sb = new StringBuffer();     
        for (int i = 0; i < length; i++) {     
            int number = random.nextInt(base.length());     
            sb.append(base.charAt(number));     
        }     
        return sb.toString();
	}
	
	@Autowired
	UserDao userDao;
	
	@Transactional(readOnly=false,rollbackFor=Exception.class)
	public ResultCode sendMobileCode(MobileCode code) {
		
		code.setCode(createCode(MOBILE_CODE_LENGH));
		if(codeDao.createMobileCode(code) > 0) {
			//调用短信发送
			try {
				return TecentSMSService.sendSMSSingle(code.getMobile(), code.getCode());
			} catch(Exception e) {
				e.printStackTrace();
				return ResultCode.OPERATION_FAILED;
			}
		} else {
			return ResultCode.OPERATION_FAILED;
		}	
	}
}
