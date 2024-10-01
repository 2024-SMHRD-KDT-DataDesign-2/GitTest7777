package com.smhrd.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ChattingDao {
    private Connection connection;

    // 생성자에서 DB 연결 초기화
    public ChattingDao(Connection connection) {
        this.connection = connection;
    }

    // 방이 존재하는지 확인하는 메서드
    public boolean roomExists(String roomIdx) throws SQLException {
        String query = "SELECT COUNT(*) FROM chattings WHERE room_idx = ?";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setString(1, roomIdx);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                return rs.getInt(1) > 0;
            }
        }
        return false;
    }

    // 방을 생성하는 메서드
    public void createRoom(String roomIdx) throws SQLException {
        String query = "INSERT INTO chattings (room_idx) VALUES (?)";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setString(1, roomIdx);
            stmt.executeUpdate();
        }
    }
}
