package getbag.shopping.domain.common.factory;

import getbag.shopping.domain.member.dao.JdbcMemberDao;
import getbag.shopping.domain.member.dao.MemberDao;

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
}
