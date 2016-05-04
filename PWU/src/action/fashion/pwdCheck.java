package action.fashion;

import java.io.IOException;
import java.io.InputStream;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import action.CommandAction;
import dao.FashionDao;
import dao.ReviewDao;
import vo.ReviewVo;
import vo.fashionBoardVo;

public class pwdCheck implements CommandAction {
	
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{

		request.setCharacterEncoding("euc-kr");

		ReviewDao reviewDao= ReviewDao.getInstance();
		
		int re_num = Integer.parseInt(request.getParameter("re_num"));

		String pwd =request.getParameter("pwd");
		
		System.out.println(pwd);
		ReviewVo vo = reviewDao.ReviewSelect(re_num);
		
		System.out.println("dbºñ¹ø:::"+vo.getPasswd());
		System.out.println();
		if(pwd.equals(vo.getPasswd())){
			return "/fashion/admin/reviewDetail.do?re_num="+re_num;
		}
		else
			return "/fashion/user/error.jsp";
	}

  
}
