package getbag.shopping.domain.product.dao;

import java.sql.Connection;
import java.util.List;

import getbag.shopping.domain.product.dto.Product;

/**
 * 데이터 베이스 회원 관리 명세
 *  @author 홍재헌
 *
 */
public interface ProductDao {
	//상품 등록
	public boolean create(Connection connection, Product product);
	//이름으로 상품찾기
	public Product findByName(Connection connection, String proname);
	//번호로 상품찾기
	public Product findByNum(Connection connection, String procode);
	//상품 전체 출력
	public List<Product> findByAll(Connection connection);
}
