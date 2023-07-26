package getbag.shopping.web.work.product.controller;

import java.util.Map;

import getbag.shopping.web.mvc.controller.WebController;
/**
 * /product 요청에 대한 세부 핸들러
 */
public class ProductBR4DetailController implements WebController{
	
	@Override
	public String process(Map<String, String> paramMap, Map<String, Object> model) {
		String viewName = "product/brown/brown4-detail";
		// 홈페이지에서 동적 컨텐츠 출력 시 Service 객체 사용
		return viewName;
	}

}













