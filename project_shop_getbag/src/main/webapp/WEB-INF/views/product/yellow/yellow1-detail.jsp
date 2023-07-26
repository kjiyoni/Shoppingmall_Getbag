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
          <img src="<%=request.getContextPath()%>/img/yellow/yellow1-detail1.jpg" alt="" class="product-detail border-bottom-0">
          <img src="<%=request.getContextPath()%>/img/yellow/yellow1-detail2.jpg" alt="" class="product-detail border-bottom-0">
          <img src="<%=request.getContextPath()%>/img/yellow/yellow1-detail3.jpg" alt="" class="product-detail">
        </div>
        <div class="col-6">
          <div style="margin-left: 15%;">
          	<h3 class="mb-3 mt-4 fw-bold">[LOEWE]&nbsp;&nbsp;미니 게이트 듀얼 백</h3>
            <h5 class="fw-bold mb-5">₩ 2,700,000</h5>
            <ul class="mb-5">
            	<li>소프트 카프스킨 소재로 세심하게 제작된 미니 게이트 듀얼 백은 매듭을 지은 새들스티치 가죽 스트랩과 <br>
            	가방의 이름을 따온 측면 래치 메탈핀을 통해 로에베의 비할 데 없는 가죽 장인 정신을 보여줍니다. <br>
            	이 미니버전의 탈착 가능한 카프스킨 및 자카드 숄더 스트랩에는 반복되는 LOEWE 패턴이 있습니다.</li>
            	<li>숄더 백 또는 크로스 백, 슬링 또는 벨트 백으로 연출 가능</li>
            	<li>탈착 및 조절 가능한 숄더 스트랩</li>
            	<li>매듭 벨트 아래로 당겨서 단단하게 고정하는 전면 플랩</li>
            	<li>2개의 내부 슬립 포켓</li>
            	<li>퍼스널라이제이션 참으로 커스터마이징 가능</li>
            	<li>골드 스웨이드 안감</li>
            	<li>엠보싱 애너그램</li>
            	<li>메탈릭 컬러: 골드</li>
            	<li>제조국: 스페인</li>
            	<li>주요 소재: 소프트 카프/자카드</li>
            	<li>스트랩 길이: 63 - 104 cm, 무게: 0.36 kg</li>
            	<li>크기: L21 x H12.5 x W9.5cm</li>
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