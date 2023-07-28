package getbag.shopping.domain.support.dao;

import java.sql.Connection;

import getbag.shopping.domain.support.dto.SupportRe;

/**
 * 데이터 베이스 문의 답변 관리 명세
 *  @author 홍재헌
 *
 */
public interface SupportReDao {
	//문의 답변 등록
	public SupportRe create(Connection connection, SupportRe supportRe);
	//문의 코드로 출력
	public SupportRe findByCode(Connection connection, String code);
}
