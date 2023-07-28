<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<header>
	 <nav class="navbar navbar-expand-sm">
	  <div class="container-fluid">
	    <div class="collapse navbar-collapse justify-content-end" id="navbarMini">
	      <ul class="navbar-nav fs-6">
	        <li class="nav-item me-2">
	          <a class="nav-link" href="<%=request.getContextPath()%>/support/map.jsp">매장찾기</a>
	        </li>
	        <li class="nav-item me-2">
	          <a class="nav-link" href="<%=request.getContextPath()%>/member/my-page.jsp">마이페이지</a>
	        </li>
	        <li class="nav-item me-5">
	          <a class="nav-link" href="<%=request.getContextPath()%>/member/wishlist-contain.jsp">위시리스트</a>
	        </li>
	        </li>
	      </ul>
	    </div>
	  </div>
	</nav>
    <nav class="navbar navbar-expand-lg">
      <div class="container-fluid"  id="navbarNav">
      	<div class="collapse navbar-collapse justify-content-start">
	      	<a class="navbar-brand" href="<%=request.getContextPath()%>/index.jsp">
	        <img src="<%=request.getContextPath()%>/img/logo.png" alt="" class="logo"></a>
      	</div>
        <div class="collapse navbar-collapse justify-content-end">
          <ul class="navbar-nav">
            <li class="nav-item mt-2 mb-2 mx-4">
              <a class="nav-link" href="<%=request.getContextPath()%>/product/product.jsp">상품</a>
            </li>
            <li class="nav-item mt-2 mb-2 mx-4">
              <a class="nav-link" href="<%=request.getContextPath()%>/support/support.jsp">고객센터</a>
            </li>
            <li class="nav-item mt-2 mb-2 mx-4">
              <a class="nav-link" href="<%=request.getContextPath()%>/member/basket-empty.jsp">장바구니</a>
            </li>
            <li class="nav-item mt-2 mb-2 mx-4">
              <a class="nav-link" href="<%=request.getContextPath()%>/member/signup.jsp">회원가입</a>
            </li>
            <li class="nav-item mt-2 mx-4 me-5">
              <a class="nav-link" href="<%=request.getContextPath()%>/member/signin.jsp">로그인</a>
            </li>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </header>