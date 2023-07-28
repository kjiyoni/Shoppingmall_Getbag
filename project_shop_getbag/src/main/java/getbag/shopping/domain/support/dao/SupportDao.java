package getbag.shopping.domain.support.dao;

import java.sql.Connection;
import java.util.List;

import getbag.shopping.domain.support.dto.Support;

/**
 * 데이터 베이스 문의 관리 명세
 *  @author 홍재헌
 *
 */
public interface SupportDao {
	//문의 등록
	public Support create(Connection connection, Support support);
	//문의 코드로 출력
	public Support findByCode(Connection connection, String code);
	// 페이징 계산에 필요한 게시글 전체 갯수 반환
	public int getCountAll(Connection connection);
	//문의 전체 출력
	public List<Support> findByAll(Connection connection, int requestPage, int elementSize);
}
