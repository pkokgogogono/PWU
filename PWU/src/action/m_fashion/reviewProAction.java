package action.m_fashion;

import java.util.List; 

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import dao.ReviewDao;
import vo.ReviewVo;
import vo.BH.Customer;

public class reviewProAction implements CommandAction {
	
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{

		request.setCharacterEncoding("euc-kr");

		ReviewDao reviewdao= ReviewDao.getInstance();
		List<ReviewVo> review = reviewdao.reviewSelectList(Integer.parseInt(request.getParameter("num")));
		request.setAttribute("review",review);
		request.setAttribute("count", 1);
		if(review.isEmpty()){
			request.setAttribute("count", 0);
		}
		return "/fashion/user/reviewList.jsp?num="+request.getParameter("num");
	}

  
}

