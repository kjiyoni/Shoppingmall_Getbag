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
          <img src="<%=request.getContextPath()%>/img/brown/brown1-detail1.jpg" alt="" class="product-detail border-bottom-0">
          <img src="<%=request.getContextPath()%>/img/brown/brown1-detail2.jpg" alt="" class="product-detail border-bottom-0">
          <img src="<%=request.getContextPath()%>/img/brown/brown1-detail3.jpg" alt="" class="product-detail">
        </div>
        <div class="col-6">
          <div style="margin-left: 15%;">
          	<h3 class="mb-3 mt-4 fw-bold">[LOEWE] 해먹 컴팩트 백</h3>
            <h5 class="fw-bold mb-5">₩ 4,400,000</h5>
			<ul class="mb-5">
            	<li>해먹 백은 유연한 측면을 느슨하게 풀어서 형태를 바꿀 수 있는 다기능백입니다.<br>
					루프 스트랩을 이용해 가방을 다양한 방법으로 착용할 수 있습니다.<br>
					이 버전은 새틴 카프스킨으로 제작되었으며 LOEWE 자카드 스트랩이 함께 제공됩니다.</li>
            	<li>숄더 백, 크로스 백, 또는 탑 핸들 백으로 연출 가능</li>
            	<li>탈착 및 조절 가능한 스트랩</li>
            	<li>내부 후크 잠금장치</li>
            	<li>외부의 지퍼 포켓 및 내부 슬립 포켓 두 개</li>
            	<li>스트랩과 맞춤형 참으로 직접 꾸밈 가능</li>
            	<li>헤링본 코튼 캔버스 안감</li>
            	<li>애너그램 양각</li>
            	<li>메탈릭 컬러: 골드</li>
            	<li>제조국: 스페인</li>
            	<li>주요 소재: 새틴 카프</li>
            	<li>스트랩 길이: 78 - 85 cm, 핸들 길이: 10 cm, 무게: 0.52 kg</li>
            	<li>크기: L14.4 x H20.8 x W19.5cm</li>
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