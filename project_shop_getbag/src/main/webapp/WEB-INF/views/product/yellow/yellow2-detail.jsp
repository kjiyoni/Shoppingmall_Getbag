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
          <img src="<%=request.getContextPath()%>/img/yellow/yellow2-detail1.jpg" alt="" class="product-detail border-bottom-0">
          <img src="<%=request.getContextPath()%>/img/yellow/yellow2-detail2.jpg" alt="" class="product-detail border-bottom-0">
          <img src="<%=request.getContextPath()%>/img/yellow/yellow2-detail3.jpg" alt="" class="product-detail">
        </div>
        <div class="col-6">
          <div style="margin-left: 15%;">
          	<h3 class="mb-3 mt-4 fw-bold">[LOEWE]&nbsp;&nbsp;미니 퍼즐 폴드 토트</h3>
            <h5 class="fw-bold mb-5">₩ 2,100,000</h5>
			<ul class="mb-5">
            	<li>퍼즐 폴드 토트는 아이코닉한 백의 시그니처와 같은 기하학적인 라인이 돋보이고,<br>
            	이를 완전히 납작하게 접을 수 있도록 그래픽적이고 구조적인 패널로 재해석하여 여행 시 완벽한 동반자가 되어 줍니다.<br>
            	부드럽고, 가볍고, 독창적인 제작 기술이 돋보이는 이 제품에는 절제된 로에베 브랜드 디테일이 자리 잡고 있습니다. <br>
            	미니 버전은 샤이니 카프스킨 소재로 제작되었습니다.</li>
            	<li>숄더 백, 크로스 백 또는 핸드 백으로 연출 가능</li>
            	<li>탈착 및 조절 가능한 스트랩</li>
            	<li>스웨이드 안감</li>
            	<li>로에베 양각 골드</li>
            	<li>메탈릭 컬러: 골드</li>
            	<li>제조국: 스페인</li>
            	<li>주요 소재: 샤이니 카프</li>
            	<li>스트랩 길이: 99 - 114 cm, 핸들 길이: 14 cm, 무게: 0.2 kg</li>
            	<li>크기: L16.5 x H20 x W9.5cm</li>
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