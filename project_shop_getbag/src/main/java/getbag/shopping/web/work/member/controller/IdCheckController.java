package getbag.shopping.web.work.member.controller;

import java.util.Map;

import getbag.shopping.domain.common.factory.ServiceFactory;
import getbag.shopping.domain.member.dto.Member;
import getbag.shopping.domain.member.service.MemberService;
import getbag.shopping.web.mvc.controller.WebController;

/**
 * 아이디 중복 체크 세부 컨트롤러
 */
public class IdCheckController implements WebController {
	
	private MemberService memberService = ServiceFactory.getInstance().getMemberService();
	
	@Override
	public String process(Map<String, String> paramMap, Map<String, Object> model) {
		String viewName = "member/idcheck-result";
		String id = paramMap.get("id");
		
		Member member = memberService.readMember(id);
		boolean exist = member != null ? true : false;
		model.put("exist", exist);
		return viewName;
	}

}










