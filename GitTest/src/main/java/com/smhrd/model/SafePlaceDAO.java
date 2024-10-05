package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

import java.util.List;

public class SafePlaceDAO {

    private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();

    // Safe Place 리스트 가져오기
    public List<SafePlaceDTO> selectAllSafePlaces() {
        SqlSession session = null;
        List<SafePlaceDTO> safePlaceList = null;
        
        try {
            session = sqlSessionFactory.openSession();
            safePlaceList = session.selectList("com.smhrd.db.SafePlaceMapper.selectAllSafePlaces");
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (session != null) session.close();
        }
        
        return safePlaceList;
    }
}