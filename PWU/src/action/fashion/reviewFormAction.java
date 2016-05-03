package action.fashion;

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
import dao.ReviewDao;
import vo.ReviewVo;
import vo.fashionBoardVo;
import vo.loveVo;

public class reviewFormAction implements CommandAction {
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
//	System.out.println("saveFolder::"+saveFolder);
//	System.out.println("realFolder:::"+realFolder);
	
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
	     
//	     System.out.println(path);
	      String filename = multi.getFilesystemName(name);
//	      System.out.println(filename);
//	   //�쟾�넚�쟾 �썝�옒�쓽 �뙆�씪 �씠由�
//	      String original = multi.getOriginalFileName(name);
//	      System.out.println(original);
//	   //�쟾�넚�맂 �뙆�씪�쓽 �궡�슜 ���엯
//	      String type = multi.getContentType(name);
//	      System.out.println(type);
	   //�쟾�넚�맂 �뙆�씪 �냽�꽦�씠 file�씤 �깭洹몄쓽 name �냽�꽦媛믪쓣 �씠�슜�빐 �뙆�씪 媛앹껜 �깮�꽦//�뙆�씪媛��졇�삤湲�
	      File file = multi.getFile(name);


	


	ReviewDao reviewDao= ReviewDao.getInstance();
	
	HttpSession session=request.getSession(true);
	
	/*loveVo vo1 = new loveVo(
			(String) session.getAttribute("memId"),
			Integer.parseInt(request.getParameter("num")));
*/

	
	ReviewVo vo = new ReviewVo(
			Integer.parseInt(multi.getParameter("num")),
			multi.getParameter("writer"),
			multi.getParameter("content"),
			multi.getParameter("passwd"),
			"\\PWU\\fileSave\\"+filename);
	
	System.out.println(vo.getNum()+vo.getWriter()+vo.getContent()+vo.getPasswd()+vo.getPath());

	reviewDao.reviewInsert(vo);
	request.setAttribute("num",multi.getParameter("num"));
	}
}catch(IOException ioe){
	 System.out.println(ioe);
}catch(Exception ioe){
	 System.out.println(ioe);
}
	return "/fashion/user/reviewPro.jsp";
}

}

