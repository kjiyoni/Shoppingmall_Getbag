package getbag.shopping.domain.product.service;

import java.util.List;

import getbag.shopping.domain.product.dto.Product;

/**
 * 회원 관련 비즈니스 로직 처리 및 트랜잭션 관리를 위한 명세
 * @author 홍재헌
 */
public interface ProductService {
	/** 상품 등록 */
	public Product registerProduct(Product product);
	/** 상품 이름으로 상세정보 조회 */
	public Product readNameProduct(String id);
	/** 상품 번호로 상세정보 조회 */
	public Product readNumProduct(String code);
	/** 상품 전체 조회 */
	public List<Product> readProduct();
}
