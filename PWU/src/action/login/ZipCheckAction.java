package action.login;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import action.CommandAction;
import dao.login.LoginDao;
import vo.ZipcodeVo;

public class ZipCheckAction implements CommandAction {

	public String requestPro(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("euc-kr");
		
		LoginDao logindao = LoginDao.getInstance();
		
		if (request.getParameter("area4") != null) {
			
				List<ZipcodeVo> zipcodeList = logindao.zipCheck(request.getParameter("area4"));

				if(zipcodeList.isEmpty())
				{
					request.setAttribute("zipcodeList", null);
				}else{
				request.setAttribute("zipcodeList", zipcodeList);
				}
		}
		else{
			request.setAttribute("zipcodeList", null);
		}

		return "/login/ZipCheck.jsp";
	}

}
