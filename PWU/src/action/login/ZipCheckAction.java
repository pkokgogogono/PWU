package action.login;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Vector;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import action.CommandAction;

public class ZipCheckAction implements CommandAction {

	public String requestPro(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("euc-kr");
		if (request.getParameter("area4") != null) {
			String res = "config.xml";

			InputStream is;
			try {
				is = Resources.getResourceAsStream(res);

				SqlSessionFactory factory = new SqlSessionFactoryBuilder()
						.build(is);
				SqlSession session = factory.openSession();

				List zipcodeList = session.selectList("member.zipcheck",
						request.getParameter("area4"));

				if(zipcodeList.isEmpty())
				{
					request.setAttribute("zipcodeList", null);
				}else{
				request.setAttribute("zipcodeList", zipcodeList);
				}

				session.commit();

				session.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else{
			request.setAttribute("zipcodeList", null);
		}

		return "/login/ZipCheck.jsp";
	}

}
