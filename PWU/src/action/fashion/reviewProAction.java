package action.fashion;

import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import dao.PagingDao;
import dao.ReviewDao;
import vo.ReviewVo;

public class reviewProAction implements CommandAction {
	
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{

		request.setCharacterEncoding("euc-kr");

		String pageNum = request.getParameter("pageNum");

		if (pageNum == null) {
			pageNum = "1";
		}

		int pageSize = 5;

		int currentPage = Integer.parseInt(pageNum);
		int startNum = (currentPage - 1) * pageSize + 1;
		int endNum = currentPage * pageSize;
		int pagingCount = 0; 
		int number = 0;

		PagingDao pagingdao = PagingDao.getInstance();
		pagingCount = pagingdao.pagingCountReview();
		System.out.println(pagingCount);
		request.setAttribute("pagingCount", pagingCount);
		System.out.println(pagingCount);

		List review = null;
		

		ReviewDao reviewdao= ReviewDao.getInstance();
		List<ReviewVo> review1 = reviewdao.reviewSelectList(Integer.parseInt(request.getParameter("num")));
	
		
		if (pagingCount > 0) {
			review = reviewdao.getArticles(startNum, endNum);
																	
		} else {
			review = Collections.EMPTY_LIST;
		}

		number = pagingCount - (currentPage - 1) * pageSize;
		

		request.setAttribute("count", 1);
		if (review == null) {
			request.setAttribute("count", 0); 
		}
		
			
			  request.setAttribute("currentPage", new Integer(currentPage));
			  request.setAttribute("startNum", new Integer(startNum));
			  request.setAttribute("endNum", new Integer(endNum));
			  request.setAttribute("count", new Integer(pagingCount));
			  request.setAttribute("pageSize", new Integer(pageSize));
			  request.setAttribute("number", new Integer(number));
			  request.setAttribute("review", review);
			  
			  request.setAttribute("num", Integer.parseInt(request.getParameter("num")));

		return "/fashion/user/reviewList.jsp?num="+Integer.parseInt(request.getParameter("num"));
	}

  
}

