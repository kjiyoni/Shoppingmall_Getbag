package getbag.shopping.domain.member.dao;

import java.sql.Connection;
import java.util.List;

import getbag.shopping.domain.member.dto.Member;

/**
 * 데이터 베이스 회원 관리 명세
 *  @author 김기정
 *
 */
public interface MemberDao {
	
	public boolean create(Connection connection, Member member);
	public Member findByUser(Connection connection,String id, String passwd);
	public List<Member> findByAll(Connection connection);
	public Member findById(Connection connection, String id);
}
