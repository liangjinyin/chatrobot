package jice.vigortech.chat.robot.modules.sys.menu.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import jice.vigortech.chat.robot.common.constants.ResultCode;
import jice.vigortech.chat.robot.common.model.service.BaseService;
import jice.vigortech.chat.robot.modules.sys.menu.dao.MenuDao;
@Service
@Transactional(readOnly=true)
public class MenuService extends BaseService {

	@Autowired
	MenuDao menuDao;
	
	/**
	 * 获取该角色下的菜单
	 * @param id
	 * @return
	 */
	public Object getMenuListByRoleId(Integer id) {
		List<Map<String,Object>> menuAllList =null;
		try {
			/*List<Menu> menuList = menuDao.getMenuListByRoleId(id);
			for (Menu menu : menuList) {
				List<Menu> subMenuList = menuDao.getSubMenuListByRoleId(menu.getId(),id);
				if(subMenuList != null){
					menu.setSubMenus(subMenuList);
					menu.setHasSubMenus(true);
				}
			}*/
			menuAllList = menuDao.getAllSubMenu();
			list = menuDao.getMenuListByRoleId(id);
			data.put("menuAllList",menuAllList);
			data.put("menuList",list);
			return data;
		} catch (Exception e) {
			e.printStackTrace();
			return ResultCode.OPERATION_FAILED;
		}
	}
	
	/**
	 * 获取所有菜单
	 * @return
	 */
	/*public Object getMenuAllList() {
		try {
			list = menuDao.getAllSubMenu();
			data.put("menuAllList",list);
			return data;
		} catch (Exception e) {
			e.printStackTrace();
			return ResultCode.OPERATION_FAILED;
		}
	}*/

	
	
}
