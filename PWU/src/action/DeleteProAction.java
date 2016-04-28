package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

<<<<<<< HEAD

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
=======
import board.BoardDBBean;

public class DeleteProAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("utf-8");
		
		int num = Integer.parseInt(request.getParameter("num"));
		String pageNum = request.getParameter("pageNum");
		String passwd = request.getParameter("passwd");
		
		BoardDBBean dbpro = BoardDBBean.getInstance();
		int check = dbpro.deleteArticle(num, passwd);
		
		request.setAttribute("pageNum", new Integer(pageNum));
		request.setAttribute("check", new Integer(check));
		
>>>>>>> branch 'master' of https://github.com/pkokgogogono/PWU.git
		
		return "/order/deletePro.jsp";
	}
	

}
