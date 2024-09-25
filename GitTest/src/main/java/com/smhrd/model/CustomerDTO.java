package com.smhrd.model;

public class CustomerDTO {
    private String cust_id;
    private String cust_pw;
    private String cust_nick;
    private String cust_email;
    private String cust_gender;
    private String cust_birthdate;
    private String cust_addr;
    private String cust_phone;
    

	

	public String getCust_id() {
		return cust_id;
	}

	public void setCust_id(String cust_id) {
		this.cust_id = cust_id;
	}

	public String getCust_pw() {
		return cust_pw;
	}

	public void setCust_pw(String cust_pw) {
		this.cust_pw = cust_pw;
	}

	public String getCust_nick() {
		return cust_nick;
	}

	public void setCust_nick(String cust_nick) {
		this.cust_nick = cust_nick;
	}

	public String getCust_email() {
		return cust_email;
	}

	public void setCust_email(String cust_email) {
		this.cust_email = cust_email;
	}

	public String getCust_gender() {
		return cust_gender;
	}

	public void setCust_gender(String cust_gender) {
		this.cust_gender = cust_gender;
	}

	public String getCust_birthdate() {
		return cust_birthdate;
	}

	public void setCust_birthdate(String cust_birthdate) {
		this.cust_birthdate = cust_birthdate;
	}

	public String getCust_addr() {
		return cust_addr;
	}

	public void setCust_addr(String cust_addr) {
		this.cust_addr = cust_addr;
	}

	public String getCust_phone() {
		return cust_phone;
	}

	public void setCust_phone(String cust_phone) {
		this.cust_phone = cust_phone;
	}

	public String getJoinedAt() {
		return joinedAt;
	}

	public void setJoinedAt(String joinedAt) {
		this.joinedAt = joinedAt;
	}

	public double getLat() {
		return lat;
	}

	public void setLat(double lat) {
		this.lat = lat;
	}

	public double getLon() {
		return lon;
	}

	public void setLon(double lon) {
		this.lon = lon;
	}

	private String joinedAt;
    private double lat;
    private double lon;

    // 생성자, getter, setter 메소드
    public CustomerDTO() {}

    public CustomerDTO(String custId, String custPw, String custNick, String custEmail, String custGender,
            String custBirthdate, String custAddr, String custPhone, String joinedAt, double lat, double lon) {
        this.cust_id = cust_id;
        this.cust_pw = cust_pw;
        this.cust_nick = cust_nick;
        this.cust_email = cust_email;
        this.cust_gender = cust_gender;
        this.cust_birthdate = cust_birthdate;
        this.cust_addr = cust_addr;
        this.cust_phone = cust_phone;
        this.joinedAt = joinedAt;
        this.lat = lat;
        this.lon = lon;
    }

	

    // Getters and Setters
    // ...
}
