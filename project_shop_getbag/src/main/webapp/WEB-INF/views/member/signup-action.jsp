<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="getbag.shopping.domain.common.factory.ServiceFactory"%>
<%@ page import="getbag.shopping.domain.member.service.MemberService"%>

<jsp:useBean id="member" class="getbag.shopping.domain.member.dto.Member" scope="session"/>
<jsp:setProperty property="*" name="member"/>

<%

MemberService memberService = ServiceFactory.getInstance().getMemberService();
memberService.registerMember(member);
System.out.println("[SYS] 회원가입 완료");
// response.sendRedirect("/signin");

%>

<jsp:forward page="signin.jsp"/>