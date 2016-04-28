package BH;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.login.CommandAction;

public class Notice_ReadFormAction  implements CommandAction{
	
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{
		
		return "/cutomer_center/notice/notice_list.jsp";

}
}