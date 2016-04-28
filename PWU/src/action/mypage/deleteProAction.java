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
import mypage.dao.modifyFormDao;
import vo.mypage.*;

public class deleteProAction implements CommandAction {
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{
		request.setCharacterEncoding("euc-kr");
		
		HttpSession session2=request.getSession(true);
		modifyFormDao dao = modifyFormDao.getInstance();
		
		
		
		
				
				
				
				
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		 
		 return "/mypage/deletePro.jsp";
	
  

	}
}
       