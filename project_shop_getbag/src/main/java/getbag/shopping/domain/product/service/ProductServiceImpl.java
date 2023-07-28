package getbag.shopping.domain.product.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import getbag.shopping.domain.common.factory.ServiceFactory;
import getbag.shopping.domain.product.dao.ProductDao;
import getbag.shopping.domain.product.dto.Product;

/**
 * 회원 관련 비즈니스 로직 처리 및 트랜잭션 관리 구현체
 * @author 홍재헌
 */
public class ProductServiceImpl implements ProductService{
	
	private DataSource dataSource;
	private ProductDao productDao;
	
	public ProductServiceImpl(DataSource dataSource, ProductDao productDao) {
		this.dataSource = dataSource;
		this.productDao = productDao;
	}

	@Override
	public Product registerProduct(Product product) {
		Connection connection = null;
		try {
			// 트랜잭션 시작
			connection = dataSource.getConnection();
			connection.setAutoCommit(false);
			// productDao 사용
			// 등록
			productDao.create(connection, product);
			// 상세조회
			product = productDao.findByName(connection, product.getPname());
			// 정상 처리 시 커밋
			connection.commit();
		} catch (Exception e) {
			try {connection.rollback();} catch (SQLException e1) {}
			throw new RuntimeException(e.getMessage());
		} finally {
			try {if(connection != null) connection.close();} catch (SQLException e1) {}
		}
		return product;
	}

	@Override
	public Product readNameProduct(String name) {
		Product product = null;
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			product = productDao.findByName(connection, name);
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			try {if(connection != null) connection.close();} catch (SQLException e1) {}
		}
		return product;
	}
	
	@Override
	public Product readNumProduct(String code) {
		Product product = null;
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			product = productDao.findByNum(connection, code);
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			try {if(connection != null) connection.close();} catch (SQLException e1) {}
		}
		return product;
	}
	
	@Override
	public List<Product> readProduct() {
		List<Product> list = null;
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			list = productDao.findByAll(connection);
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			try {if(connection != null) connection.close();} catch (SQLException e1) {}
		}
		return list;
	}
	
	// 테스트 메인
	public static void main(String[] args) {
		ServiceFactory serviceFactory = ServiceFactory.getInstance();
		ProductService productService = serviceFactory.getProductService();
//		Product product = null;
//		product = new Product("wh1", "하얀 가방", 1000000, "<li>하얗고 멋있는 가방입니다.</li><li>저도 사고 싶습니다.</li>", "white", "BALLENCIAGA", "여성", "white1.jpg", "white1-detail1.jpg,white1-detail2.jpg,white1-detail3.jpg", 1);
//		product = new Product("wh2", "하얀 가방", 1000000, "<li>하얗고 멋있는 가방입니다.</li><li>저도 사고 싶습니다.</li>", "white", "BALLENCIAGA", "여성", "white2.jpg", "white2-detail1.jpg,white2-detail2.jpg,white2-detail3.jpg", 1);
//		product = new Product("wh3", "하얀 가방", 1000000, "<li>하얗고 멋있는 가방입니다.</li><li>저도 사고 싶습니다.</li>", "white", "BALLENCIAGA", "여성", "white3.jpg", "white3-detail1.jpg,white3-detail2.jpg,white3-detail3.jpg", 1);
//		product = new Product("wh4", "하얀 가방", 1000000, "<li>하얗고 멋있는 가방입니다.</li><li>저도 사고 싶습니다.</li>", "white", "BALLENCIAGA", "여성", "white4.jpg", "white4-detail1.jpg,white4-detail2.jpg,white4-detail3.jpg", 1);

//		product = new Product("br1", "갈색 가방", 1100000, "<li>세련되고 멋있는 가방입니다.</li><li>저도 사고 싶습니다.</li>", "brown", "BALLENCIAGA", "여성", "brown1.jpg", "brown1-detail1.jpg,brown1-detail2.jpg,brown1-detail3.jpg", 1);
//		product = new Product("br2", "갈색 가방", 1100000, "<li>세련되고 멋있는 가방입니다.</li><li>저도 사고 싶습니다.</li>", "brown", "BALLENCIAGA", "여성", "brown2.jpg", "brown2-detail1.jpg,brown2-detail2.jpg,brown2-detail3.jpg", 1);
//		product = new Product("br3", "갈색 가방", 1100000, "<li>세련되고 멋있는 가방입니다.</li><li>저도 사고 싶습니다.</li>", "brown", "BALLENCIAGA", "여성", "brown3.jpg", "brown3-detail1.jpg,brown3-detail2.jpg,brown3-detail3.jpg", 1);
//		product = new Product("br4", "갈색 가방", 1100000, "<li>세련되고 멋있는 가방입니다.</li><li>저도 사고 싶습니다.</li>", "brown", "BALLENCIAGA", "여성", "brown4.jpg", "brown4-detail1.jpg,brown4-detail2.jpg,brown4-detail3.jpg", 1);

//		product = new Product("bw1", "까만 가방", 1200000, "<li>깔끔하고 멋있는 가방입니다.</li><li>저도 사고 싶습니다.</li>", "black", "BALLENCIAGA", "여성", "black1.jpg", "black1-detail1.jpg,black1-detail2.jpg,black1-detail3.jpg", 1);
//		product = new Product("bw2", "까만 가방", 1200000, "<li>깔끔하고 멋있는 가방입니다.</li><li>저도 사고 싶습니다.</li>", "black", "BALLENCIAGA", "여성", "black2.jpg", "black2-detail1.jpg,black2-detail2.jpg,black2-detail3.jpg", 1);
//		product = new Product("bw3", "까만 가방", 1200000, "<li>깔끔하고 멋있는 가방입니다.</li><li>저도 사고 싶습니다.</li>", "black", "BALLENCIAGA", "여성", "black3.jpg", "black3-detail1.jpg,black3-detail2.jpg,black3-detail3.jpg", 1);
//		product = new Product("bw4", "까만 가방", 1200000, "<li>깔끔하고 멋있는 가방입니다.</li><li>저도 사고 싶습니다.</li>", "black", "BALLENCIAGA", "여성", "black4.jpg", "black4-detail1.jpg,black4-detail2.jpg,black4-detail3.jpg", 1);

//		product = new Product("yw1", "노란 가방", 1300000, "<li>귀엽고 깔끔한 가방입니다.</li><li>저도 사고 싶습니다.</li>", "yellow", "BALLENCIAGA", "여성", "yellow1.jpg", "yellow1-detail1.jpg,yellow1-detail2.jpg,yellow1-detail3.jpg", 1);
//		product = new Product("yw2", "노란 가방", 1300000, "<li>귀엽고 깔끔한 가방입니다.</li><li>저도 사고 싶습니다.</li>", "yellow", "BALLENCIAGA", "여성", "yellow2.jpg", "yellow2-detail1.jpg,yellow2-detail2.jpg,yellow2-detail3.jpg", 1);
//		product = new Product("yw3", "노란 가방", 1300000, "<li>귀엽고 깔끔한 가방입니다.</li><li>저도 사고 싶습니다.</li>", "yellow", "BALLENCIAGA", "여성", "yellow3.jpg", "yellow3-detail1.jpg,yellow3-detail2.jpg,yellow3-detail3.jpg", 1);
//		product = new Product("yw4", "노란 가방", 1300000, "<li>귀엽고 깔끔한 가방입니다.</li><li>저도 사고 싶습니다.</li>", "yellow", "BALLENCIAGA", "여성", "yellow4.jpg", "yellow4-detail1.jpg,yellow4-detail2.jpg,yellow4-detail3.jpg", 1);

//		product = productService.registerProduct(product);
//		System.out.println("등록 후 상세정보 : " + product);
		
//		Product product = productService.readNumProduct("bw1");
//		System.out.println(product);
		
//		List<Product> list = productService.readProduct();
//		for (Product product : list) {
//			System.out.println(product);
//		}
	}

}
