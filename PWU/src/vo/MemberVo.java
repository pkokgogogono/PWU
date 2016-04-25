package vo;

import java.util.Date;

public class MemberVo {
	private String id;	
	private String passwd; 
	private String name;
	private String zipcode; 
	private String address; 
	private String email;
	private int admin; 
	
    public MemberVo(){}
	
    public MemberVo(String id, String passwd) {
		this.id = id;
		this.passwd = passwd;
	}
    
    public MemberVo(String id, String passwd, String name, String zipcode, String address, String email, int admin) {
	super();
	this.id = id;
	this.passwd = passwd;
	this.name = name;
	this.zipcode = zipcode;
	this.address = address;
	this.email = email;
	this.admin = admin;
	}

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getAdmin() {
		return admin;
	}
	public void setAdmin(int admin) {
		this.admin = admin;
	}

}
