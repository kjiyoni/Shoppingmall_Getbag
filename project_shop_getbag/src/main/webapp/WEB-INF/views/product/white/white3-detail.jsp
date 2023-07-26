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
          <img src="<%=request.getContextPath()%>/img/white/white3-detail1.jpg" alt="" class="product-detail border-bottom-0">
          <img src="<%=request.getContextPath()%>/img/white/white3-detail2.jpg" alt="" class="product-detail border-bottom-0">
          <img src="<%=request.getContextPath()%>/img/white/white3-detail3.jpg" alt="" class="product-detail">
        </div>
        <div class="col-6">
          <div style="margin-left: 15%;">
          	<h3 class="mb-3 mt-4 fw-bold">[BOTTEGA VENETA]&nbsp;&nbsp;스트랩 카세트백</h3>
            <h5 class="fw-bold mb-5">₩ 3,000,000</h5>
            <ul class="mb-5">
            	<li>가죽 소재를 인트레치오 위빙으로 완성한 스몰 크로스바디 백</li>
            	<li>한 개의 내부 지퍼 포켓</li>
            	<li>자석 잠금장치</li>
            	<li>안감: 양가죽 소재를 덧댄 인트레치오</li>
            	<li>컬러: 화이트</li>
            	<li>하드웨어: 골드 마감</li>
            	<li>제조국: 이탈리아</li>
            	<li>소재: 100% 램스킨</li>
            	<li>스트랩 드롭: 52cm</li>
            	<li>크기: L12 x H19 x W4cm</li>
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