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
    
    public List<ProductDTO> getIdProducts(String cust_id) {
        SqlSession session = sqlSessionFactory.openSession();
        List<ProductDTO> productList = null;
        try {
            productList = session.selectList("com.smhrd.mapper.ProductMapper.selectIdProducts", cust_id);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            session.close();
        }
        return productList;
    }
    
    public int deletePost(int prodIdx) {
    	SqlSession session = sqlSessionFactory.openSession();
    	int row = 0;
        try {
            row = session.delete("com.smhrd.mapper.ProductMapper.deleteProductById", prodIdx);
            System.out.println("row : "+row);
            session.commit(); // 커밋 필수!
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            session.close();
        }
        return row;
    	
    }
    
}
