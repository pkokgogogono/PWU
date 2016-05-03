package vo;

import java.sql.Timestamp;
import java.util.Date;

public class OrderVo {
	
	private int num;
	private String id;
	private String name;
	private String email;
	private String address;
	private String zipcode;
	private Timestamp reg_date;
	private String p_name;
	private int p_price;
	private String status;
	private String content;
	
public OrderVo(){}
	
	public OrderVo(String name, String id, String p_name, int p_price, String email, String zipcode, String address, String content){
		this.name = name;
		this.id = id;
		this.p_name = p_name;
		this.p_price = p_price;
		this.email = email;
		this.zipcode = zipcode;
		this.address = address;
		this.content = content;
	}
	
	public OrderVo(int num, String id, String name, String email, String zipcode, Timestamp reg_date, String p_name, int p_price, String address, String status, String content){
	
	this.num = num;
	this.id = id;
	this.name = name;
	this.email = email;
	this.zipcode = zipcode;
	this.reg_date = reg_date;
	this.p_name = p_name;
	this.p_price = p_price;
	this.address = address;
	this.status = status;
	this.content = content;
	}
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public Timestamp getReg_date() {
		return reg_date;
	}
	public void setReg_date(Timestamp reg_date) {
		this.reg_date = reg_date;
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
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
}
	
	
	
	
	
	
	
	
	