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
          <img src="<%=request.getContextPath()%>/img/black/black4-detail1.jpg" alt="" class="product-detail border-bottom-0">
          <img src="<%=request.getContextPath()%>/img/black/black4-detail2.jpg" alt="" class="product-detail border-bottom-0">
          <img src="<%=request.getContextPath()%>/img/black/black4-detail3.jpg" alt="" class="product-detail">
        </div>
        <div class="col-6">
          <div style="margin-left: 15%;">
          	<h3 class="mb-3 mt-4 fw-bold">[LOEWE]&nbsp;&nbsp;스몰 퍼즐 백 - 새틴 카프스킨</h3>
            <h5 class="fw-bold mb-5">₩ 5,100,000</h5>
            <ul class="mb-5">
            	<li>퍼즐 백은 크리에이티브 디렉터 조나단 앤더슨(Jonathan Anderson)이 로에베에서 처음 만든 데뷔 백입니다. <br> 
            	큐브 형태와 정교한 커팅 기술이 퍼즐 백의 독특한 기하학적 라인을 만듭니다. <br> 
            	이 스몰 버전은 새틴 카프스킨 소재로 제작되었으며,
            	탈착 가능한 로에베 자카드 스트랩과 함께 제공됩니다.</li>
            	<li>스몰 퍼즐은 큰 지갑, 모든 휴대폰 및 선글라스를 수납할 수 있습니다.</li>
            	<li>숄더 백, 크로스 백, 탑 핸들 백 또는 클러치로 연출 가능</li>
            	<li>탈착 및 조절 가능한 숄더 스트랩</li>
            	<li>카프스킨 손잡이가 있는 지퍼 잠금장치</li>
            	<li>외부의 후면 지퍼 포켓 및 내부 슬립 포켓 1개</li>
            	<li>스트랩과 참 장식으로 맞춤 제작 가능</li>
            	<li>헤링본 코튼 캔버스 안감</li>
            	<li>애너그램 양각 처리</li>
            	<li>메탈릭 컬러: 팔라듐</li>
            	<li>제조국: 스페인</li>
            	<li>주요 소재: 새틴 카프</li>
            	<li>스트랩 길이: 101 - 111 cm, 핸들 길이: 7 cm, 무게: 0.57 kg</li>
            	<li>크기: L24 x H16.5 x W10.5cm</li>
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