package getbag.shopping.web.work.member.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import getbag.shopping.web.mvc.controller.HttpController;

/**
 * 회원 로그아웃 처리 세부 컨트롤러
 * /member/logout
 */
public class MemberSignoutController implements HttpController {

   @Override
   public String process(Map<String, String> paramMap, Map<String, Object> model, HttpServletRequest request, HttpServletResponse response) {
      // 세션 삭제
      request.getSession().invalidate();
      // Redirect to the main page after logout
      //System.out.println("로그아웃완료");
      return "redirect:/getbag/index";
   }
}