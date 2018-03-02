package jice.vigortech.chat.robot.common.util;

import java.util.ArrayList;
import java.util.List;

import com.google.gson.Gson;

import jice.vigortech.chat.robot.modules.mservices.entity.Iattribute;

public class JSONUtils {
	
	public static List<Iattribute> JSONStringToMap(String JSONString){
		//String temp = "[{\"arrtName\":haha1,\"describe\":\"xixi1\"},{\"arrtName\":haha2,\"describe\":\"xixi2\"},{\"arrtName\":haha,\"describe\":\"xixi\"}]";
		String substring = JSONString.substring(2, JSONString.length()-2);
		String replace = substring.replace("},{", "#");
		String[] split = replace.split("#");
		Gson gson = new Gson();
		List<Iattribute> attrList = new ArrayList<Iattribute>();
		for (String string : split) {
			System.out.println(string);
			Iattribute fromJson = gson.fromJson("{"+string+"}", Iattribute.class);
			attrList.add(fromJson);
		}
		return attrList;
	}
/*
	public static List<Iattribute> JSONStringToMap(String attrJSON, Class<Iattribute> class1) {
		// TODO Auto-generated method stub
		return null;
	}*/

	
}
