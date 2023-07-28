package getbag.shopping.domain.support.dto;

/**
 * JavaBean 규약에 따라 만든 재사용 가능한 컴포넌트
 * 게시글 답변 정보
 * @author 홍재헌
 *
 */
public class SupportRe {
//	recode는 db 내 시퀀스로 동작, redate는 db 내 sysdate로 동작
//									   		설명           	 - DB에 등록된 이름
	private String reCode; 			// 답변 코드    	 - recode
	private String qnaCode; 		// 문의 코드    	 - qnacode - db에서 가져와서 저장하는 역할, 따로 생성자에서 등록은 안해준다
	private String reCont; 			// 문의 내용    	 - recont

	public SupportRe() {}

	public SupportRe(String qnaCode, String reCont ) {
		super();
		this.qnaCode = qnaCode;
		this.reCont = reCont;
	}

	public String getReCode() {
		return reCode;
	}

	public void setReCode(String reCode) {
		this.reCode = reCode;
	}

	public String getQnaCode() {
		return qnaCode;
	}

	public void setQnaCode(String qnaCode) {
		this.qnaCode = qnaCode;
	}

	public String getReCont() {
		return reCont;
	}

	public void setReCont(String reCont) {
		this.reCont = reCont;
	}

	@Override
	public String toString() {
		return "SupportRe [문의 번호=" + qnaCode + ", 답변 번호=" + reCode + ", 답변 내용=" + reCont + "]";
	}

}
