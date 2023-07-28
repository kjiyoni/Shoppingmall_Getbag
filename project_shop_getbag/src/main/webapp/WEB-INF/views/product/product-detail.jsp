<%@ page import="getbag.shopping.domain.product.dto.Product"%>
<%@ page import="getbag.shopping.domain.common.factory.ServiceFactory"%>
<%@ page import="getbag.shopping.domain.product.service.ProductService"%>
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
<link href="/css/bootstrap.css" rel="stylesheet">
<link href="/css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="/css/style.css" rel="stylesheet">
</head>

<body>
	<!-- =============== Header =============== -->
	<jsp:include page="/WEB-INF/views/modules/header.jsp" />

	<!-- =============== Product-value =============== -->
	<%
	String procode = request.getParameter("procode");
	ProductService productService = ServiceFactory.getInstance().getProductService();

	Product product = productService.readNumProduct(procode);

	String pimageqty = product.getPimageqty();
	String[] pimages = pimageqty.split(",");
	%>

	<!-- =============== Product-detail =============== -->
	<div class="productDetail">
		<div class="container">
			<div class="row">
				<div class="col-6 mb-5" style="margin-top: 10%;">
					<h5 class="mb-4 ms-3">
						홈페이지 > 상품 >
						<%=product.getCategory()%></h5>
					<img
						src="<%=request.getContextPath()%>/img/<%=product.getColor()%>/<%=pimages[0]%>"
						alt="" class="product-detail border-bottom-0"> <img
						src="<%=request.getContextPath()%>/img/<%=product.getColor()%>/<%=pimages[1]%>"
						alt="" class="product-detail border-bottom-0"> <img
						src="<%=request.getContextPath()%>/img/<%=product.getColor()%>/<%=pimages[2]%>"
						alt="" class="product-detail">
				</div>
				<div class="col-6" style="margin-top: 12%;">
					<div style="margin-left: 15%;">
						<h3 class="mb-3 mt-4 fw-bold">
							[<%=product.getBrand()%>]&nbsp;&nbsp;<%=product.getPname()%></h3>
						<h5 class="fw-bold mb-5">
							₩
							<%=product.getPrice()%></h5>
						<ul class="mb-5">
							<%=product.getDescription()%>
						</ul>
						<form name="addForm1"
							action="/getbag/basket-action?id=<%=product.getPid()%>"
							method="post">
							<a href="#"><button class="btn btn-simple mb-3"
									onclick="addToBasket()">장바구니에 추가</button></a>
						</form>
						<form name="addForm2"
							action="/getbag/wish-action?id=<%=product.getPid()%>"
							method="post">
							<a href="#"><button class="btn btn-white mb-3"
									onclick="addToWish()">위시리스트에 추가</button></a>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- =============== floating =============== -->
	<jsp:include page="/WEB-INF/views/modules/floating.jsp" />

	<!-- =============== Footer =============== -->
	<jsp:include page="/WEB-INF/views/modules/footer.jsp" />

	<!-- JavaScript Libraries -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

	<script>
		function addToBasket() {
			if (confirm('해당 상품을 장바구니에 추가하시겠습니까?')) {
				document.getElementById('addForm1').submit();
			} else {
				document.getElementById('addForm1').reset();
			}
		}

		function addToWish() {
			if (confirm('해당 상품을 위시리스트에 추가하시겠습니까?')) {
				document.getElementById('addForm2').submit();
			} else {
				document.getElementById('addForm2').reset();
			}
		}
	</script>
</body>
</html>