package getbag.shopping.domain.support.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import getbag.shopping.domain.support.dto.SupportRe;

/**
 * RDB를 통해 고객센터 답변 저장 및 관리(검색, 수정, 삭제) 구현체
 * 
 * @author 홍재헌
 */
public class JdbcSupportReDao implements SupportReDao {

	/**
	 * 신규 답변 등록
	 */
	public SupportRe create(Connection connection, SupportRe supportRe) {
		StringBuilder sb = new StringBuilder();
		sb.append(" INSERT INTO product_qna_re (")
		  .append("		    recode,")
		  .append("		    qnacode,")
		  .append("		    recont,")
		  .append("		    redate")
		  .append(" ) VALUES (recode_seq.nextval, ?, ?, sysdate)");
		
		StringBuilder sb2 = new StringBuilder();
		sb2.append(" SELECT recode_seq.currval recode FROM DUAL");

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = connection.prepareStatement(sb.toString());
			pstmt.setString(1, supportRe.getQnaCode());
			pstmt.setString(2, supportRe.getReCont());
			pstmt.executeUpdate();
			pstmt.close();

			pstmt = connection.prepareStatement(sb2.toString());
			rs = pstmt.executeQuery();
			if (rs.next()) {
				String reCode = rs.getString("recode");
				supportRe.setReCode(reCode);
			}
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
			} catch (Exception e) {}
		}
		return supportRe;
	}

	public SupportRe findByCode(Connection connection, String code) {
		SupportRe supportRe = null;
		StringBuilder sb = new StringBuilder();
		sb.append(" SELECT * FROM team.product_qna_re")
		  .append(" WHERE recode = ?");

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = connection.prepareStatement(sb.toString());
			pstmt.setString(1, code);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				String recode = rs.getString("recode");
				String qnacode = rs.getString("qnacode");
				String cont = rs.getString("recont");
				supportRe = new SupportRe();
				supportRe.setReCode(recode);
				supportRe.setQnaCode(qnacode);
				supportRe.setReCont(cont);
			}
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
			} catch (Exception e) {}
		}
		return supportRe;
	}
}
