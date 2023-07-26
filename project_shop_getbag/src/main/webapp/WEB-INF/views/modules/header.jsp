<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<header>
	 <nav class="navbar navbar-expand-sm">
	  <div class="container-fluid">
	    <div class="collapse navbar-collapse justify-content-end" id="navbarMini">
	      <ul class="navbar-nav fs-6">
	        <li class="nav-item me-2">
	          <a class="nav-link" href="<%=request.getContextPath()%>/getbag/map">매장찾기</a>
	        </li>
	        <li class="nav-item me-2">
	          <a class="nav-link" href="<%=request.getContextPath()%>/getbag/mypage">마이페이지</a>
	        </li>
	        <li class="nav-item me-5">
	          <a class="nav-link" href="<%=request.getContextPath()%>/getbag/wish-contain">위시리스트</a>
	        </li>
	      </ul>
	    </div>
	  </div>
	</nav>
    <nav class="navbar navbar-expand-lg">
      <div class="container-fluid"  id="navbarNav">
      	<div class="collapse navbar-collapse justify-content-start">
	      	<a class="navbar-brand" href="<%=request.getContextPath()%>/getbag/index">
	        <img src="<%=request.getContextPath()%>/img/logo.png" alt="" class="logo"></a>
      	</div>
        <div class="collapse navbar-collapse justify-content-end">
          <ul class="navbar-nav">
            <li class="nav-item mt-2 mb-2 mx-4">
              <a class="nav-link" href="<%=request.getContextPath()%>/getbag/product">상품</a>
            </li>
            <li class="nav-item mt-2 mb-2 mx-4">
              <a class="nav-link" href="<%=request.getContextPath()%>/getbag/support">고객센터</a>
            </li>
            <li class="nav-item mt-2 mb-2 mx-4">
              <a class="nav-link" href="<%=request.getContextPath()%>/getbag/basket-empty">장바구니</a>
            </li>
            <li class="nav-item mt-2 mb-2 mx-4">
              <a class="nav-link" href="<%=request.getContextPath()%>/getbag/signup">회원가입</a>
            </li>
            <!-- 로그인 버튼 -->
            <c:choose>
				<c:when test="${empty loginMember}">
					<li class="nav-item mt-2 mx-4 me-5">
            		  <a class="nav-link" href="<%=request.getContextPath()%>/getbag/signin">로그인</a>
            		</li>
				</c:when>
				<c:otherwise>
					<li>
						<span class="btn btn-dark mt-2 d-flex align-items-center"
							style="vertical-align: middle;">${loginMember.id}(${loginMember.name})님 반가워요!</span>
					</li>
					<li class="nav-item mt-2 mx-4 me-5">
						<a href="${path}/signin" class="btn btn-outline-secondary" data-bs-auto-close="outside">로그아웃</a>
					</li>
				</c:otherwise>
			</c:choose>
          </ul>
        </div>
      </div>
    </nav>
  </header>