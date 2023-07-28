<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<header class="header">
	<nav class="navbar navbar-expand-sm p-0">
		<div class="container-fluid p-0">
			<div class="collapse navbar-collapse justify-content-end"
				id="navbarMini">
				<ul class="navbar-nav fs-6">
					<li class="nav-item"><a class="nav-link"
						href="<%=request.getContextPath()%>/getbag/map">매장찾기</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<%=request.getContextPath()%>/getbag/mypage">마이페이지</a></li>
					<c:choose>
						<c:when test="${empty WishList}">
							<li class="nav-item"><a class="nav-link"
								href="<%=request.getContextPath()%>/getbag/wish-empty">위시리스트</a>
							</li>
						</c:when>
						<c:otherwise>
							<li class="nav-item"><a class="nav-link"
								href="<%=request.getContextPath()%>/getbag/wish-contain">위시리스트</a>
							</li>
						</c:otherwise>
					</c:choose>
				</ul>
			</div>
		</div>
	</nav>
	<nav class="navbar navbar-expand-sm d-flex align-items-center">
		<div class="container-fluid" id="navbarNav">
			<div class="collapse navbar-collapse justify-content-start">
				<a class="navbar-brand" href="<%=request.getContextPath()%>/"> <img
					src="<%=request.getContextPath()%>/img/logo.png" alt=""
					class="logo"></a>
			</div>
			<div class="collapse navbar-collapse justify-content-end">
				<ul class="navbar-nav d-flex align-items-center">
					<li class="nav-item mt-2 mb-2 mx-4"><a class="nav-link"
						href="<%=request.getContextPath()%>/getbag/product">상품</a></li>
					<li class="nav-item mt-2 mb-2 mx-4"><a class="nav-link"
						href="<%=request.getContextPath()%>/getbag/support">고객센터</a></li>
					<c:choose>
						<c:when test="${empty BasketList}">
							<li class="nav-item mt-2 mb-2 mx-4"><a class="nav-link"
								href="<%=request.getContextPath()%>/getbag/basket-empty">장바구니</a>
							</li>
						</c:when>
						<c:otherwise>
							<li class="nav-item mt-2 mb-2 mx-4"><a class="nav-link"
								href="<%=request.getContextPath()%>/getbag/basket-contain">장바구니</a>
							</li>
						</c:otherwise>
					</c:choose>
					<li class="nav-item mt-2 mb-2 mx-4"><a class="nav-link"
						href="<%=request.getContextPath()%>/getbag/signup">회원가입</a></li>
					<!-- 로그인 버튼 -->
					<c:choose>
						<c:when test="${empty loginMember}">
							<li class="nav-item mt-2 mb-2 mx-4"><a class="nav-link"
								href="<%=request.getContextPath()%>/getbag/signin">로그인</a></li>
						</c:when>
						<c:otherwise>
							<li class="nav-item mt-2 mb-2 mx-4"><a
								href="<%=request.getContextPath()%>/getbag/signout"
								class="nav-link" data-bs-auto-close="outside"> 로그아웃</a></li>
							<li><span class="" style="vertical-align: middle;"><strong>
										${loginMember.id}</strong>(${loginMember.name})님 반가워요!</span></li>
						</c:otherwise>
					</c:choose>
				</ul>
			</div>
		</div>
	</nav>
</header>