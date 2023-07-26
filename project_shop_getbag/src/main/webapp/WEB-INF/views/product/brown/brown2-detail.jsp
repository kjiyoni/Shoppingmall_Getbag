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
      <h5 class="mb-4 mt-5 ms-3">홈페이지 > 상품 > 남성</h5>
      <div class="row">
        <div class="col-6 mb-5">
          <img src="<%=request.getContextPath()%>/img/brown/brown2-detail1.jpg" alt="" class="product-detail border-bottom-0">
          <img src="<%=request.getContextPath()%>/img/brown/brown2-detail2.jpg" alt="" class="product-detail border-bottom-0">
          <img src="<%=request.getContextPath()%>/img/brown/brown2-detail3.jpg" alt="" class="product-detail">
        </div>
        <div class="col-6">
          <div style="margin-left: 15%;">
          	<h3 class="mb-3 mt-4 fw-bold">[LOEWE]&nbsp;&nbsp;라지 엘리펀트 백</h3>
            <h5 class="fw-bold mb-5">₩ 3,300,000</h5>
           <ul class="mb-5">
            	<li>클래식 카프스킨 소재의 아름답고 혁신적인 엘리펀트 백입니다.</li>
            	<li>핸드 백 또는 숄더 백으로 연출 가능</li>
            	<li>탈착 및 조절 가능한 숄더 스트랩</li>
            	<li>내부 지퍼 포켓</li>
            	<li>헤링본 코튼 캔버스 안감</li>
            	<li>바닥에 애너그램 양각 처리</li>
            	<li>메탈릭 컬러: 팔라듐</li>
            	<li>제조국: 스페인</li>
            	<li>주요 소재: 클래식 카프</li>
            	<li>스트랩 길이: 116 cm, 핸들 길이: 4 cm, 무게: 0.64 kg</li>
            	<li>크기: L36 x H22 x W26.5cm</li>
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