package mypage.dao;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import vo.mypage.mypageVo;

public class modifyFormDao {

	private static modifyFormDao instance = new modifyFormDao();
	   
    public static modifyFormDao getInstance() {
        return instance;
    }
   
    private modifyFormDao() {}

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
	
	

