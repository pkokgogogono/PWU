package mypage.dao;

import java.io.IOException;
import java.io.InputStream;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


import vo.mypage.ZipcodemyVo;
import vo.mypage.mypageVo;

public class mypageDao {

	private static mypageDao instance = new mypageDao();
	   
    public static mypageDao getInstance() {
        return instance;
    }

	private String dbpasswd;
   
    private mypageDao() {}

	private static SqlSessionFactory getFactory() throws Exception{
		String res = "config.xml";
		InputStream is;
		SqlSessionFactory factory = null;
		SqlSession session = null;
		try {
			is = Resources.getResourceAsStream(res);

		factory = new SqlSessionFactoryBuilder().build(is);

		} catch (IOException e) {
			e.printStackTrace();
		}
		return factory;
	
	}
	
/*	public List<mypageVo> selectList(){
		List<mypageVo> selectList = null;
		try{
			SqlSession session = getFactory().openSession();
			selectList = session.selectList("mypage.selectList");
			System.out.println(selectList+"12");
			session.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return selectList;
	}*/
	

/*	public String passwdCheck(String memId){ //비밀번호 체크
		String dbpasswd = null;
		
		try {		
			SqlSession session = getFactory().openSession();
			dbpasswd = session.selectOne("mypage.passwdget",memId);
			session.commit();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
			
		
		return dbpasswd;
	}
*/	
/*	public int delMember(String id){
		int x = -1;
		try{
			SqlSession session = getFactory().openSession();
			session.selectOne("mypage.deletemember",id);
		

		session.commit();
		session.close();
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	return x;
}*/
	
	
	
	  public int delMember(String id,String passwd){ //회원 탈퇴
		String dbpasswd = null;
		
		int x = -1;
		try {		
			SqlSession session = getFactory().openSession();
			dbpasswd = session.selectOne("mypage.passwdget",id);
			
		    if(dbpasswd== passwd){
		    	session.selectOne("mypage.deletemember",id);
                
                x=1; //탈퇴 성공
		    }else{
				x= 0;//실패
		    }
		  
			
			session.commit();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return x;
	}
		
	
	public mypageVo setInform(String id){ // 원래정보 보여주기
		mypageVo vo = new mypageVo();
		
		try {		
			SqlSession session = getFactory().openSession();
			vo = session.selectOne("mypage.informget",id);
			/*System.out.println(vo.getId());
			System.out.println(vo.getPasswd());
			*//*
			vo.setPasswd("passwd");
			vo.setName("name");
			vo.setZipcode("zipcode");
            vo.setAddress("address");
            vo.setEmail("email");*/
			System.out.println(vo.getId());
			System.out.println(vo.getPasswd());
            System.out.println("오냐");
            
			
			session.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return vo;
	}
	

	
	public void updateInform(mypageVo vo){ //db에 정보 업데이트
		
		
		try{
			SqlSession session = getFactory().openSession();
			vo = session.selectOne("mypage.update_inform", vo);
			System.out.println("왔다");

			session.commit();
			session.close();
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	public List<ZipcodemyVo> zipCheck1(String area4){
		List<ZipcodemyVo> zipcodeList = null;
		try {
			SqlSession session = getFactory().openSession();
			zipcodeList = session.selectList("mypage.zipcheck1",area4);
			session.commit();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return zipcodeList;
	}
		
	
	
/*	public List<mypageVo> updateGetArticle(){
		List<mypageVo> article=null;
		try {		
			SqlSession session = getFactory().openSession();
			article = session.selectList("mypage.informget");
		
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
        
		return article;
	}
*/
	
	
	


	
	
/*	public int loginCheck(MemberVo vo){
		int logincheck = 0;
		try {
			SqlSession session = getFactory().openSession();
			logincheck = session.selectOne("member.logincheck", vo);
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return logincheck;
	}*/
}
	
	

