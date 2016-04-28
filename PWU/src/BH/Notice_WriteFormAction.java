package BH;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;

public class Notice_WriteFormAction  implements CommandAction{
	
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{
	
		
		return "/customer_center/notice/notice_write.jsp";//ÇØ´ç ºä Á¤º¸ return
		
		

}
}