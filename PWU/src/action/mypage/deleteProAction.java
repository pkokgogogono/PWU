package action.mypage;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import dao.LoginDao;
import mypage.dao.mypageDao;
import vo.MemberVo;
import vo.mypage.*;

public class deleteProAction implements CommandAction {
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{
		request.setCharacterEncoding("euc-kr");
		
		HttpSession session2=request.getSession(true);
		mypageDao dao = mypageDao.getInstance();
		
		
		

        
		try{
			String id = (String)session2.getAttribute("memId");
			String password  = request.getParameter("password");
			
			
			
			if((dao.dbpass((String)session2.getAttribute("memId"))!=null)){
				session2.setAttribute("check",0);
				mypageVo vo = new mypageVo((String)session2.getAttribute("memId"),request.getParameter("passwd"));
				if((dao.passwdcheck(password))==1){
					dao.deletemember("memId","passwd");
				}
			}else{
				session2.setAttribute("check",1);
				
			}
	     
			
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		 
		 return "/mypage/deletePro.jsp";
	
  

	}
}
       