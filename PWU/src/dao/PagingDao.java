package dao;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.swing.plaf.synth.SynthSeparatorUI;
import javax.websocket.Session;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import vo.PagingVo;
import vo.QuestionVo;

public class PagingDao {
	private static PagingDao instance = new PagingDao();
	   
    public static PagingDao getInstance() {
        return instance;
    }
    
    private PagingDao() {}
    
	private static SqlSessionFactory getFactory() throws Exception{
		String res = "config.xml";
		InputStream is;
		SqlSessionFactory factory = null;
		
		try {
			is = Resources.getResourceAsStream(res);

		factory = new SqlSessionFactoryBuilder().build(is);

		} catch (IOException e) {
			e.printStackTrace();
		}
		return factory;
	
	}
	
	public List<PagingVo> selectList(){
		List<PagingVo> selectList = null;
		try {		
			SqlSession session = getFactory().openSession();
			selectList = session.selectList("Paging.selectList");
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}		
		return selectList;
	}
	public int pagingCount(){
		int pagingCount = 0;
		try {		
			SqlSession session = getFactory().openSession();
			//num이니까 integer형으로 변환후에
			//삭제 			
			pagingCount = session.selectOne("notice.getCount");
			System.out.println("pagingCount:::"+pagingCount);
			
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}		
		return pagingCount;
	}

	public Object getArticles(int startNum, int endNum) {
		// TODO Auto-generated method stub
		return null;
	}

}
