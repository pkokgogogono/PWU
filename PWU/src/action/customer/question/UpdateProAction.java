package action.customer.question;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import action.CommandAction;

public class UpdateProAction implements CommandAction {

		@Override
		public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
			request.setCharacterEncoding("utf-8");
			
			String pageNum = request.getParameter("pageNum");
			
			BoardDataBean article = new BoardDataBean();
	        article.setNum(Integer.parseInt(request.getParameter("num")));
	        article.setWriter(request.getParameter("writer"));
	        article.setEmail(request.getParameter("email"));
	        article.setSubject(request.getParameter("subject"));
	        article.setContent(request.getParameter("content"));
	        article.setPasswd(request.getParameter("passwd"));
//	        
//	        BoardDBBean dbPro = BoardDBBean.getInstance();
//	        int check = dbPro.updateArticle(article);
//	        
//	        request.setAttribute("pageNum", new Integer(pageNum));
//	        request.setAttribute("check", check);

	        
			return "/order/updatePro.jsp";
		}
		
		
	}


