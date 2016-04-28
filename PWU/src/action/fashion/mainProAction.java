package action.fashion;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import action.CommandAction;
import dao.FashionDao;
import vo.fashionBoardVo;

public class mainProAction implements CommandAction {
	
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{

		try
		{
			
		String saveFolder = "fileSave";
		String encType = "euc-kr"; //엔코딩타입
		int maxSize = 5*1024*1024;  //최대 업로될 파일크기 5Mb
		String realFolder = "";//웹 어플리케이션상의 절대 경로
		ServletContext context = request.getSession().getServletContext();
		//현재 jsp페이지의 웹 어플리케이션상의 절대 경로를 구한다
		realFolder = context.getRealPath(saveFolder);
		System.out.println("saveFolder::"+saveFolder);
		System.out.println("realFolder:::"+realFolder);
		
		MultipartRequest multi = null;
		String path = null;
		multi = new MultipartRequest(request,realFolder,maxSize,encType,new DefaultFileRenamePolicy());	

		Enumeration files = multi.getFileNames();
		while(files.hasMoreElements()){
		    //input 태그의 속성이 file인 태그의 name 속성값 :파라미터이름
		      String name = (String)files.nextElement();
		   //서버에 저장된 파일 이름
		     File up = multi.getFile(name);
		     path = up.getAbsolutePath();
		     
		     System.out.println(path);
		      String filename = multi.getFilesystemName(name);
		   //전송전 원래의 파일 이름
		      String original = multi.getOriginalFileName(name);
		   //전송된 파일의 내용 타입
		      String type = multi.getContentType(name);
		   //전송된 파일 속성이 file인 태그의 name 속성값을 이용해 파일 객체 생성//파일가져오기
		      File file = multi.getFile(name);
	
		      
			  if(file!=null){
				  System.out.println("크기 : " + file.length());
				  System.out.println("<br>");
		      }
		}
		
		request.setCharacterEncoding("euc-kr");
		
			
		System.out.println(multi.getParameter("title"));
		System.out.println(multi.getParameter("p_name"));
		System.out.println(Integer.parseInt(multi.getParameter("p_price")));
		System.out.println(multi.getParameter("content"));
		System.out.println(multi.getParameter("path"));

		FashionDao fashionDao= FashionDao.getInstance();
		
		fashionBoardVo vo = new fashionBoardVo(
				multi.getParameter("title"),
				multi.getParameter("p_name"),
				Integer.parseInt(multi.getParameter("p_price")),
				multi.getParameter("content"),
				multi.getParameter("path"));
		

		
		fashionDao.fashionInsert(vo);
		
	}catch(IOException ioe){
		 System.out.println(ioe);
	}catch(Exception ioe){
		 System.out.println(ioe);
	}
		return "/fashion/admin/productwritePro.jsp";
	}

  
}
