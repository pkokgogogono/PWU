package action.order;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;

public class DeleteFormAction implements CommandAction{
 @Override
 public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
  
 request.setAttribute("num", request.getParameter("num"));
	 
  return "/order/deleteForm.jsp";
 }
} 
