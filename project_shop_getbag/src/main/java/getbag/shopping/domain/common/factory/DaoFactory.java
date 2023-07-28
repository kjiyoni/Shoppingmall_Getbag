package getbag.shopping.domain.common.factory;

import getbag.shopping.domain.member.dao.JdbcMemberDao;
import getbag.shopping.domain.member.dao.MemberDao;
import getbag.shopping.domain.product.dao.JdbcProductDao;
import getbag.shopping.domain.product.dao.ProductDao;
import getbag.shopping.domain.support.dao.JdbcSupportDao;
import getbag.shopping.domain.support.dao.JdbcSupportReDao;
import getbag.shopping.domain.support.dao.SupportDao;
import getbag.shopping.domain.support.dao.SupportReDao;

/**
 * Simple Factory 적용
 */
public class DaoFactory {

	private static DaoFactory instance = new DaoFactory();

	private DaoFactory() {}

	public static DaoFactory getInstance() {
		return instance;
	}

	// MemberDao 구현체 반환
	public MemberDao getMemberDao() {
		return new JdbcMemberDao();
	}
	
	public ProductDao getProductDao() {
		return new JdbcProductDao();
	}
	
	public SupportDao getSupportDao() {
		return new JdbcSupportDao();
	}
	
	public SupportReDao getSupportReDao() {
		return new JdbcSupportReDao();
	}
}
