package getbag.shopping.domain.member.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import getbag.shopping.domain.common.factory.ServiceFactory;
import getbag.shopping.domain.member.dao.MemberDao;
import getbag.shopping.domain.member.dto.Member;

/**
 * 회원 관련 비즈니스 로직 처리 및 트랜잭션 관리 구현체
 * @author 홍재헌
 */
public class MemberServiceImpl implements MemberService{
	
	private DataSource dataSource;
	private MemberDao memberDao;
	
	public MemberServiceImpl(DataSource dataSource, MemberDao memberDao) {
		this.dataSource = dataSource;
		this.memberDao = memberDao;
	}

	@Override
	public Member registerMember(Member member) {
		Connection connection = null;
		try {
			// 트랜잭션 시작
			connection = dataSource.getConnection();
			connection.setAutoCommit(false);
			// memberDao 사용
			// 등록
			memberDao.create(connection, member);
			// 상세조회
			member = memberDao.findById(connection, member.getId());
			// 정상 처리 시 커밋
			connection.commit();
		} catch (Exception e) {
			try {connection.rollback();} catch (SQLException e1) {}
			throw new RuntimeException(e.getMessage());
		} finally {
			try {if(connection != null) connection.close();} catch (SQLException e1) {}
		}
		return member;
	}

	@Override
	public Member isMember(String id, String passwd) {
		Member member = null;
		Connection connection = null;
		try {
			// select는 트랜잭션 X
			connection = dataSource.getConnection();
			member = memberDao.findByUser(connection, id, passwd);
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			try {if(connection != null) connection.close();} catch (SQLException e1) {}
		}
		return member;
	}

	@Override
	public List<Member> getMembers() {
		List<Member> members = null;
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			members = memberDao.findByAll(connection);
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			try {if(connection != null) connection.close();} catch (SQLException e1) {}
		}
		return members;
	}

	@Override
	public Member readMember(String id) {
		Member member = null;
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			member = memberDao.findById(connection, id);
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			try {if(connection != null) connection.close();} catch (SQLException e1) {}
		}
		return member;
	}
	
	// 테스트 메인
	public static void main(String[] args) {
		ServiceFactory serviceFactory = ServiceFactory.getInstance();
		MemberService memberService = serviceFactory.getMemberService();
		
//		Member member = new Member("bangry1", "1111", "김재헌", "2000-02-10");
//		member = memberService.registerMember(member);
//		System.out.println("등록 후 상세정보 : " + member);
		
//		Member loginMember = memberService.isMember("bangry", "1111");
//		System.out.println(loginMember);
		
//		List<Member> members = memberService.getMembers();
//		System.out.println(members);
		
//		Member detailMember = memberService.readMember("bangry1");
//		System.out.println(detailMember);
		
	}

}
