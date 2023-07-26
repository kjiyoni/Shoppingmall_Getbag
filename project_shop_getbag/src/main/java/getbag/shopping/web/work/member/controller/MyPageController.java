package getbag.shopping.web.work.member.controller;

import java.util.Map;

import getbag.shopping.web.mvc.controller.WebController;
/**
 * /mypage 요청에 대한 세부 핸들러
 * 마이 페이지
 */
public class MyPageController implements WebController{
	
	@Override
	public String process(Map<String, String> paramMap, Map<String, Object> model) {
		String viewName = "member/my-page";
		// 홈페이지에서 동적 컨텐츠 출력 시 Service 객체 사용
		return viewName;
	}

}













