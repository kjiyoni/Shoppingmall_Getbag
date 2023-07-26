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
<link href="/css/bootstrap.css" rel="stylesheet">
<link href="/css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="/css/style.css" rel="stylesheet">
</head>

<body>
	<!-- =============== Header =============== -->
  <jsp:include page="/WEB-INF/views/modules/header.jsp" />
  

  <!-- =============== Product-detail =============== -->
  <div class="productDetail">
    <div class="container">
      <h5 class="mb-4 mt-5 ms-3">홈페이지 > 상품 > 여성</h5>
      <div class="row">
        <div class="col-6 mb-5">
          <img src="<%=request.getContextPath()%>/img/yellow/yellow3-detail1.jpg" alt="" class="product-detail border-bottom-0">
          <img src="<%=request.getContextPath()%>/img/yellow/yellow3-detail2.jpg" alt="" class="product-detail border-bottom-0">
          <img src="<%=request.getContextPath()%>/img/yellow/yellow3-detail3.jpg" alt="" class="product-detail">
        </div>
        <div class="col-6">
          <div style="margin-left: 15%;">
          	<h3 class="mb-3 mt-4 fw-bold">[BOTTEGA VENETA]&nbsp;&nbsp;스몰 안디아모</h3>
            <h5 class="fw-bold mb-5">₩ 5,380,000</h5>
            <ul class="mb-5">
            	<li>탄력 있는 나파 가죽 소재를 정교한 인트레치아토 위빙으로 완성한 탑 핸들백으로 <br>
            	슬라이딩 크로스 스트랩과 시그니처 놋 디테일이 있음</li>
            	<li>가죽소재를 인트레치아토 위빙으로 완성한 스몰 탑 핸들 백으로 슬라이딩 크로스 스트랩이 있음</li>
            	<li>한 개의 지퍼 포켓과 두 개의 오픈 포켓으로 구분된 내부 공간</li>
            	<li>자석 잠금장치</li>
            	<li>안감: 양가죽 소재를 덧댄 인트레치아토</li>
            	<li>컬러: 아이스크림</li>
            	<li>하드웨어: 브라스 마감</li>
            	<li>핸들 드롭: 8cm</li>
            	<li>스트랩 드롭: 50cm</li>
            	<li>제조국: 이탈리아</li>
            	<li>소재: 100% 램스킨</li>
            	<li>크기: L25 x H22 x W10.5cm</li>
            </ul>
            <a href="#"><button class="btn btn-simple mb-3" type="submit">장바구니에 추가</button></a>
            <a href="#"><button class="btn btn-white mb-3" type="submit">위시리스트에 추가</button></a>
          </div>
        </div>
      </div>
    </div>
  </div>
  

  <!-- =============== Footer =============== -->
  <jsp:include page="/WEB-INF/views/modules/footer.jsp" />


	<!-- JavaScript Libraries -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>