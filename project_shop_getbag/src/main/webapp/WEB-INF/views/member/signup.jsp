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
  

  <!-- =============== Sign up =============== -->
  <div class="signUp">
    <div class="container">
      <div class="input-form-backgroud row">
        <div class="input-form col-md-12 mx-auto">
          <h3 class="text-center mb-3 mt-4 fw-bold">회원가입</h3>
          <form class="needs-validation" novalidate action="#" method="post">
            <div class="mb-3">
                <label for="name">* 이름</label>
                <input type="text" class="form-control" id="uname" name="name" placeholder="" value="" required>
                <div class="invalid-feedback">이름을 입력해주세요.</div>
            </div>

            <div class="mb-3">
              <label for="birth">생년월일</label> 
              <input type="text" class="form-control" id="birth" name="birth" placeholder="YYYY-MM-DD" required>
              <div class="invalid-feedback">생년월일을 입력해주세요.</div>
            </div>
            
            <div class="mb-3">
              <label for="id">* 아이디</label> 
              <input type="id" class="form-control" id="uid" name="id" placeholder="" required>
              <div class="invalid-feedback">비밀번호를 입력해주세요.</div>
            </div>
            
            <div class="mb-3">
              <label for="passwd">* 비밀번호</label> 
              <input type="password" class="form-control" id="passwd" name="passwd" placeholder="" required>
              <div class="invalid-feedback">비밀번호를 입력해주세요.</div>
            </div>

            <div class="custom-control custom-checkbox">
              <input type="checkbox" class="custom-control-input" id="aggrement"
                required> <label class="custom-control-label" for="aggrement">개인정보 수집 및 이용에 동의합니다.</label>
            </div>
            <div class="mb-4"></div>
            <button class="btn btn-simple mb-3" type="submit">가입완료</button>
            <a href="<%=request.getContextPath()%>/getbag/signin"><div class="already mb-5">이미 계정이 있습니까?<br>로그인</div></a>
          </form>
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