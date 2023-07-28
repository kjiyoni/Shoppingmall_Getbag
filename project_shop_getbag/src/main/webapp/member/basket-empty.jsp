<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<!-- Icon -->
<link href="img/favicon.ico" rel="icon">

<!-- BootStrap -->
<link href="../css/bootstrap.css" rel="stylesheet">
<link href="../css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="../css/style.css" rel="stylesheet">
</head>

<body>
	<!-- =============== Header =============== -->
  <jsp:include page="/modules/header.jsp" />


  <!-- =============== Basket Empty =============== -->
  <div class="basket container">
    <div class="d-flex mt-5">
      <h4 class="ms-3 fw-bold"><i class="fas fa-shopping-cart"></i>&nbsp;&nbsp;장바구니 (0)</h4>
    </div>
    <hr style="background: black; height: 3px;">
    <div class="basketbox text-center">
      <h2 class="mb-3 fw-bold" style="margin-top: 10%;">장바구니에 담긴 상품이 없습니다.</h2>
      <h5 class="mb-5">원하시는 가방을 지금 담아보세요!</h5>
      <a href="#"><button class="btn btn-simple" style="width: 40%; margin-bottom: 10%;" >쇼핑 계속하기</button></a>
      <hr style="background: black; height: 1.5px; margin-bottom: 10%;">
    </div>
  </div>
  </div>


	<!-- =============== Footer =============== -->
  <jsp:include page="/modules/footer.jsp" />


	<!-- JavaScript Libraries -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
  <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
</body>
</html>