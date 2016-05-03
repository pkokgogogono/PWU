package dao;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import vo.MemberVo;
import vo.fashionBoardVo;
import vo.loveVo;

public class LoveDao {

	private static LoveDao instance = new LoveDao();
	   
    public static LoveDao getInstance() {
        return instance;
    }
   
    private LoveDao() {}

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
	

	public void loveInsert(loveVo vo){

		try {		
			SqlSession session = getFactory().openSession();
			session.insert("love.loveInsert", vo);
			session.commit();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public int loveSelect(int num){
		int vo = 0;
		try {		
			SqlSession session = getFactory().openSession();
			vo=session.selectOne("love.loveSelect",num);
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}
	
	
	public void loveDelete(int num){

		try {		
			SqlSession session = getFactory().openSession();
			session.delete("love.loveDelete",num);
			session.commit();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
	
	