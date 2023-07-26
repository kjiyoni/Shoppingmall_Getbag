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
          <img src="<%=request.getContextPath()%>/img/white/white1-detail1.jpg" alt="" class="product-detail border-bottom-0">
          <img src="<%=request.getContextPath()%>/img/white/white1-detail2.jpg" alt="" class="product-detail border-bottom-0">
          <img src="<%=request.getContextPath()%>/img/white/white1-detail3.jpg" alt="" class="product-detail">
        </div>
        <div class="col-6">
          <div style="margin-left: 15%;">
          	<h3 class="mb-3 mt-4 fw-bold">[BALENCIAGA]&nbsp;&nbsp;BB SOFT 라지 플랩 백</h3>
            <h5 class="fw-bold mb-5">₩ 4,075,000</h5>
            <ul class="mb-5">
            	<li>피치 송아지 가죽 플랩 백</li>
            	<li>길이 조절 및 탈부착 가능한 크로스 바디 스트랩(드롭: 50cm)</li>
            	<li>탈부착 가능한 숄더 체인 스트랩 (20.3cm)</li>
            	<li>빈티지 실버 BB 로고 장식</li>
            	<li>턴 락 잠금장치</li>
            	<li>메인 수납공간 1개</li>
            	<li>내부 지퍼 포켓 1개</li>
            	<li>거싯 3개</li>
            	<li>코튼 캔버스 안감</li>
            	<li>부드러운 천으로 닦아서 관리</li>
            	<li>제조국: 이탈리아</li>
            	<li>소재: 100% 송아지 가죽</li>
            	<li>크기: L36 x H23.8 x W3cm</li>
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