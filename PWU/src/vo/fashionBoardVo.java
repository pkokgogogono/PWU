package vo;

public class fashionBoardVo {

		

	public fashionBoardVo(){}

		private String num;
		private String title; 
		private String p_name;
		private int p_price; 
		private String path; 
		private String filename;
		private String sale_count;
		private String review_count;
		private String reg_date;
		private String read_count;
		private String content;

		
		

		
	    public fashionBoardVo(String title,  String p_name, int p_price, String content,
	    		String path) {

		this.title = title;
		this.p_name = p_name;
		this.p_price = p_price;
		this.content = content;
		this.path = path;
		
		}
	    
	    public fashionBoardVo(String num,String title,  String p_name, int p_price, String content,
	    		String path) {
        this.num = num;
		this.title = title;
		this.p_name = p_name;
		this.p_price = p_price;
		this.content = content;
		this.path = path;
		
		}

	    
	    public fashionBoardVo(String num) {

		this.num = num;
		
		}
		public String getNum() {
			return num;
		}

		public void setNum(String num) {
			this.num = num;
		}

		public String getTitle() {
			return title;
		}

		public void setTitle(String title) {
			this.title = title;
		}

		public String getP_name() {
			return p_name;
		}

		public void setP_name(String p_name) {
			this.p_name = p_name;
		}

		public int getP_price() {
			return p_price;
		}

		public void setP_price(int p_price) {
			this.p_price = p_price;
		}

		public String getPath() {
			return path;
		}

		public void setPath(String path) {
			this.path = path;
		}

		public String getFilename() {
			return filename;
		}

		public void setFilename(String filename) {
			this.filename = filename;
		}

		public String getSale_count() {
			return sale_count;
		}

		public void setSale_count(String sale_count) {
			this.sale_count = sale_count;
		}

		public String getReview_count() {
			return review_count;
		}

		public void setReview_count(String review_count) {
			this.review_count = review_count;
		}

		public String getReg_date() {
			return reg_date;
		}

		public void setReg_date(String reg_date) {
			this.reg_date = reg_date;
		}

		public String getRead_count() {
			return read_count;
		}

		public void setRead_count(String read_count) {
			this.read_count = read_count;
		}

		public String getContent() {
			return content;
		}

		public void setContent(String content) {
			this.content = content;
		}



}
