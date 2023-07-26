package getbag.shopping.web.work.service.controller;

import java.util.Map;

import getbag.shopping.web.mvc.controller.WebController;
/**
 * /product 요청에 대한 세부 핸들러
 */
public class SupportController implements WebController{
	
	@Override
	public String process(Map<String, String> paramMap, Map<String, Object> model) {
		String viewName = "support/support";
		// 홈페이지에서 동적 컨텐츠 출력 시 Service 객체 사용
		return viewName;
	}

}













