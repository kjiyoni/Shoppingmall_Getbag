package getbag.shopping.domain.support.service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.sql.DataSource;

import getbag.shopping.domain.common.factory.ServiceFactory;
import getbag.shopping.domain.support.dao.SupportReDao;
import getbag.shopping.domain.support.dto.SupportRe;

/**
 * 고객센터 답변 관련 비즈니스 로직 처리 및 트랜잭션 관리 구현체
 * @author 홍재헌
 */
public class SupportReServiceImpl implements SupportReService{
	
	private DataSource dataSource;
	private SupportReDao supportReDao;
	
	public SupportReServiceImpl(DataSource dataSource, SupportReDao supportReDao) {
		this.dataSource = dataSource;
		this.supportReDao = supportReDao;
	}

	@Override
	public SupportRe registerSupport(SupportRe supportRe) {
		Connection connection = null;
		try {
			// 트랜잭션 시작
			connection = dataSource.getConnection();
			connection.setAutoCommit(false);
			// 등록
			supportRe = supportReDao.create(connection, supportRe);
			// 상세조회
			supportRe = supportReDao.findByCode(connection, supportRe.getReCode());
			// 정상 처리 시 커밋
			connection.commit();
		} catch (Exception e) {
			try {connection.rollback();} catch (SQLException e1) {}
			throw new RuntimeException(e.getMessage());
		} finally {
			try {if(connection != null) connection.close();} catch (SQLException e1) {}
		}
		return supportRe;
	}
	
	@Override
	public SupportRe readNumSupportRe(String code) {
		SupportRe supportRe = null;
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			supportRe = supportReDao.findByCode(connection, code);
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			try {if(connection != null) connection.close();} catch (SQLException e1) {}
		}
		return supportRe;
	}
	
	// 테스트 메인
	public static void main(String[] args) {
		ServiceFactory serviceFactory = ServiceFactory.getInstance();
		
//		문의 답변 관련 테스트------------------------------------------------------------------------------------------------------------------------------------------------------
		SupportReService supportReService = serviceFactory.getSupportReService();
		SupportRe supportRe = null;
//		supportRe = new SupportRe("1", "<strong>정확한 아이디·비밀번호를 입력했는지 확인</strong><br> \"가입하지 않은 아이디이거나, 잘못된 비밀번호입니다.\"라는 문구가 노출되며 로그인이 되지 않는다면, 아이디·비밀번호가 맞지 않거나, 잘못 입력한 경우입니다. 아래의 내용을 점검하세요. <br> 1. 아이디는 영문 대문자 입력이 불가하니, 아이디는 영문 소문자로만 입력하세요. <br> 2. 키보드의 Caps Lock이 눌려 있으면 영문이 대문자로 입력됩니다. <br> 3. 아이디·비밀번호가 기억나지 않거나 입력한 정보로 계속 로그인이 되지 않는다면 정확한 아이디·비밀번호 확인 후 로그인 시도하세요.<br>");
//		supportRe = new SupportRe("2", "주문 내역을 확인하려면 <strong>결제 내역 메뉴</strong>로 이동하기만 하면 됩니다.  <br> 여기에서 구매 날짜 및 주문 상태를 포함한 모든 과거 주문에 대한 자세한 기록을 찾을 수 있습니다.  <br> 구매 내역을 추적하고 거래에 대한 최신 정보를 확인할 수 있는 편리한 방법입니다.  <br> 결제 내역 메뉴를 탐색하여 이전 주문에 대해 필요한 모든 정보에 액세스할 수 있습니다.  <br> 질문이 있거나 추가 지원이 필요한 경우 지원 팀이 항상 대기하고 있습니다!");
//		supportRe = new SupportRe("3", "결제에 관심을 가져주셔서 감사합니다.   <br> 소중한 고객의 원활한 결제 경험을 보장하기 위해 안전하고 편리한 다양한 결제 방법을 제공합니다.   <br> <strong>신용/직불 카드, PayPal, 은행 송금 등</strong>과 같은 옵션 중에서 선택할 수 있습니다.   <br> 귀하의 결제 정보는 항상 최고의 보안과 개인 정보로 처리되므로 안심하십시오. 결제 방법에 대한 특정 질문이 있거나 결제 프로세스에 대한 지원이 필요한 경우  <br> 언제든지 지원 팀에 문의하십시오. 번거로움 없이 결제하실 수 있도록 도와드리겠습니다!");
//		supportRe = supportReService.registerSupport(supportRe);
//		System.out.println("등록 후 상세정보 : " + supportRe);
		
		supportRe = supportReService.readNumSupportRe("2");
		System.out.println("검색된 상세정보 : " + supportRe.getReCont());
		
	}

}
