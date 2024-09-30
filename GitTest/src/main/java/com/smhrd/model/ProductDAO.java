package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class ProductDAO {

    private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();

<<<<<<< HEAD
    // 등록한 상품정보 DB에 삽입하는 메소드
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

    // 클릭한 상품정보 가져오는 메소드
    public ProductDTO selectProductById(int prod_idx) {
        SqlSession session = sqlSessionFactory.openSession();
        ProductDTO product = null;
        try {
            product = session.selectOne("com.smhrd.mapper.ProductMapper.selectProductById", prod_idx);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            session.close();
        }
        return product;
    }
    
    // DB에 있는 모든 물품정보 꺼내오는 메소드
=======
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

    // 삽입된 상품 정보 확인 메소드
    public ProductDTO selectProductById(int prod_idx) {
        SqlSession session = sqlSessionFactory.openSession();
        ProductDTO product = null;
        try {
            product = session.selectOne("com.smhrd.mapper.ProductMapper.selectProductById", prod_idx);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            session.close();
        }
        return product;
    }
    
>>>>>>> branch 'master' of https://github.com/2024-SMHRD-KDT-DataDesign-2/GitTest7777.git
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
