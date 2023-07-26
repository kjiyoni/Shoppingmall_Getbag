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

  <!-- =============== Sign in =============== -->
  <div class="signUp">
    <div class="container">
      <div class="input-form-backgroud row">
        <div class="input-form col-md-12 mx-auto">
          <h3 class="text-center mb-3 mt-4 fw-bold">로그인</h3>
           <!-- 로그인 에러 메세지 -->
            <c:if test="${not empty errorMessage}">
               <div class="alert alert-danger text-center">${errorMessage}</div>
            </c:if>
          <form class="needs-validation" novalidate action="#" method="post">
            <!-- 아이디 저장(필드값 유무)-->
          	<div class="mb-3">
              <label for="id">* 아이디</label> 
              <input type="text" class="form-control" id="uid" name="id" placeholder="" 
              	<c:if test="${not empty cookie.saveid}"> value="${cookie.saveid.value}" </c:if> 
              	<c:if test="${empty cookie.saveid}"> value="" </c:if> 
              	required>
              <div class="invalid-feedback">이메일을 입력해주세요.</div>
            </div>
            
            <div class="mb-3">
              <label for="passwd">* 비밀번호</label> 
              <input type="password" class="form-control" id="passwd" name="passwd" placeholder="" required>
              <div class="invalid-feedback">비밀번호를 입력해주세요.</div>
            </div>

            <!-- 아이디 저장(체크박스 체크 여부) -->
			<div class="custom-control custom-checkbox">
				<input type="checkbox" class="custom-control-input" id="saveid"
					name="saveid" <c:if test="${not empty cookie.saveid}">checked</c:if>>
				<label class="custom-control-label" for="saveid">아이디 저장</label>
			</div>

            <div class="mb-4"></div>
            <button class="btn btn-simple mb-3" type="submit">로그인하기</button>
            <button class="btn btn-white mb-3" type="submit"><img class="signImg" src="../img/kakaotalk-icon.png" alt="">카카오 계정으로 로그인</button>
            <button class="btn btn-white mb-3" type="submit"><img class="signImg" src="../img/google-icon.png" alt="">구글 계정으로 로그인</button>

            <a href="${request.getContextPath()}/getbag/signup"><div class="already mb-5">계정 만들기</div></a>
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