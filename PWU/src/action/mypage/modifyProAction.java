package action.mypage;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;




import mypage.dao.mypageDao;
import vo.mypage.*;

public class modifyProAction implements CommandAction {
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{
		request.setCharacterEncoding("euc-kr");
		
		HttpSession session2=request.getSession(true);
		mypageDao dao = mypageDao.getInstance();
		
		mypageVo c = new mypageVo();
		c.setName(request.getParameter("name"));
        c.setZipcode(request.getParameter("zipcode"));
        c.setAddress(request.getParameter("address"));
        c.setEmail(request.getParameter("email"));
        
        int check = dao.updateArticle(c);
        
        request.setAttribute("check", check);
       
		
	    
		return "/mypage/modifyPro.jsp";
	    
	}

  
}