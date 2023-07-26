package getbag.shopping.web.work.member.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import getbag.shopping.domain.common.factory.ServiceFactory;
import getbag.shopping.domain.member.dto.Member;
import getbag.shopping.domain.member.service.MemberService;
import getbag.shopping.web.mvc.controller.HttpController;

/**
 * 회원 로그인 및 로그아웃 처리 세부 컨트롤러
 * /member/signin
 */
public class MemberSigninController implements HttpController {
	private MemberService memberService = ServiceFactory.getInstance().getMemberService();
	
	@Override
	public String process(Map<String, String> paramMap, Map<String, Object> model, HttpServletRequest request, HttpServletResponse response) {
		String viewName = "member/signin";
		// 아이디 저장 체크박스 체크기능
        boolean saveIdChecked = "on".equals(paramMap.get("saveid"));
		
		// 회원 로그인 요청 (POST)
				if(request.getMethod().equalsIgnoreCase("post")) {
					String loginId = paramMap.get("id");
					String loginPasswd = paramMap.get("passwd");
					String saveId = paramMap.get("saveid");
					
					Member loginMember = memberService.isMember(loginId, loginPasswd);
					// 회원인 경우
					if(loginMember != null){
						// 세션에 로그인정보 저장
						request.getSession().setAttribute("loginMember", loginMember);
						viewName = "member/signin-action";
						// 아이디 저장 체크 시 쿠키 생성
						if(saveIdChecked){
							Cookie saveCookie;
							try {
								saveCookie = new Cookie("saveid", URLEncoder.encode(loginMember.getId(), "utf-8"));
								saveCookie.setPath("/");
								saveCookie.setMaxAge(60*60*24*100);
								response.addCookie(saveCookie);
							} catch (UnsupportedEncodingException e) {
								e.printStackTrace();
							}
						} else {
							// 아이디 저장 미 체크시 쿠키 삭제
				            Cookie deleteCookie = new Cookie("saveid", null);
				            deleteCookie.setPath("/");
				            deleteCookie.setMaxAge(0);
				            response.addCookie(deleteCookie);
						}	
					} else { 
						model.put("errorMessage", "로그인 오류입니다. 다시 시도해주세요.");
					}
				} else { // 로그아웃 요청 (GET)
					// 세션 삭제
					request.getSession().invalidate();
					//return "redirect:/getbag/index";
				} 
				
				model.put("savedId", saveIdChecked);
				return viewName;
			}

		}
