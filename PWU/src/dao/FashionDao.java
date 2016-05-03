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

public class FashionDao {

	private static FashionDao instance = new FashionDao();
	   
    public static FashionDao getInstance() {
        return instance;
    }
   
    private FashionDao() {}

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
			session.insert("fashion.insert", vo);
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
			selectList = session.selectList("fashion.selectList");
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
			selectList = session.selectList("fashion.selectListRead");
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return selectList;
	}
	
	public void fashionDelete(String num){

		try {		
			SqlSession session = getFactory().openSession();
			session.delete("fashion.delete",num);
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
			vo=session.selectOne("fashion.select",num);
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}
	
	public void fashionUpdate(fashionBoardVo vo){
		
		try {		
			SqlSession session = getFactory().openSession();
			session.update("fashion.update",vo);
			session.commit();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	
	public void readUpdate(int num){
		
		try {		
			SqlSession session = getFactory().openSession();
			session.update("fashion.readUpdate",num);
			session.commit();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}
	
	