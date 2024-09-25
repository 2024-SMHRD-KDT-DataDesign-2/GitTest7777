package com.smhrd.model;

public class CustomerDTO {
    private String custId;
    private String custPw;
    private String custNick;
    private String custEmail;
    private String custGender;
    private String custBirthdate;
    private String custAddr;
    private String custPhone;
    public String getCustId() {
      return custId;
   }

   public void setCustId(String custId) {
      this.custId = custId;
   }

   public String getCustPw() {
      return custPw;
   }

   public void setCustPw(String custPw) {
      this.custPw = custPw;
   }

   public String getCustNick() {
      return custNick;
   }

   public void setCustNick(String custNick) {
      this.custNick = custNick;
   }

   public String getCustEmail() {
      return custEmail;
   }

   public void setCustEmail(String custEmail) {
      this.custEmail = custEmail;
   }

   public String getCustGender() {
      return custGender;
   }

   public void setCustGender(String custGender) {
      this.custGender = custGender;
   }

   public String getCustBirthdate() {
      return custBirthdate;
   }

   public void setCustBirthdate(String custBirthdate) {
      this.custBirthdate = custBirthdate;
   }

   public String getCustAddr() {
      return custAddr;
   }

   public void setCustAddr(String custAddr) {
      this.custAddr = custAddr;
   }

   public String getCustPhone() {
      return custPhone;
   }

   public void setCustPhone(String custPhone) {
      this.custPhone = custPhone;
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
        this.custId = custId;
        this.custPw = custPw;
        this.custNick = custNick;
        this.custEmail = custEmail;
        this.custGender = custGender;
        this.custBirthdate = custBirthdate;
        this.custAddr = custAddr;
        this.custPhone = custPhone;
        this.joinedAt = joinedAt;
        this.lat = lat;
        this.lon = lon;
    }

   

    // Getters and Setters
    // ...
}
