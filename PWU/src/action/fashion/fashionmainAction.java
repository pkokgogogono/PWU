package action.fashion;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

<<<<<<< HEAD
import action.login.CommandAction;
import vo.fashionBoardVo;
=======
import action.CommandAction;
import vo.fashionBoardVo; 
>>>>>>> branch 'master' of https://github.com/pkokgogogono/PWU.git

public class fashionmainAction implements CommandAction {
	
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{

		fashionBoardVo vo = new fashionBoardVo();
		
		
		
		return "/fashion/admin/write_save.jsp";
	}
  

}