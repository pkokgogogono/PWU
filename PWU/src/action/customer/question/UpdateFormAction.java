package action.customer.question;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import action.CommandAction;


public class UpdateFormAction  implements CommandAction{
	
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{
		
		return "/cutomer_center/question/question_update.jsp";

}
}