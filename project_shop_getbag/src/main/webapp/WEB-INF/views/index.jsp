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
<script type="text/javascript">
$(document).ready(function() {
    $(".procode").click(function() {
      var procode = $(this).attr("id");
      alert(procode);
      
      window.location.href="product-detail?procode=" + procode;
      
      return false
   });
});
</script>
</head>

<body>
  <!-- =============== Header =============== -->
  <jsp:include page="/WEB-INF/views/modules/header.jsp" />
  

  <!-- =============== Main =============== -->
  <main class="main1">
    <img src="/img/main1.jpg" class="mainImg">
    <div class="mainItems">
      <div class="row">
        <div class="col-3 mainbox p-0">
          <a href="<%=request.getContextPath()%>/getbag/product-detail"><img src="/img/white/white1.jpg" alt="" class="mainItem"></a>
        </div>
        <div class="col-3 mainbox p-0">
          <a href="<%=request.getContextPath()%>/getbag/product-detail"><img src="/img/white/white2.jpg" alt="" class="mainItem"></a>
        </div>
        <div class="col-3 mainbox p-0">
          <a href="<%=request.getContextPath()%>/getbag/product-detail"><img src="/img/white/white3.jpg" alt="" class="mainItem"></a>
        </div>
        <div class="col-3 mainbox p-0">
          <a href="<%=request.getContextPath()%>/getbag/product-detail"><img src="/img/white/white4.jpg" alt="" class="mainItem"></a>
        </div>
      </div>

      <div class="row">
        <div class="col-3 mainbox p-0">
          <a href="<%=request.getContextPath()%>/getbag/product-detail"><img src="/img/yellow/yellow1.jpg" alt="" class="mainItem"></a>
        </div>
        <div class="col-3 mainbox p-0">
          <a href="<%=request.getContextPath()%>/getbag/product-detail"><img src="/img/yellow/yellow2.jpg" alt="" class="mainItem"></a>
        </div>
        <div class="col-3 mainbox p-0">
          <a href="<%=request.getContextPath()%>/getbag/product-detail"><img src="/img/yellow/yellow3.jpg" alt="" class="mainItem"></a>
        </div>
        <div class="col-3 mainbox p-0">
          <a href="<%=request.getContextPath()%>/getbag/product-detail"><img src="/img/yellow/yellow4.jpg" alt="" class="mainItem"></a>
        </div>
      </div>
      </div>
  </main>

  <main class="main2">
    <img src="/img/main2.jpg" class="mainImg">
    <div class="mainItems">
      <div class="row">
        <div class="col-3 mainbox p-0">
          <a href="<%=request.getContextPath()%>/getbag/product-detail"><img src="/img/brown/brown1.jpg" alt="" class="mainItem"></a>
        </div>
        <div class="col-3 mainbox p-0">
          <a href="<%=request.getContextPath()%>/getbag/product-detail"><img src="/img/brown/brown2.jpg" alt="" class="mainItem"></a>
        </div>
        <div class="col-3 mainbox p-0">
          <a href="<%=request.getContextPath()%>/getbag/product-detail"><img src="/img/brown/brown3.jpg" alt="" class="mainItem"></a>
        </div>
        <div class="col-3 mainbox p-0">
          <a href="<%=request.getContextPath()%>/getbag/product-detail"><img src="/img/brown/brown4.jpg" alt="" class="mainItem"></a>
        </div>
      </div>

      <div class="row">
        <div class="col-3 mainbox p-0">
          <a href="<%=request.getContextPath()%>/getbag/product-detail"><img src="/img/black/black1.jpg" alt="" class="mainItem"></a>
        </div>
        <div class="col-3 mainbox p-0">
          <a href="<%=request.getContextPath()%>/getbag/product-detail"><img src="/img/black/black2.jpg" alt="" class="mainItem"></a>
        </div>
        <div class="col-3 mainbox p-0">
          <a href="<%=request.getContextPath()%>/getbag/product-detail"><img src="/img/black/black3.jpg" alt="" class="mainItem"></a>
        </div>
        <div class="col-3 mainbox p-0">
          <a href="<%=request.getContextPath()%>/getbag/product-detail"><img src="/img/black/black4.jpg" alt="" class="mainItem"></a>
        </div>
      </div>
    </div>
  </main>

  <!-- =============== floating =============== -->
  <jsp:include page="/WEB-INF/views/modules/floating.jsp" />

  <!-- =============== Footer =============== -->
  <jsp:include page="/WEB-INF/views/modules/footer.jsp" />


  <!-- JavaScript Libraries -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>