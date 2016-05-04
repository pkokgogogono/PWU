package action.fashion;

import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import dao.FashionDao;
import dao.PagingDao;

public class productList implements CommandAction {
	
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
		pagingCount = pagingdao.pagingCount();
		System.out.println(pagingCount);
		request.setAttribute("pagingCount", pagingCount);
		System.out.println(pagingCount);

		List selectList = null;
		
		FashionDao fashiondao= FashionDao.getInstance();
		
		//List<fashionBoardVo> selectList = fashiondao.selectList();
		
		if (pagingCount > 0) {
			selectList = fashiondao.getArticles(startNum, endNum);
																	
		} else {
			selectList = Collections.EMPTY_LIST;
		}

		number = pagingCount - (currentPage - 1) * pageSize;
		

		request.setAttribute("count", 1);
		if (selectList == null) {
			request.setAttribute("count", 0); 
		}
		
			
			  request.setAttribute("currentPage", new Integer(currentPage));
			  request.setAttribute("startNum", new Integer(startNum));
			  request.setAttribute("endNum", new Integer(endNum));
			  request.setAttribute("count", new Integer(pagingCount));
			  request.setAttribute("pageSize", new Integer(pageSize));
			  request.setAttribute("number", new Integer(number));
			  request.setAttribute("selectList", selectList);
			

		request.setAttribute("count", 1);
		if(selectList.isEmpty()){
			request.setAttribute("count", 0);
		}

		return "/fashion/admin/productList.jsp";
	}

  
}

