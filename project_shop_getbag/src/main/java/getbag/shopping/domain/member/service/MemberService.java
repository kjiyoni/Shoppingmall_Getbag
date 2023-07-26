package getbag.shopping.domain.member.service;

import java.util.List;

import getbag.shopping.domain.member.dto.Member;

/**
 * 회원 관련 비즈니스 로직 처리 및 트랜잭션 관리를 위한 명세
 * @author 김기정
 */
public interface MemberService {
	/** 회원 등록 */
	public Member registerMember(Member member);
	/** 회원 인증 */
	public Member isMember(String id, String passwd);
	/** 회원 전체 목록 */
	public List<Member> getMembers();
	/** 회원 상세정보 조회 */
	public Member readMember(String id);
}
