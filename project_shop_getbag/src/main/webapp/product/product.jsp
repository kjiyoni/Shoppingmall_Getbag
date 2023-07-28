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
  

  <!-- =============== Product =============== -->
  <div class="product mt-5">
    <h3 class="text-center ms-5 fw-bold">BAG</h3>
    <div class="row">
      <div class="col-6">
        <div class="text-start">
          <div class="mb-3 ms-5 fw-bold">16개의 제품</div>
        </div>
      </div>
      <div class="col-6">
        <div class="text-end me-5 mb-3">
          <a href="#" class="me-3">필터</a>
          <a class="border"></a>
          <a href="#" class="ms-3">정렬기준</a>
        </div>
      </div>
    </div>
    
    <div class="productItems">
      <div class="row">
        <div class="col-3 p-0">
          <a href="<%=request.getContextPath()%>/product/product-detail.jsp"><img src="../img/sample1.jpg" alt="" class="productItem border-top border-bottom border-end"></a>
          <div class="product">
            <p class="mt-3">BB SOFT 라지 플랩 백 옵틱 화이트</p>
            <p>₩ 3,145,000</p>
          </div>
        </div>
        <div class="col-3 p-0">
          <a href="<%=request.getContextPath()%>/product/product-detail.jsp"><img src="../img/sample1.jpg" alt="" class="productItem border-top border-bottom border-end"></a>
          <div class="product">
            <p class="mt-3">BB SOFT 라지 플랩 백 옵틱 화이트</p>
            <p>₩ 3,145,000</p>
          </div>
        </div>
        <div class="col-3 p-0">
          <a href="<%=request.getContextPath()%>/product/product-detail.jsp"><img src="../img/sample1.jpg" alt="" class="productItem border-top border-bottom border-end"></a>
          <div class="product">
            <p class="mt-3">BB SOFT 라지 플랩 백 옵틱 화이트</p>
            <p>₩ 3,145,000</p>
          </div>
        </div>
        <div class="col-3 p-0">
          <a href="<%=request.getContextPath()%>/product/product-detail.jsp"><img src="../img/sample1.jpg" alt="" class="productItem border-top border-bottom border-end"></a>
          <div class="product">
            <p class="mt-3">BB SOFT 라지 플랩 백 옵틱 화이트</p>
            <p>₩ 3,145,000</p>
          </div>
        </div>
      </div>

      <div class="row mt-3">
        <div class="col-3 p-0">
          <a href="#"><img src="../img/sample3.jpg" alt="" class="productItem border-top border-bottom border-end"></a>
          <div class="product">
            <p class="mt-3">스몰 퍼즐 엣지 백 - 새틴 카프스킨</p>
            <p>₩ 4,900,000</p>
          </div>
        </div>
        <div class="col-3 p-0">
          <a href="#"><img src="../img/sample3.jpg" alt="" class="productItem border-top border-bottom border-end"></a>
          <div class="product">
            <p class="mt-3">스몰 퍼즐 엣지 백 - 새틴 카프스킨</p>
            <p>₩ 4,900,000</p>
          </div>
        </div>
        <div class="col-3 p-0">
          <a href="#"><img src="../img/sample3.jpg" alt="" class="productItem border-top border-bottom border-end"></a>
          <div class="product">
            <p class="mt-3">스몰 퍼즐 엣지 백 - 새틴 카프스킨</p>
            <p>₩ 4,900,000</p>
          </div>
        </div><div class="col-3 p-0">
          <a href="#"><img src="../img/sample3.jpg" alt="" class="productItem border-top border-bottom border-end"></a>
          <div class="product">
            <p class="mt-3">스몰 퍼즐 엣지 백 - 새틴 카프스킨</p>
            <p>₩ 4,900,000</p>
          </div>
        </div>
      </div>

      <div class="row mt-3">
        <div class="col-3 p-0">
          <a href="#"><img src="../img/sample4.jpg" alt="" class="productItem border-top border-bottom border-end"></a>
          <div class="product">
            <p class="mt-3">스몰 퍼즐 백 - 새틴 카프스킨</p>
            <p>₩ 4,700,000</p>
          </div>
        </div>
        <div class="col-3 p-0">
          <a href="#"><img src="../img/sample4.jpg" alt="" class="productItem border-top border-bottom border-end"></a>
          <div class="product">
            <p class="mt-3">스몰 퍼즐 백 - 새틴 카프스킨</p>
            <p>₩ 4,700,000</p>
          </div>
        </div>
        <div class="col-3 p-0">
          <a href="#"><img src="../img/sample4.jpg" alt="" class="productItem border-top border-bottom border-end"></a>
          <div class="product">
            <p class="mt-3">스몰 퍼즐 백 - 새틴 카프스킨</p>
            <p>₩ 4,700,000</p>
          </div>
        </div>
        <div class="col-3 p-0">
          <a href="#"><img src="../img/sample4.jpg" alt="" class="productItem border-top border-bottom border-end"></a>
          <div class="product">
            <p class="mt-3">스몰 퍼즐 백 - 새틴 카프스킨</p>
            <p>₩ 4,700,000</p>
          </div>
        </div>
      </div>

      <div class="row mt-3">
        <div class="col-3 p-0">
          <a href="#"><img src="../img/sample2.jpg" alt="" class="productItem border-top border-bottom border-end"></a>
          <div class="product">
            <p class="mt-3">BB SOFT 라지 플랩 백 옵틱 블랙</p>
            <p>₩ 3,145,000</p>
          </div>
        </div>
        <div class="col-3 p-0">
          <a href="#"><img src="../img/sample2.jpg" alt="" class="productItem border-top border-bottom border-end"></a>
          <div class="product">
            <p class="mt-3">BB SOFT 라지 플랩 백 옵틱 블랙</p>
            <p>₩ 3,145,000</p>
          </div>
        </div>
        <div class="col-3 p-0">
          <a href="#"><img src="../img/sample2.jpg" alt="" class="productItem border-top border-bottom border-end"></a>
          <div class="product">
            <p class="mt-3">BB SOFT 라지 플랩 백 옵틱 블랙</p>
            <p>₩ 3,145,000</p>
          </div>
        </div>
        <div class="col-3 p-0">
          <a href="#"><img src="../img/sample2.jpg" alt="" class="productItem border-top border-bottom border-end"></a>
          <div class="product">
            <p class="mt-3">BB SOFT 라지 플랩 백 옵틱 블랙</p>
            <p>₩ 3,145,000</p>
          </div>
        </div>
      </div>
      <br>
	</div>
  </div>
  

  <!-- =============== Footer =============== -->
  <jsp:include page="/modules/footer.jsp" />


	<!-- JavaScript Libraries -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>