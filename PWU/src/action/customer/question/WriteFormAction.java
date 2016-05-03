package action.customer.question;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;


public class WriteFormAction  implements CommandAction{
	
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{
	
		
		return "/customer_center/question/question_write.jsp";//ÇØ´ç ºä Á¤º¸ return
		
		

}
}