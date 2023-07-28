<%@ page import="java.util.List"%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<!-- Favicon -->
<link href="img/favicon.ico" rel="icon">

<!-- BootStrap -->
<link href="../css/bootstrap.css" rel="stylesheet">
<link href="../css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="../css/style.css" rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous">

</head>

<body>
	<!-- =============== Header =============== -->
	<jsp:include page="/WEB-INF/views/modules/header.jsp" />

	<!-- =============== Article(Support) =============== -->
	<section class="support container">
		<div class="border-bottom border-2 border-black mt-5">
			<div class="d-flex align-items-center mb-4">
				<h4 class="mb-0 me-3 fw-bold">고객센터</h4>
				<p class="mb-0 m-1">문의사항을 남겨주시면 빠른 시일 내에 답변해드리도록 하겠습니다.</p>
			</div>
		</div>
		<form action="${path}/support" method="post" role="form" novalidate>
			<div class="p-5">
				<textarea class="form-control border-dark-subtle border-3 p-3"
					id="exampleFormControlTextarea1" rows="2" name="content"
					placeholder="문의사항을 입력해주세요."></textarea>
				<div class="d-md-flex justify-content-end align-items-center mt-4">
					<input type="submit" value="작성하기" id="sendBtn"
						class="btn btn-dark btn-sm ps-5 pe-5">
				</div>
			</div>
		</form>
		<div class="border-bottom border-2 border-dark-subtle mt-3 ms-2">
			<div class="d-flex align-items-center mb-4">
				<h5 class="mb-0">문의목록</h5>
			</div>
		</div>

		<%-- 게시글 목록 반복 --%>
		<c:forEach items="${list}" var="support" varStatus="loop">
			<div class="accordion-item">
				<h2 class="accordion-header" id="flush-heading${loop.index + 1}">
					<button class="accordion-button collapsed border-bottom p-4"
						type="button" data-bs-toggle="collapse"
						data-bs-target="#flush-collapse${loop.index + 1}"
						aria-expanded="false"
						aria-controls="flush-collapse${loop.index + 1}">
						<p class="mb-0">Q. ${support.getQnatitle()}</p>
					</button>
				</h2>
				<div id="flush-collapse${loop.index + 1}"
					class="accordion-collapse collapse lh-lg"
					aria-labelledby="flush-heading${loop.index + 1}"
					data-bs-parent="#accordionFlushExample">
					<div class="accordion-body p-4">
						<%-- 여기에 문의 내용 --%>
						<c:choose>
							<c:when test="${support.getCont() == null}">
		            최대한 빠르게 답변드리겠습니다. 조금만 기다려주시면 감사하겠습니다.
		          </c:when>
							<c:otherwise>
		            ${support.getCont()}
		          </c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
		</c:forEach>

		<!-- page nav-->
		<div class="d-flex justify-content-center mt-5">
			<nav aria-label="Page navigation example">
				<ul class="pagination justify-content-center">
					<%-- 처음으로 보여주기 여부 --%>
					<c:if test="${pagination.showFirst}">
						<li class="page-item"><a class="page-link" href="?page=1"
							aria-label="First"> <span aria-hidden="true">처음으로</span>
						</a></li>
					</c:if>

					<!-- 이전 목록 보여주기 여부 -->
					<c:if test="${pagination.showPrevious}">
						<li class="page-item"><a class="page-link"
							href="?page=${pagination.previousStartPage}"
							aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
						</a></li>
					</c:if>

					<c:forEach var="i" begin="${pagination.startPage }"
						end="${pagination.endPage }">
						<c:choose>
							<c:when test="${i == pagination.params.requestPage}">
								<li class="page-item active"><a class="page-link"
									style="color: white !important;">${i}</a></li>
							</c:when>
							<c:otherwise>
								<li class="page-item"><a class="page-link"
									href="?page=${i}">${i}</a></li>
							</c:otherwise>
						</c:choose>
					</c:forEach>

					<!-- 다음 목록 보여주기 여부 -->
					<c:if test="${pagination.showNext}">
						<li class="page-item"><a class="page-link"
							href="?page=${pagination.nextStartPage}" aria-label="Next"> <span
								aria-hidden="true">&raquo;</span>
						</a></li>
					</c:if>

					<%-- 마지막으로 보여주기 여부 --%>
					<c:if test="${pagination.showLast}">
						<li class="page-item"><a class="page-link"
							href="?page=${pagination.totalPages}" aria-label="First"> <span
								aria-hidden="true">마지막으로</span>
						</a></li>
					</c:if>
				</ul>
			</nav>
		</div>
	</section>

	<!-- =============== Footer =============== -->
	<jsp:include page="/WEB-INF/views/modules/footer.jsp" />


	<!-- JavaScript Libraries -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
		crossorigin="anonymous"></script>
</body>
</html>