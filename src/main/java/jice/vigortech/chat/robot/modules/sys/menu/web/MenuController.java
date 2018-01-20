package jice.vigortech.chat.robot.modules.sys.menu.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import jice.vigortech.chat.robot.common.constants.ResultCode;
import jice.vigortech.chat.robot.common.constants.SysConstants;
import jice.vigortech.chat.robot.common.model.web.BaseController;
import jice.vigortech.chat.robot.modules.sys.menu.service.MenuService;
@RestController
@RequestMapping(path=SysConstants.SYS_URL+"/menu")
public class MenuController extends BaseController {
	
	@Autowired
	MenuService menuService;
	
	@RequestMapping("/list")
	public String getMenuList(@RequestParam("id") Integer id){
		data = menuService.getMenuListByRoleId(id);
		if(data instanceof ResultCode){
			resCode = (ResultCode) data;
			data = null;
		}else{
			resCode = ResultCode.OPERATION_SUCCESSED;
		}
		return Result();
	}
	
	/*@RequestMapping("/all_list")
	public String getMenuAllList(){
		data = menuService.getMenuAllList();
		if(data instanceof ResultCode){
			resCode = (ResultCode) data;
			data = null;
		}else{
			resCode = ResultCode.OPERATION_SUCCESSED;
		}
		return Result();
	}*/
	
	/*@RequestMapping("/add")
	public String add(){
		
	}*/
}
