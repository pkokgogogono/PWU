package action.customer.notice;

import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import dao.NoticeDao;
import dao.PagingDao;
import vo.CustomerVo;

public class Notice_ListAction implements CommandAction {
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {

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
		pagingCount = pagingdao.pagingCount();
		System.out.println(pagingCount);
		request.setAttribute("pagingCount", pagingCount);
		System.out.println(pagingCount);

		List articleList = null;
		NoticeDao noticedao = NoticeDao.getInstance();

		if (pagingCount > 0) {
			articleList = noticedao.getArticles(startNum, endNum);
																	
		} else {
			articleList = Collections.EMPTY_LIST;
		}

		number = pagingCount - (currentPage - 1) * pageSize;
		

		request.setAttribute("count", 1);
		if (articleList == null) {
			request.setAttribute("count", 0); 
		}
		
			
			  request.setAttribute("currentPage", new Integer(currentPage));
			  request.setAttribute("startNum", new Integer(startNum));
			  request.setAttribute("endNum", new Integer(endNum));
			  request.setAttribute("count", new Integer(pagingCount));
			  request.setAttribute("pageSize", new Integer(pageSize));
			  request.setAttribute("number", new Integer(number));
			  request.setAttribute("articleList", articleList);
			
	
		return "/customer_center/notice/notice_list.jsp";// �ش��

	}
}
