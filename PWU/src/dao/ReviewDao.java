package dao;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import vo.MemberVo;
import vo.ReviewVo;
import vo.fashionBoardVo;
import vo.loveVo;

public class ReviewDao {

	private static ReviewDao instance = new ReviewDao();
	   
    public static ReviewDao getInstance() {
        return instance;
    }
   
    private ReviewDao() {}

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
	

	public void reviewInsert(ReviewVo vo){

		try {		
			SqlSession session = getFactory().openSession();
			session.insert("review.reviewInsert", vo);
			session.commit();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public ReviewVo ReviewSelect(int re_num){
		ReviewVo vo = null;
		try {
			SqlSession session = getFactory().openSession();
			vo=session.selectOne("review.reviewSelect",re_num);
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}
	
	public List<ReviewVo> reviewSelectList(int num){
		List<ReviewVo> selectList = null;
		try {		
			SqlSession session = getFactory().openSession();
			selectList = session.selectList("review.reviewSelectList",num);
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return selectList;
	} 

	
public void reviewUpdate(loveVo vo){
		
		try {		
			SqlSession session = getFactory().openSession();
			session.update("review.reviewupdate",vo);
			session.commit();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

public static ReviewVo reviewSelect(int num){
	ReviewVo vo = null;
	try {		
		SqlSession session = getFactory().openSession();
		vo=session.selectOne("review.reviewSelect",num);
		session.close();
	} catch (Exception e) {
		e.printStackTrace();
	}
	return vo;
}

public List<ReviewVo> getArticles(int startNum, int endNum) {
	List<ReviewVo> PagingSelect = null;
	try {		
		SqlSession session = getFactory().openSession();
		Map<String,Integer> map = new HashMap<String,Integer>();
		map.put("s",startNum );
		map.put("e",endNum );
		
		PagingSelect = session.selectList("review.addpaging1", map);
		session.close();
	} catch (Exception e) {
		e.printStackTrace();
	}		
	return PagingSelect;
}

public void reviewDelete(int re_num){

	try {		
		SqlSession session = getFactory().openSession();
		session.delete("review.reviewDelete", re_num);
		session.commit();
		session.close();
	} catch (Exception e) {
		e.printStackTrace();
	}
}

}
	
	