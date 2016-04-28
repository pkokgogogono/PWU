package action.login;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import dao.login.LoginDao;
import vo.MemberVo;

public class FindIdProAction implements CommandAction {
	
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{

		MemberVo membervo = new MemberVo();
		membervo.setName(request.getParameter("name"));
		membervo.setEmail(request.getParameter("email"));
		
		LoginDao logindao = LoginDao.getInstance();
		List<MemberVo> idList = logindao.findId(membervo);
		
//		if(idList.isEmpty())
//		{
//			request.setAttribute("id", idList);
//			
//			return "/login/findIdPro.jsp";
//		}
//		
//		Iterator<MemberVo> iter = idList.iterator();
//		while(iter.hasNext())
//		{
//			iter.next();			
//		}
		
		request.setAttribute("id", idList);
		
		return "/login/findIdPro.jsp";
	}
}
