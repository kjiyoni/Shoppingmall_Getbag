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
<link href="../css/bootstrap.css" rel="stylesheet">
<link href="../css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="../css/style.css" rel="stylesheet">
</head>

<body>
	<!-- =============== Header =============== -->
	<jsp:include page="/WEB-INF/views/modules/header.jsp" />
  

  <!-- =============== My-page =============== -->
  <div class="myPage">
    <div class="container page">
      <h3 class="text-start mb-3 mt-4 fw-bold">마이페이지</h3>
      <hr class="mb-5" style="background: black; height: 3px;">
      <div class="row">
        <div class="col-md-4 mt-4">
          <img src="../img/profile-user.png" alt="" class="profile">
        </div>
        <div class="col-md-8">
            <h3 class="text-start mb-3 fw-bold">계정 정보</h3>
            <hr class="mb-4" style="background: black; height: 1.5px; width: 90%;">
            <div class="mb-3 ms-4">
              <h4 class="text-start mb-3 fw-bold" style="color: #5B5B5B;">이름</h4>
              <h4 class="text-start mb-4">김기정</h4>
            </div>
            <hr class="mb-4" style="background: black; height: 1.5px; width: 90%;">
            <div class="mb-3 ms-4">
              <h4 class="text-start mb-3 fw-bold" style="color: #5B5B5B;">생년월일</h4>
              <h4 class="text-start mb-4">2000년 2월 2일</h4>
            </div>
            <hr class="mb-4" style="background: black; height: 1.5px; width: 90%;">
            <div class="mb-3 ms-4">
              <h4 class="text-start mb-3 fw-bold" style="color: #5B5B5B;">이메일</h4>
              <h4 class="text-start mb-4">bangry@gmail.com</h4>
            </div>
            <hr style="background: black; height: 1.5px; width: 90%; margin-bottom: 10%;">
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