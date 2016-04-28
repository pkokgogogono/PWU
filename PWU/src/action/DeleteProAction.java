package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class DeleteProAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("utf-8");
		
//		int num = Integer.parseInt(request.getParameter("num"));
//		String pageNum = request.getParameter("pageNum");
//		String passwd = request.getParameter("passwd");
//		
//		BoardDBBean dbpro = BoardDBBean.getInstance();
//		int check = dbpro.deleteArticle(num, passwd);
//		
//		request.setAttribute("pageNum", new Integer(pageNum));
//		request.setAttribute("check", new Integer(check));
//		
		
		return "/order/deletePro.jsp";
	}
	

}
