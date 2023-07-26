package getbag.shopping.web.work.basket.controller;

import java.util.Map;

import getbag.shopping.web.mvc.controller.WebController;
/**
 * /wish-contain 요청에 대한 세부 핸들러
 * 위시리스트 페이지
 */
public class WishContainController implements WebController{
	
	@Override
	public String process(Map<String, String> paramMap, Map<String, Object> model) {
		String viewName = "member/wishlist-contain";
		// 홈페이지에서 동적 컨텐츠 출력 시 Service 객체 사용
		return viewName;
	}

}













