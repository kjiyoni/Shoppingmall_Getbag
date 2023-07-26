package getbag.shopping.web.work.member.controller;

import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import getbag.shopping.web.mvc.controller.HttpController;

/**
 * 회원 가입 화면 및 가입 요청 처리 세부 컨트롤러
 * /member/signup
 */
public class MemberSignupController implements HttpController {
	
	
	@Override
	public String process(Map<String, String> paramMap, Map<String, Object> model, HttpServletRequest request, HttpServletResponse response) {
		String viewName = null;
		// 회원 가입 화면 요청 (GET)
		if(request.getMethod().equalsIgnoreCase("get")) {
			viewName = "member/signup";
		}else { // 회원 가입 요청 (POST)
			viewName = "member/signup-action";
			String id = paramMap.get("id");
			String passwd = paramMap.get("passwd");
			String name = paramMap.get("name");
			String birth = paramMap.get("birth");
		}
		return viewName;
	}
}










