package getbag.shopping.web.work.service.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import getbag.shopping.domain.common.factory.ServiceFactory;
import getbag.shopping.domain.support.dto.Support;
import getbag.shopping.domain.support.service.SupportService;
import getbag.shopping.web.common.page.PageParams;
import getbag.shopping.web.common.page.Pagination;
import getbag.shopping.web.mvc.controller.HttpController;
/**
 * /support 요청에 대한 세부 핸들러
 */
public class SupportController implements HttpController{
	
		// 한 페이지에 보여지는 목록 갯수 설정
		private static final int ELEMENT_SIZE = 5;
		// 한페이지에 보여지는 페이지 갯수 설정
		private static final int PAGE_SIZE = 5;
		
		private SupportService supportService = ServiceFactory.getInstance().getSupportService();

		@Override
		public String process(Map<String, String> paramMap, Map<String, Object> model, HttpServletRequest request, HttpServletResponse response) {
			String viewName = null;

			// 방명록 목록 요청 (GET)
			if (request.getMethod().equalsIgnoreCase("get")) {
				// 사용자 선택페이지
				String requestPage = paramMap.get("page");
				if (requestPage == null || requestPage.equals("")) {
					requestPage = "1";
				}
				int selectPage = Integer.parseInt(requestPage);

				// 페이징 계산을 위한 게시글 전체 갯수 조회
				int rowCount = supportService.getAticleCount();

				// 전체 페이지수 계산
				PageParams params = new PageParams(ELEMENT_SIZE, PAGE_SIZE, selectPage, rowCount);
				Pagination pagination = new Pagination(params);
				List<Support> list = supportService.readSupport(params);

				// 모델에 게시글 목록 설정
				model.put("list", list);
				// 모델에 페이징 정보 설정
				model.put("pagination", pagination);
				viewName = "support/support";

			} else {
				String title = paramMap.get("content");

//				로그인 후 고객센터 글 올릴라면 필요
//				HttpSession session = request.getSession();
				
				Support sup = new Support();
				sup.setQnatitle(title);
				
//				if (session.getAttribute("loginMember") != null) {
				
//				} else {
//					sup.setQnatitle("");
//				}
				
				supportService.registerSupport(sup);

//				forward가 아닌 redirect 처리
				viewName = "redirect:support";
			}
			return viewName;
	}
}













