package BH;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
<<<<<<< HEAD
import action.CommandAction;
=======

import action.login.CommandAction;
>>>>>>> branch 'master' of https://github.com/pkokgogogono/PWU.git

public class Notice_ReadFormAction  implements CommandAction{
	
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{
		
		return "/cutomer_center/notice/notice_list.jsp";

}
}