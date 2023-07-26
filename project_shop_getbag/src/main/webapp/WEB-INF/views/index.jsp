<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<!-- Favicon -->
<link href="/img/favicon.ico" rel="icon">

<!-- BootStrap -->
<link href="/css/bootstrap.css" rel="stylesheet">
<link href="/css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="/css/style.css" rel="stylesheet">
</head>

<body>
  <!-- =============== Header =============== -->
  <jsp:include page="/WEB-INF/views/modules/header.jsp" />
  

  <!-- =============== Main =============== -->
  <main class="main1">
    <img src="/img/main1.jpg" class="mainImg">
    <div class="mainItems">
      <div class="row">
        <div class="col-3 p-0">
          <a href="<%=request.getContextPath()%>/getbag/product-detail-wh1"><img src="/img/white/white1.jpg" alt="" class="mainItem"></a>
        </div>
        <div class="col-3 p-0">
          <a href="<%=request.getContextPath()%>/getbag/product-detail-wh2"><img src="/img/white/white2.jpg" alt="" class="mainItem"></a>
        </div>
        <div class="col-3 p-0">
          <a href="<%=request.getContextPath()%>/getbag/product-detail-wh3"><img src="/img/white/white3.jpg" alt="" class="mainItem"></a>
        </div>
        <div class="col-3 p-0">
          <a href="<%=request.getContextPath()%>/getbag/product-detail-wh4"><img src="/img/white/white4.jpg" alt="" class="mainItem"></a>
        </div>
      </div>
      
      <div class="row">
        <div class="col-3 p-0">
          <a href="<%=request.getContextPath()%>/getbag/product-detail-yw1"><img src="/img/yellow/yellow1.jpg" alt="" class="mainItem"></a>
        </div>
        <div class="col-3 p-0">
          <a href="<%=request.getContextPath()%>/getbag/product-detail-yw2"><img src="/img/yellow/yellow2.jpg" alt="" class="mainItem"></a>
        </div>
        <div class="col-3 p-0">
          <a href="<%=request.getContextPath()%>/getbag/product-detail-yw3"><img src="/img/yellow/yellow3.jpg" alt="" class="mainItem"></a>
        </div>
        <div class="col-3 p-0">
          <a href="<%=request.getContextPath()%>/getbag/product-detail-yw4"><img src="/img/yellow/yellow4.jpg" alt="" class="mainItem"></a>
        </div>
      </div>
    </div>
  </main>

  <main class="main2">
    <img src="/img/main2.jpg" class="mainImg">
    <div class="mainItems">
      <div class="row">
        <div class="col-3 p-0">
          <a href="<%=request.getContextPath()%>/getbag/product-detail-br1"><img src="/img/brown/brown1.jpg" alt="" class="mainItem"></a>
        </div>
        <div class="col-3 p-0">
          <a href="<%=request.getContextPath()%>/getbag/product-detail-br2"><img src="/img/brown/brown2.jpg" alt="" class="mainItem"></a>
        </div>
        <div class="col-3 p-0">
          <a href="<%=request.getContextPath()%>/getbag/product-detail-br3"><img src="/img/brown/brown3.jpg" alt="" class="mainItem"></a>
        </div>
        <div class="col-3 p-0">
          <a href="<%=request.getContextPath()%>/getbag/product-detail-br4"><img src="/img/brown/brown4.jpg" alt="" class="mainItem"></a>
        </div>
      </div>

      <div class="row">
        <div class="col-3 p-0">
          <a href="<%=request.getContextPath()%>/getbag/product-detail-bk1"><img src="/img/black/black1.jpg" alt="" class="mainItem"></a>
        </div>
        <div class="col-3 p-0">
          <a href="<%=request.getContextPath()%>/getbag/product-detail-bk2"><img src="/img/black/black2.jpg" alt="" class="mainItem"></a>
        </div>
        <div class="col-3 p-0">
          <a href="<%=request.getContextPath()%>/getbag/product-detail-bk3"><img src="/img/black/black3.jpg" alt="" class="mainItem"></a>
        </div>
        <div class="col-3 p-0">
          <a href="<%=request.getContextPath()%>/getbag/product-detail-bk4"><img src="/img/black/black4.jpg" alt="" class="mainItem"></a>
        </div>
      </div>
    </div>
  </main>



  <!-- =============== Footer =============== -->
  <jsp:include page="/WEB-INF/views/modules/footer.jsp" />


  <!-- JavaScript Libraries -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>