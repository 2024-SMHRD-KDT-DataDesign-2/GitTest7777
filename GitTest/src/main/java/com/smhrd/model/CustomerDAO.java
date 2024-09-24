package com.smhrd.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.sql.DataSource;

public class CustomerDAO {

    private DataSource dataSource;

    public CustomerDAO(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    public void insertCustomer(CustomerDTO customer) throws SQLException {
        String sql = "INSERT INTO CUSTOMERS (CUST_ID, CUST_PW, CUST_NICK, CUST_EMAIL, CUST_GENDER, CUST_BIRTHDATE, CUST_ADDR, CUST_PHONE, JOINED_AT, LAT, LON) "
                   + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        
        try (Connection conn = dataSource.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setString(1, customer.getCustId());
            pstmt.setString(2, customer.getCustPw());
            pstmt.setString(3, customer.getCustNick());
            pstmt.setString(4, customer.getCustEmail());
            pstmt.setString(5, customer.getCustGender());
            pstmt.setString(6, customer.getCustBirthdate());
            pstmt.setString(7, customer.getCustAddr());
            pstmt.setString(8, customer.getCustPhone());
            pstmt.setString(9, customer.getJoinedAt());
            pstmt.setDouble(10, customer.getLat());
            pstmt.setDouble(11, customer.getLon());

            pstmt.executeUpdate();
        }
    }
}
