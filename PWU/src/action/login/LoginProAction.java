package action.login;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import action.CommandAction;
import vo.MemberVo;
public class LoginProAction implements CommandAction {
	
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{
		request.setCharacterEncoding("euc-kr");

		request.setCharacterEncoding("euc-kr");
		String res = "config.xml";
		HttpSession session2=request.getSession(true);
		InputStream is;
		try {
			is = Resources.getResourceAsStream(res);

		SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
		SqlSession session = factory.openSession();
		if(session.selectOne("member.idcheck",request.getParameter("id"))!=null)
		{	
			session2.setAttribute("check",0);
			MemberVo vo = new MemberVo(request.getParameter("id"),request.getParameter("passwd"));
			if(((int)session.selectOne("member.logincheck", vo))==1)
			{

				session2.setAttribute("memId",request.getParameter("id"));
				return "/login/index.jsp";
			}
		}
		else{
			session2.setAttribute("check",1);
		}
		
		session.commit();

		session.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "/login/loginPro.jsp";
		
	}

  
}