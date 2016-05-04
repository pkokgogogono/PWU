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

import vo.CustomerVo;
import vo.MemberVo;
import vo.QuestionVo;

public class QuestionDao {

	private static QuestionDao instance = new QuestionDao();
	   
    public static QuestionDao getInstance() {
        return instance;
    }
   
 private QuestionDao dao;
    
    private QuestionDao() {}
    
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
	public void QuestionInsert(CustomerVo vo){
		try {		
			SqlSession session = getFactory().openSession();
			session.insert("question.insert", vo);
			session.commit();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public List<QuestionVo> selectList(){
		List<QuestionVo> selectList = null;
		try {		
			SqlSession session = getFactory().openSession();
			selectList = session.selectList("question.selectList");
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}		
		return selectList;
	}
	

	public void questiondelete(String num){
		try {		
			SqlSession session = getFactory().openSession();
			//num이니까 integer형으로 변환후에
			int number = Integer.parseInt(num);
			//삭제 
			session.delete("question.delete",number);
			session.commit();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}		
	}
		
		public QuestionVo selectOne(String num){
			QuestionVo vo = null;
			try {		
				System.out.println(num);

				SqlSession session = getFactory().openSession();
				int number = Integer.parseInt(num);

				//num이니까 integer형으로 변환후에
				//삭제 
				vo=session.selectOne("question.selectOne",num);
				session.commit();
				session.close();
			} catch (Exception e) {
				e.printStackTrace();
			}		
			return vo;
	}
	
	
	

	
}

	
