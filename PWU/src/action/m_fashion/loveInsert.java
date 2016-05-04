package action.m_fashion;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import action.CommandAction;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


import dao.FashionDao;
import dao.LoveDao;
import vo.fashionBoardVo;
import vo.loveVo;
 
public class loveInsert implements CommandAction {
	
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{
		
		request.setCharacterEncoding("euc-kr");
		

		LoveDao loveDao= LoveDao.getInstance();
		
		HttpSession session=request.getSession(true);
		
		/*loveVo vo1 = new loveVo(
				(String) session.getAttribute("memId"),
				Integer.parseInt(request.getParameter("num")));
*/
		loveVo vo = new loveVo(
				Integer.parseInt(request.getParameter("num")));
		
		int check = loveDao.loveSelect(Integer.parseInt(request.getParameter("num"))); 
		if(check == 1){
			loveDao.loveDelete(Integer.parseInt(request.getParameter("num")));
		}
		else if(check == 0){
			loveDao.loveInsert(vo);
		}

		return "/fashion/user/loveInsert.jsp";
	}

}

