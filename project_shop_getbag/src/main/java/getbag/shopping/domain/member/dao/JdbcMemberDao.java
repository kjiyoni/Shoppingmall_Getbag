package getbag.shopping.domain.member.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import getbag.shopping.domain.common.factory.DaoFactory;
import getbag.shopping.domain.member.dto.Member;

/**
 * RDB를 통해 회원  저장 및 관리(검색, 수정, 삭제) 구현체
 * @author 홍재헌
 */
public class JdbcMemberDao  implements MemberDao {
	
	/**
	 * 신규회원 등록
	 */
	public boolean create(Connection connection,  Member member){
		boolean success = false;
		StringBuilder sb = new StringBuilder();
		sb.append(" INSERT INTO member (")
		  .append("     id,")
		  .append("     passwd,")
		  .append("     name,")
		  .append("     birthday,")
		  .append("     regdate)")
		  .append(" VALUES (?, ?, ?, ?, sysdate)");
		
		PreparedStatement pstmt = null;
		try {
			pstmt = connection.prepareStatement(sb.toString());
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPasswd());
			pstmt.setString(3, member.getName());
			pstmt.setString(4, member.getbirthday());
			pstmt.executeUpdate();
			success = true;
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			try {
				if (pstmt != null) pstmt.close();
			} catch (Exception e) {}
		}
		return success;
	}
	
	public Member findByUser(Connection connection, String id, String passwd) {
		Member member = null;
		StringBuilder sb = new StringBuilder();
		sb.append(" SELECT id, name, TO_CHAR(birthday, 'yyyy-MM-DD DAY') birthday, TO_CHAR(regdate, 'yyyy-MM-DD DAY') regdate FROM member")
		  .append(" WHERE id = ? AND passwd = ?");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = connection.prepareStatement(sb.toString());
			pstmt.setString(1, id);
			pstmt.setString(2, passwd);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {			
				String uid = rs.getString("id");
				String uname = rs.getString("name");
				String birthday = rs.getString("birthday");
				String regdate = rs.getString("regdate");
				member = new Member();
				member.setId(uid);
				member.setName(uname);
				member.setbirthday(birthday);
				member.setRegdate(regdate);
			}
			
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
			} catch (Exception e) {}
		}
		return member;
	}
	
	@Override
	public List<Member> findByAll(Connection connection) {
		List<Member>  list = null;
		StringBuilder sb = new StringBuilder();
		sb.append(" SELECT id, name, TO_CHAR(birthday, 'yyyy-MM-DD DAY') birthday, TO_CHAR(regdate, 'yyyy-MM-DD DAY') regdate FROM member");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = connection.prepareStatement(sb.toString());
			rs = pstmt.executeQuery();
			list = new ArrayList<Member>();
			while (rs.next()) {			
				String uid = rs.getString("id");
				String uname = rs.getString("name");
				String birthday = rs.getString("birthday");
				String regdate = rs.getString("regdate");
				Member member = new Member();
				member.setId(uid);
				member.setName(uname);
				member.setbirthday(birthday);
				member.setRegdate(regdate);
				list.add(member);
			}
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
			} catch (Exception e) {}
		}
		return list;
	}
	
	@Override
	public Member findById(Connection connection, String id) {
		Member member = null;
		StringBuilder sb = new StringBuilder();
		sb.append(" SELECT id, passwd, name, TO_CHAR(birthday, 'yyyy-MM-DD DAY') birthday, TO_CHAR(regdate, 'yyyy-MM-DD DAY') regdate")
		  .append(" FROM member")
		  .append(" WHERE id = ?");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = connection.prepareStatement(sb.toString());
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				member = new Member();
				String uid = rs.getString("id");
				String uname = rs.getString("name");
				String birthday = rs.getString("birthday");
				String regdate = rs.getString("regdate");
				member.setId(uid);
				member.setName(uname);
				member.setbirthday(birthday);
				member.setRegdate(regdate);
			}
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
			} catch (Exception e) {}
		}
		return member;
	}
	
	
	public static void main(String[] args) throws Exception {
		
//		Member member = new Member("bangry", "1111", "홍재헌", "1997-01-10", null);
//		MemberDao dao = DaoFactory.getInstance().getMemberDao();
//		dao.create(null, member);
//		System.out.println("등록 완료");
		
//		Member loginMember = dao.findByUser("bangry313", "1111");
//		System.out.println(loginMember);
//		System.out.println(dao.findById("angry"));
		
	}

	

	
}


















