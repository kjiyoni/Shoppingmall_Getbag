package getbag.shopping.domain.support.service;

import getbag.shopping.domain.support.dto.SupportRe;

/**
 * 문의 답변 관련 비즈니스 로직 처리 및 트랜잭션 관리를 위한 명세
 * @author 홍재헌
 */
public interface SupportReService {
	/** 문의 답변 등록 */
	public SupportRe registerSupport(SupportRe supportRe);
	/** 문의 답변 번호로 상세정보 조회 */
	public SupportRe readNumSupportRe(String code);
}
