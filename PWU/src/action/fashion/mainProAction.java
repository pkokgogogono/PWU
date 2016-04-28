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

<<<<<<< HEAD
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
		String encType = "euc-kr"; //�뿏肄붾뵫���엯
		int maxSize = 5*1024*1024;  //理쒕� �뾽濡쒕맆 �뙆�씪�겕湲� 5Mb
		String realFolder = "";//�쎒 �뼱�뵆由ъ��씠�뀡�긽�쓽 �젅�� 寃쎈줈
		ServletContext context = request.getSession().getServletContext();
		//�쁽�옱 jsp�럹�씠吏��쓽 �쎒 �뼱�뵆由ъ��씠�뀡�긽�쓽 �젅�� 寃쎈줈瑜� 援ы븳�떎
		realFolder = context.getRealPath(saveFolder);
		System.out.println("saveFolder::"+saveFolder);
		System.out.println("realFolder:::"+realFolder);
		
		MultipartRequest multi = null;
		String path = null;
		multi = new MultipartRequest(request,realFolder,maxSize,encType,new DefaultFileRenamePolicy());	

		Enumeration files = multi.getFileNames();
		while(files.hasMoreElements()){
		    //input �깭洹몄쓽 �냽�꽦�씠 file�씤 �깭洹몄쓽 name �냽�꽦媛� :�뙆�씪誘명꽣�씠由�
		      String name = (String)files.nextElement();
		   //�꽌踰꾩뿉 ���옣�맂 �뙆�씪 �씠由�
		     File up = multi.getFile(name);
		     path = up.getAbsolutePath();
		     
		     System.out.println(path);
		      String filename = multi.getFilesystemName(name);
		   //�쟾�넚�쟾 �썝�옒�쓽 �뙆�씪 �씠由�
		      String original = multi.getOriginalFileName(name);
		   //�쟾�넚�맂 �뙆�씪�쓽 �궡�슜 ���엯
		      String type = multi.getContentType(name);
		   //�쟾�넚�맂 �뙆�씪 �냽�꽦�씠 file�씤 �깭洹몄쓽 name �냽�꽦媛믪쓣 �씠�슜�빐 �뙆�씪 媛앹껜 �깮�꽦//�뙆�씪媛��졇�삤湲�
		      File file = multi.getFile(name);
	
		
		      
			  if(file!=null){
				  System.out.println("�겕湲� : " + file.length());
				  System.out.println("<br>");
		      }
=======
<<<<<<< HEAD
import action.login.CommandAction;
=======
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
>>>>>>> branch 'master' of https://github.com/pkokgogogono/PWU.git

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
	
<<<<<<< HEAD
		InputStream is;
		try {
			is = Resources.getResourceAsStream(res);
		

		SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
		SqlSession session = factory.openSession();

	   System.out.println(request.getParameter("title")+"tt");
		
		fashionBoardVo vo = new fashionBoardVo(request.getParameter("title"),
				request.getParameter("p_name"),
				Integer.parseInt(request.getParameter("p_price")),
				request.getParameter("content"));
		
		session.insert("fashion.insert", vo);

		session.commit();

		session.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
=======
		      
			  if(file!=null){
				  System.out.println("크기 : " + file.length());
				  System.out.println("<br>");
		      }
>>>>>>> branch 'master' of https://github.com/pkokgogogono/PWU.git
>>>>>>> branch 'master' of https://github.com/pkokgogogono/PWU.git
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
