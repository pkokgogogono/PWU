package Preparer;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tiles.preparer.PreparerException;
import org.apache.tiles.preparer.ViewPreparer;
import org.apache.tiles.context.TilesRequestContext;
import org.apache.tiles.AttributeContext;
import org.apache.tiles.Attribute;

import vo.fashionBoardVo;
import dao.FashionDao;


public class FashionViewPreparer implements ViewPreparer {
    public void execute(TilesRequestContext tilesContext, AttributeContext attributeContext)
    throws PreparerException {
    	
        FashionDao fashiondao= FashionDao.getInstance();
		
		List<fashionBoardVo> selectList = fashiondao.selectList();
		List<fashionBoardVo> selectListread = fashiondao.selectListRead();
    	
        try {
        	
//        	attributeContext.putAttribute("selectList", , true);
        	tilesContext.getRequestScope().put("selectList", selectList);
        	tilesContext.getRequestScope().put("selectList", selectListread);
		} catch (Throwable e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
}