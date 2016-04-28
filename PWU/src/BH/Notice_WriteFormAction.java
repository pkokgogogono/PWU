package BH;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

<<<<<<< HEAD
import action.CommandAction;
=======
import action.login.CommandAction;
>>>>>>> branch 'master' of https://github.com/pkokgogogono/PWU.git

public class Notice_WriteFormAction  implements CommandAction{
	
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{
	
		
		return "/customer_center/notice/notice_write.jsp";//ÇØ´ç ºä Á¤º¸ return
		
		

}
}