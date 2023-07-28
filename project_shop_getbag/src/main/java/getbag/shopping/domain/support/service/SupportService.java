package getbag.shopping.domain.support.service;

import java.util.List;

import getbag.shopping.domain.support.dto.Support;
import getbag.shopping.web.common.page.PageParams;

/**
 * 문의글 관련 비즈니스 로직 처리 및 트랜잭션 관리를 위한 명세
 * @author 홍재헌
 */
public interface SupportService {
	/** 문의 등록 */
	public Support registerSupport(Support support);
	/** 전체 방명록 개수 반환 */
	public int getAticleCount();
	/** 문의 전체 조회 */
	public List<Support> readSupport(PageParams params);
}
