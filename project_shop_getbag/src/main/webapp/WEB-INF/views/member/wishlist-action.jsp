<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="getbag.shopping.domain.product.dto.Product"%>
<%@ page import="getbag.shopping.domain.common.factory.ServiceFactory"%>
<%@ page import="getbag.shopping.domain.product.service.ProductService"%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<% 

String procode = request.getParameter("id");

if (procode == null || procode.trim().equals("")) {
	response.sendRedirect("/getbag/product-detail");
	return;
}

// procode를 이용하여 상품 상세 정보 읽어오기
ProductService productService = ServiceFactory.getInstance().getProductService();
Product product = productService.readNumProduct(procode);


ArrayList<Product> list = (ArrayList<Product>)session.getAttribute("WishList");
if (list == null) {
	list = new ArrayList<>();
}

//모든 상품 가져오기
List<Product> allList = productService.readProduct();

Product prod = new Product();
for (int i = 0; i < allList.size(); i++) {
	prod = allList.get(i);
	if (prod.getPid().equals(procode)) {
		list.add(prod);
		break;
	}
}

session.setAttribute("WishList", list);
response.sendRedirect("/getbag/wish-contain");
%>