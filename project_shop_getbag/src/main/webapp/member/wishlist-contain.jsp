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


  <!-- =============== WishList Contain =============== -->
  <div class="wish container">
    <div class="d-flex mt-5">
      <h4 class="ms-3 fw-bold"><i class="fas fa-heart"></i>&nbsp;&nbsp;위시리스트</h4>
    </div>
    <hr style="background: black; height: 3px;">
    <div class="wishBox">
      <div class="wishItem mt-5 mb-5 ms-5">
        <div class="row mb-5">
          <div class="col-2">
            <a href="#"><img src="../img/sample1.jpg" alt="" class="wishImg"></a>
          </div>
          <div class="col-7 mt-2">
            <h5 class="fw-bold ms-4">BALENCIAGA</h5>
            <p class="ms-4">BB SOFT 라지 플랩 백</p>
            <p class="fw-bold ms-4">WHITE</p>
          </div>
          <div class="col-3">
            <a href="#"><p class="fw-bold text-end me-5">X</p></a>
          </div>
        </div>

        <div class="row mb-5">
          <div class="col-2">
            <a href="#"><img src="../img/sample2.jpg" alt="" class="wishImg"></a>
          </div>
          <div class="col-7 mt-2">
            <h5 class="fw-bold ms-4">BALENCIAGA</h5>
            <p class="ms-4">BB SOFT 라지 플랩 백</p>
            <p class="fw-bold ms-4">BLACK</p>
          </div>
          <div class="col-3">
            <a href="#"><p class="fw-bold text-end me-5">X</p></a>
          </div>
        </div>

      </div>
      <hr class="mt-4" style="background: black; height: 1.5px; margin-bottom: 10%;">
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