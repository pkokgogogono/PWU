package action.customer.question;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import action.CommandAction;
import vo.CustomerVo;
import vo.MemberVo;
import vo.QuestionVo;

public class WriteProAction implements CommandAction{
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{

		request.setCharacterEncoding("euc-kr");
		String res = "config.xml";
	
		InputStream is;
		try {
			is = Resources.getResourceAsStream(res);
		      
		SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
		SqlSession session = factory.openSession();

		QuestionVo vo = new QuestionVo( request.getParameter("title"),
				request.getParameter("content"), request.getParameter("writer"));
	
		int n = session.insert("question.insert", vo);
		System.out.println("vo : " + vo); 
		session.commit();

		session.close();
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	
	return "/customer_center/question/question_writepro.jsp";
}


}



