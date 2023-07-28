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
	<jsp:include page="/modules/header.jsp" />

  <!-- =============== Sign in =============== -->
  <div class="signUp">
    <div class="container">
      <div class="input-form-backgroud row">
        <div class="input-form col-md-12 mx-auto">
          <h3 class="text-center mb-3 mt-4 fw-bold">로그인</h3>
          <form class="needs-validation" novalidate action="#" method="post"><div class="mb-3">
              <label for="email">* 이메일</label> 
              <input type="email" class="form-control" id="uemail" name="email" placeholder="example@example.com" required>
              <div class="invalid-feedback">이메일을 입력해주세요.</div>
            </div>
            
            <div class="mb-3">
              <label for="passwd">* 비밀번호</label> 
              <input type="password" class="form-control" id="passwd" name="passwd" placeholder="" required>
              <div class="invalid-feedback">비밀번호를 입력해주세요.</div>
            </div>

            <a href="#"><div class="find mb-3">아이디/비밀번호 찾기</div></a>

            <div class="mb-4"></div>
            <button class="btn btn-simple mb-3" type="submit">로그인하기</button>
            <button class="btn btn-white mb-3" type="submit"><img class="signImg" src="../img/kakaotalk-icon.png" alt="">카카오 계정으로 로그인</button>
            <button class="btn btn-white mb-3" type="submit"><img class="signImg" src="../img/google-icon.png" alt="">구글 계정으로 로그인</button>

            <a href="<%=request.getContextPath()%>/member/signup.jsp"><div class="already mb-5">계정 만들기</div></a>
          </form>
        </div>
      </div>
  </div>
  </div>
  

  <!-- =============== Footer =============== -->
  <jsp:include page="/modules/footer.jsp" />

	<!-- JavaScript Libraries -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>