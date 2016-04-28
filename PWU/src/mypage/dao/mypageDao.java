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
	
	public List<mypageVo> selectList(){
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
	}
	
	public String dbpass(String memId){
		String dbpasswd = null;
		try {		
			SqlSession session = getFactory().openSession();
			dbpasswd = session.selectOne("mypage.passwdget",memId);
			
			
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return dbpasswd;
	}
	
	public int updateArticle(mypageVo vo){
		String dbpasswd = null;
		int x = -1;
		try {		
			SqlSession session = getFactory().openSession();
			dbpasswd = session.selectOne("mypage.passwdget",vo);
			
		    if(dbpasswd.equals(vo.getPasswd())){
		    	
                vo.setName("name");
                vo.setAddress("address");
                vo.setZipcode("zipcode");
                vo.setEmail("email");
                x=1;
		    }else{
				x= 0;
		    }
		  
			
			
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return x;
	}
		
	
	public List<mypageVo> updateGetArticle(){
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
	
	

