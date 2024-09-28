package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class ProductDAO {

    private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();

    // 상품 정보 삽입 메소드
    public int insertProduct(ProductDTO product) {
        SqlSession session = sqlSessionFactory.openSession();
        int row = 0;
        try {
            row = session.insert("com.smhrd.mapper.ProductMapper.insertProduct", product);
            session.commit(); // 커밋 필수!
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            session.close();
        }
        return row;
    }
    
    // 상품 정보 삽입 메소드
    public List<ProductDTO> getAllProducts() {
        SqlSession session = sqlSessionFactory.openSession();
        List<ProductDTO> productList = null;
        try {
            productList = session.selectList("com.smhrd.mapper.ProductMapper.selectAllProducts");
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            session.close();
        }
        return productList;
    }
    
}
