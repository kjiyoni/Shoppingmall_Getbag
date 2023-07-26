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
          <img src="<%=request.getContextPath()%>/img/white/white4-detail1.jpg" alt="" class="product-detail border-bottom-0">
          <img src="<%=request.getContextPath()%>/img/white/white4-detail2.jpg" alt="" class="product-detail border-bottom-0">
          <img src="<%=request.getContextPath()%>/img/white/white4-detail3.jpg" alt="" class="product-detail">
        </div>
        <div class="col-6">
          <div style="margin-left: 15%;">
          	<h3 class="mb-3 mt-4 fw-bold">[LOEWE]&nbsp;&nbsp;스몰 퍼즐 엣지 백</h3>
            <h5 class="fw-bold mb-5">₩ 4,900,000</h5>
            <ul class="mb-5">
            	<li>퍼즐 백은 크리에이티브 디렉터 조나단 앤더슨(Jonathan Anderson)이 로에베에서 처음 만든 데뷔 백입니다. <br>
            	큐브 형태와 정교한 커팅 기술이 퍼즐 백의 독특한 기하학적 라인을 만듭니다. <br>
            	새틴 카프스킨 소재의 이 모노크롬 버전엔 톤을 맞춘 유광 하드웨어와 톤을 맞춘 자카드 스트랩과 포셀린 버니 참이 있습니다. <br>
            	이 백은 리미티드 에디션 컬렉션의 일부이며 고대 중국 도자기의 모노크롬 유약에서 영감을 얻었습니다.</li>
            	<li>스몰 퍼즐 백은 큰 지갑, 휴대폰, 선글라스 케이스 등을 수납할 수 있습니다</li>
            	<li>숄더 백, 크로스 백, 핸드 백으로 연출 가능</li>
            	<li>탈착 및 조절 가능한 숄더 스트랩</li>
            	<li>내부 슬립 포켓 1개</li>
            	<li>스트랩과 퍼스널라이즈드 참으로 커스터마이징 가능</li>
            	<li>톤을 맞춘 헤링본 코튼 캔버스 안감</li>
            	<li>메탈릭 컬러: 골드</li>
            	<li>제조국: 스페인</li>
            	<li>주요 소재: 새틴 카프</li>
            	<li>스트랩 길이: 80 - 135 cm, 무게: 0.58 kg</li>
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