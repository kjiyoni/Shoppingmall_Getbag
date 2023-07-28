package getbag.shopping.domain.support.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import getbag.shopping.domain.common.factory.ServiceFactory;
import getbag.shopping.domain.support.dao.SupportDao;
import getbag.shopping.domain.support.dto.Support;
import getbag.shopping.web.common.page.PageParams;

/**
 * 고객센터 관련 비즈니스 로직 처리 및 트랜잭션 관리 구현체
 * @author 홍재헌
 */
public class SupportServiceImpl implements SupportService{
	
	private DataSource dataSource;
	private SupportDao supportDao;
	
	public SupportServiceImpl(DataSource dataSource, SupportDao supportDao) {
		this.dataSource = dataSource;
		this.supportDao = supportDao;
	}

	@Override
	public Support registerSupport(Support support) {
		Connection connection = null;
		try {
			// 트랜잭션 시작
			connection = dataSource.getConnection();
			connection.setAutoCommit(false);
			// supportDao 사용
			// 등록
			support = supportDao.create(connection, support);
			// 상세조회
			support = supportDao.findByCode(connection, support.getQnacode());
			// 정상 처리 시 커밋
			connection.commit();
		} catch (Exception e) {
			try {connection.rollback();} catch (SQLException e1) {}
			throw new RuntimeException(e.getMessage());
		} finally {
			try {if(connection != null) connection.close();} catch (SQLException e1) {}
		}
		return support;
	}
	
	@Override
	public int getAticleCount() {
		int count = 0;
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			count = supportDao.getCountAll(connection);
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			try {
				if (connection != null)	connection.close();
			} catch (SQLException e1) {	}
		}
		return count;
	}

	@Override
	public List<Support> readSupport(PageParams params) {
		List<Support> list = null;
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			list = supportDao.findByAll(connection, params.getRequestPage(), params.getElementSize());
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			try {if(connection != null) connection.close();} catch (SQLException e1) {}
		}
		return list;
	}
	
	// 테스트 메인
	public static void main(String[] args) {
		ServiceFactory serviceFactory = ServiceFactory.getInstance();
		
//		문의 관련 테스트------------------------------------------------------------------------------------------------------------------------------------------------------
		SupportService supportService = serviceFactory.getSupportService();
//		Support support = null;
//		support = new Support("배송은 언제오나요1", "최재헌");
//		support = supportService.registerSupport(support);
//		System.out.println("등록 후 상세정보 : " + support);
		
//		List<Support> list = supportService.readSupport();
//		for (Support support2 : list) {
//			System.out.println(support2);
//		}
	}

}
