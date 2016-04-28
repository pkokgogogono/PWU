package action.fashion;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.login.CommandAction;
import vo.fashionBoardVo;

public class fashionmainAction implements CommandAction {
	
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{

		fashionBoardVo vo = new fashionBoardVo();
		
		
		
		return "/fashion/admin/write_save.jsp";
	}
  

}