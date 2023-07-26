<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="getbag.shopping.domain.common.factory.ServiceFactory"%>
<%@ page import="getbag.shopping.domain.member.service.MemberService"%>

<jsp:useBean id="member" class="getbag.shopping.domain.member.dto.Member" scope="session"/>
<jsp:setProperty property="*" name="member"/>

<%

MemberService memberService = ServiceFactory.getInstance().getMemberService();
memberService.isMember("id", "passwd");
System.out.println("로그인 완료");
response.sendRedirect("/getbag/index");

%>

