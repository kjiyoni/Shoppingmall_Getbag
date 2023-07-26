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
          <img src="<%=request.getContextPath()%>/img/brown/brown4-detail1.jpg" alt="" class="product-detail border-bottom-0">
          <img src="<%=request.getContextPath()%>/img/brown/brown4-detail2.jpg" alt="" class="product-detail border-bottom-0">
          <img src="<%=request.getContextPath()%>/img/brown/brown4-detail3.jpg" alt="" class="product-detail">
        </div>
        <div class="col-6">
          <div style="margin-left: 15%;">
          	<h3 class="mb-3 mt-4 fw-bold">[LOEWE]&nbsp;&nbsp;자르디니에르 포켓</h3>
            <h5 class="fw-bold mb-5">₩ 2,200,000</h5>
            <ul class="mb-5">
            	<li>가드너의 양동이 형태에 기반한 카프스킨으로 제작한 버킷 백으로, <br> 
            	로에베 시그니처가 음각 처리되어 있으며 헤링본 코튼 캔버스 소재의 드로우스트링 탑이 있습니다.</li>
            	<li>숄더 백 또는 탑 핸들 백으로 연출 가능</li>
            	<li>탈착 가능한 숄더 스트랩</li>
            	<li>애너그램 양각 처리</li>
            	<li>메탈릭 컬러: 팔라듐</li>
            	<li>제조국: 스페인</li>
            	<li>주요 소재: 카프</li>
            	<li>스트랩 길이: 103 - 123 cm, 무게: 0.23 kg</li>
            	<li>크기: L11 x H15 x W11cm</li>
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