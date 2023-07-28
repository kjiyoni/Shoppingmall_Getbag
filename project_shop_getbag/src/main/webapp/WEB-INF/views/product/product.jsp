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
<link href="<%=request.getContextPath()%>/css/bootstrap.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="<%=request.getContextPath()%>/css/style.css" rel="stylesheet">

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>

<script type="text/javascript">
$(document).ready(function() {
    $(".procode").click(function() {
      var procode = $(this).attr("id");
      
      window.location.href="product-detail?procode=" + procode;
      
      return false
   });
});

</script>
</head>

<body>
	<!-- =============== Header =============== -->
  <jsp:include page="/WEB-INF/views/modules/header.jsp" />
  

  <!-- =============== Product =============== -->
  <div class="product">
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
          <a href="<%=request.getContextPath()%>/getbag/product-detail" class="procode" id="wh1">
          <img src="<%=request.getContextPath()%>/img/white/white1.jpg" alt="" class="productItem border-top border-bottom border-end"></a>
          <div class="product">
            <p class="mt-3">[BALENCIAGA]&nbsp;&nbsp;BB SOFT 라지 플랩 백</p>
            <p>₩ 4,075,000</p>
          </div>
        </div>
        <div class="col-3 p-0">
          <a href="<%=request.getContextPath()%>/getbag/product-detail" class="procode" id="wh2">
          <img src="<%=request.getContextPath()%>/img/white/white2.jpg" alt="" class="productItem border-top border-bottom border-end"></a>
          <div class="product">
            <p class="mt-3">[JACQUEMUS]&nbsp;&nbsp;Le grand Bambino</p>
            <p>₩ 1,300,000</p>
          </div>
        </div>
        <div class="col-3 p-0">
          <a href="<%=request.getContextPath()%>/getbag/product-detail" class="procode" id="wh3">
          <img src="<%=request.getContextPath()%>/img/white/white3.jpg" alt="" class="productItem border-top border-bottom border-end"></a>
          <div class="product">
            <p class="mt-3">[BOTTEGA VENETA]&nbsp;&nbsp;스트랩 카세트백</p>
            <p>₩ 3,000,000</p>
          </div>
        </div>
        <div class="col-3 p-0">
          <a href="<%=request.getContextPath()%>/getbag/product-detail" class="procode" id="wh4">
          <img src="<%=request.getContextPath()%>/img/white/white4.jpg" alt="" class="productItem border-top border-bottom border-end"></a>
          <div class="product">
            <p class="mt-3">[LOEWE]&nbsp;&nbsp;스몰 퍼즐 엣지 백</p>
            <p>₩ 4,900,000</p>
          </div>
        </div>
      </div>

      <div class="row mt-3">
        <div class="col-3 p-0">
          <a href="<%=request.getContextPath()%>/getbag/product-detail" class="procode" id="yw1">
          <img src="<%=request.getContextPath()%>/img/yellow/yellow1.jpg" alt="" class="productItem border-top border-bottom border-end"></a>
          <div class="product">
            <p class="mt-3">[LOEWE]&nbsp;&nbsp;미니 게이트 듀얼 백</p>
            <p>₩ 2,700,000</p>
          </div>
        </div>
        <div class="col-3 p-0">
          <a href="<%=request.getContextPath()%>/getbag/product-detail" class="procode" id="yw2">
          <img src="<%=request.getContextPath()%>/img/yellow/yellow2.jpg" alt="" class="productItem border-top border-bottom border-end"></a>
          <div class="product">
            <p class="mt-3">[LOEWE]&nbsp;&nbsp;미니 퍼즐 폴드 토트</p>
            <p>₩ 2,100,000</p>
          </div>
        </div>
        <div class="col-3 p-0">
          <a href="<%=request.getContextPath()%>/getbag/product-detail" class="procode" id="yw3">
          <img src="<%=request.getContextPath()%>/img/yellow/yellow3.jpg" alt="" class="productItem border-top border-bottom border-end"></a>
          <div class="product">
            <p class="mt-3">[BOTTEGA VENETA]&nbsp;&nbsp;스몰 안디아모</p>
            <p>₩ 5,380,000</p>
          </div>
        </div><div class="col-3 p-0">
          <a href="<%=request.getContextPath()%>/getbag/product-detail" class="procode" id="yw4">
          <img src="<%=request.getContextPath()%>/img/yellow/yellow4.jpg" alt="" class="productItem border-top border-bottom border-end"></a>
          <div class="product">
            <p class="mt-3">[BOTTEGA VENETA]&nbsp;&nbsp;캔디 조디</p>
            <p>₩ 2,140,000</p>
          </div>
        </div>
      </div>

      <div class="row mt-3">
        <div class="col-3 p-0">
          <a href="<%=request.getContextPath()%>/getbag/product-detail" class="procode" id="br1">
          <img src="<%=request.getContextPath()%>/img/brown/brown1.jpg" alt="" class="productItem border-top border-bottom border-end"></a>
          <div class="product">
            <p class="mt-3">[LOEWE]&nbsp;&nbsp;해먹 컴팩트 백</p>
            <p>₩ 4,400,000</p>
          </div>
        </div>
        <div class="col-3 p-0">
          <a href="<%=request.getContextPath()%>/getbag/product-detail" class="procode" id="br2">
          <img src="<%=request.getContextPath()%>/img/brown/brown2.jpg" alt="" class="productItem border-top border-bottom border-end"></a>
          <div class="product">
            <p class="mt-3">[LOEWE]&nbsp;&nbsp;라지 엘리펀트 백</p>
            <p>₩ 3,300,000</p>
          </div>
        </div>
        <div class="col-3 p-0">
          <a href="<%=request.getContextPath()%>/getbag/product-detail" class="procode" id="br3">
          <img src="<%=request.getContextPath()%>/img/brown/brown3.jpg" alt="" class="productItem border-top border-bottom border-end"></a>
          <div class="product">
            <p class="mt-3">[LOEWE]&nbsp;&nbsp;브레이슬릿 파우치</p>
            <p>₩ 2,100,000</p>
          </div>
        </div>
        <div class="col-3 p-0">
          <a href="<%=request.getContextPath()%>/getbag/product-detail" class="procode" id="br4">
          <img src="<%=request.getContextPath()%>/img/brown/brown4.jpg" alt="" class="productItem border-top border-bottom border-end"></a>
          <div class="product">
            <p class="mt-3">[LOEWE]&nbsp;&nbsp;자르디니에르 포켓</p>
            <p>₩ 2,200,000</p>
          </div>
        </div>
      </div>

      <div class="row mt-3">
        <div class="col-3 p-0">
          <a href="<%=request.getContextPath()%>/getbag/product-detail" class="procode" id="bk1">
          <img src="<%=request.getContextPath()%>/img/black/black1.jpg" alt="" class="productItem border-top border-bottom border-end"></a>
          <div class="product">
            <p class="mt-3">[BALENCIAGA]&nbsp;&nbsp;BB SOFT 라지 플랩 백</p>
            <p>₩ 4,075,000</p>
          </div>
        </div>
        <div class="col-3 p-0">
          <a href="<%=request.getContextPath()%>/getbag/product-detail" class="procode" id="bk2">
          <img src="<%=request.getContextPath()%>/img/black/black2.jpg" alt="" class="productItem border-top border-bottom border-end"></a>
          <div class="product">
            <p class="mt-3">[JACQUEMUS]&nbsp;&nbsp;Le grand Bambino</p>
            <p>₩ 1,300,000</p>
          </div>
        </div>
        <div class="col-3 p-0">
          <a href="<%=request.getContextPath()%>/getbag/product-detail" class="procode" id="bk3">
          <img src="<%=request.getContextPath()%>/img/black/black3.jpg" alt="" class="productItem border-top border-bottom border-end"></a>
          <div class="product">
            <p class="mt-3">[BOTTEGA VENETA]&nbsp;&nbsp;스트랩 카세트백</p>
            <p>₩ 3,000,000</p>
          </div>
        </div>
        <div class="col-3 p-0">
          <a href="<%=request.getContextPath()%>/getbag/product-detail" class="procode" id="bk4">
          <img src="<%=request.getContextPath()%>/img/black/black4.jpg" alt="" class="productItem border-top border-bottom border-end"></a>
          <div class="product">
            <p class="mt-3">[LOEWE]&nbsp;&nbsp;스몰 퍼즐 백 - 새틴 카프스킨</p>
            <p>₩ 5,100,000</p>
          </div>
        </div>
      </div>
      <br>
	</div>
  </div>
  
  <!-- =============== floating =============== -->
  <jsp:include page="/WEB-INF/views/modules/floating.jsp" />
  
  <!-- =============== Footer =============== -->
  <jsp:include page="/WEB-INF/views/modules/footer.jsp" />


	<!-- JavaScript/jQuery Libraries -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
		
</body>
</html>