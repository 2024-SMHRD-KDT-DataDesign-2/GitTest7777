package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

//모든 매개변수를 받아서 필드를 초기화 시켜주는 생성자
@AllArgsConstructor
//기본 생성자
@NoArgsConstructor
//getter 메소드
@Getter
//setter 메소드
@Setter

//@Data : 한꺼번에 모두 설정 - 기본생성자, getter, setter, toString ...
@Data

public class CustomerDTO {
    private String cust_id;
    private String cust_pw;
    private String cust_nick;
    private String cust_email;
    private String cust_gender;
    private String cust_birthdate;
    private String cust_addr;
    private String cust_phone;
//    private String joined_at;
    private double lat;
    private double lon;
}