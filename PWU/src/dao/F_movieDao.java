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

public class F_movieDao {

	private static F_movieDao instance = new F_movieDao();
	   
    public static F_movieDao getInstance() {
        return instance;
    }
   
    private F_movieDao() {}

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
	
	public void fashionInsert(fashionBoardVo vo){

		try {		
			SqlSession session = getFactory().openSession();
			session.insert("f_movie.insert", vo);
			session.commit();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	public List<fashionBoardVo> selectList(){
		List<fashionBoardVo> selectList = null;
		try {		
			SqlSession session = getFactory().openSession();
			selectList = session.selectList("f_movie.selectList");
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return selectList;
	}
	
	public List<fashionBoardVo> selectListRead(){
		List<fashionBoardVo> selectList = null;
		try {		
			SqlSession session = getFactory().openSession();
			selectList = session.selectList("f_movie.selectListRead");
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return selectList;
	}
	
	public void fashionDelete(String num){

		try {		
			SqlSession session = getFactory().openSession();
			session.delete("f_movie.delete",num);
			session.commit();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public fashionBoardVo fashionSelect(int num){
		fashionBoardVo vo = null;
		try {		
	
			SqlSession session = getFactory().openSession();
			vo=session.selectOne("f_movie.select",num);
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}
	
	public void fashionUpdate(fashionBoardVo vo){
		
		try {		
			SqlSession session = getFactory().openSession();
			session.update("f_movie.update",vo);
			session.commit();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	
	public void readUpdate(int num){
		
		try {		
			SqlSession session = getFactory().openSession();
			session.update("f_movie.readUpdate",num);
			session.commit();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}
	
	