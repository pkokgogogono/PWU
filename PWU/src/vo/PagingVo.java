package vo;

public class PagingVo {
	public PagingVo(int pageNum, int pageSize, int currentPage, int startNum,
			int endNum, int pagingCount, int number, int pageBlock){

	}
	
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getStartNum() {
		return startNum;
	}
	public void setStartNum(int startNum) {
		this.startNum = startNum;
	}
	public int getEndNum() {
		return endNum;
	}
	public void setEndNum(int endNum) {
		this.endNum = endNum;
	}
	public int getpagingCount() {
		return pagingCount;
	}
	public void setpagingCount(int pagingCount) {
		this.pagingCount = pagingCount;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public int getpageBlock() {
		return pageBlock;
	}
	public void setpageBlock(int pageBlock) {
		this.pageBlock = pageBlock;
	}


	private int pageNum; //현제 페이지 번호
	private int pageSize; //한 페이지당 게시글 수
	private int currentPage; //페이지 번호
	private int startNum; //첫 번째 페이지 번호
	private int endNum; //마지막 페이지 번호 
	private int pagingCount; //게시글 전체 수 
	private int number;
	private int pageBlock;
	
	
	
	
	
	/*
	private int pageSize;
	private int firstPageNo;
	private int prevPageNo;
	private int startPageNo;
	private int pageNo; 
	private int endPageNo; 
	private int nextPageNo;
	private int finalPageNo;
	private int totalCount;
	private int blockSize;
	private int startRowNum;
	private int endRowNum; 

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getFirstPageNo() {
		return firstPageNo;
	}

	public void setFirstPageNo(int firstPageNo) {
		this.firstPageNo = firstPageNo;
	}

	public int getPrevPageNo() {
		return prevPageNo;
	}

	public void setPrevPageNo(int prevPageNo) {
		this.prevPageNo = prevPageNo;
	}

	public int getStartPageNo() {
		return startPageNo;
	}

	public void setStartPageNo(int startPageNo) {
		this.startPageNo = startPageNo;
	}

	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
		
		this.setEndRowNum(pageNo * pageSize);
		this.setStartRowNum(endRowNum - (pageSize - 1));
	}

	public int getEndPageNo() {
		return endPageNo;
	}

	public void setEndPageNo(int endPageNo) {
		this.endPageNo = endPageNo;
	}

	public int getNextPageNo() {
		return nextPageNo;
	}

	public void setNextPageNo(int nextPageNo) {
		this.nextPageNo = nextPageNo;
	}

	public int getFinalPageNo() {
		return finalPageNo;
	}

	public void setFinalPageNo(int finalPageNo) {
		this.finalPageNo = finalPageNo;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		this.makePaging();
	}
	
	public int getBlockSize() {
		return blockSize;
	}

	public void setBlockSize(int blockSize) {
		this.blockSize = blockSize;
	}
	
	public int getStartRowNum() {
		return startRowNum;
	}

	public void setStartRowNum(int startRowNum) {
		this.startRowNum = startRowNum;
	}

	public int getEndRowNum() {
		return endRowNum;
	}

	public void setEndRowNum(int endRowNum) {
		this.endRowNum = endRowNum;
	}
*/
/*	private void makePaging() {
		if (this.totalCount == 0)
			return; // 寃뚯떆湲 ?꾩껜 ?섍? ?녿뒗 寃쎌슦
		if (this.pageNo == 0)
			this.setPageNo(1); // 湲곕낯 媛??ㅼ젙
		if (this.pageSize == 0)
			this.setPageSize(10); // 湲곕낯 媛??ㅼ젙

		int finalPage = (totalCount + (pageSize - 1)) / pageSize; // 留덉?留??섏씠吏
		if (this.pageNo > finalPage)
			this.setPageNo(finalPage); // 湲곕낯 媛??ㅼ젙

		if (this.pageNo < 0 || this.pageNo > finalPage)
			this.pageNo = 1; // ?꾩옱 ?섏씠吏 ?좏슚??泥댄겕

		boolean isNowFirst = pageNo == 1 ? true : false; // ?쒖옉 ?섏씠吏 (?꾩껜)
		boolean isNowFinal = pageNo == finalPage ? true : false; // 留덉?留??섏씠吏 (?꾩껜)

		int startPage = ((pageNo - 1) / blockSize) * blockSize + 1; // ?쒖옉 ?섏씠吏 (?섏씠吏??ㅻ퉬 湲곗?)
		int endPage = startPage + blockSize - 1; // ???섏씠吏 (?섏씠吏??ㅻ퉬 湲곗?)

		if (endPage > finalPage) { // [留덉?留??섏씠吏 (?섏씠吏??ㅻ퉬 湲곗?) > 留덉?留??섏씠吏]蹂대떎 ??寃쎌슦
			endPage = finalPage;
		}

		this.setFirstPageNo(1); // 泥?踰덉㎏ ?섏씠吏 踰덊샇

		if (isNowFirst) {
			this.setPrevPageNo(1); // ?댁쟾 ?섏씠吏 踰덊샇
		} else {
			this.setPrevPageNo(((pageNo - 1) < 1 ? 1 : (pageNo - 1)));
		}

		this.setStartPageNo(startPage);
		this.setEndPageNo(endPage);

		if (isNowFinal) {
			this.setNextPageNo(finalPage);
		} else {
			this.setNextPageNo(((pageNo + 1) > finalPage ? finalPage : (pageNo + 1))); // ?ㅼ쓬 ?섏씠吏 踰덊샇
		}

		this.setFinalPageNo(finalPage);
	}
*/
}
