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
          <img src="<%=request.getContextPath()%>/img/brown/brown3-detail1.jpg" alt="" class="product-detail border-bottom-0">
          <img src="<%=request.getContextPath()%>/img/brown/brown3-detail2.jpg" alt="" class="product-detail border-bottom-0">
          <img src="<%=request.getContextPath()%>/img/brown/brown3-detail3.jpg" alt="" class="product-detail">
        </div>
        <div class="col-6">
          <div style="margin-left: 15%;">
          	<h3 class="mb-3 mt-4 fw-bold">[LOEWE]&nbsp;&nbsp;브레이슬릿 파우치</h3>
            <h5 class="fw-bold mb-5">₩ 2,100,000</h5>
            <ul class="mb-5">
            	<li>플리츠 나파 램스킨 소재의 다용도 튜블러 파우치로, 팔찌로 연출 가능합니다. <br> 
            	양쪽 끝 부분은 램스킨 양각 판으로 마무리되었습니다.</li>
            	<li>스터드 잠금장치가 있는 탈착 및 조절 가능한 스트랩</li>
            	<li>톤을 맞춘 손잡이가 달린 지퍼 잠금장치</li>
            	<li>안감 없음</li>
            	<li>애너그램 인그레이빙</li>
            	<li>메탈릭 컬러: 골드</li>
            	<li>제조국: 스페인</li>
            	<li>주요 소재: 플리츠 나파</li>
            	<li>스트랩 길이: 54 - 97.5 cm, 무게: 0.28 kg</li>
            	<li>크기: L25 x H10 x W10cm</li>
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