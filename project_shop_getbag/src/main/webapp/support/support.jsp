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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

</head>

<body>
	<!-- =============== Header =============== -->
	<jsp:include page="/modules/header.jsp" />
  

  <!-- =============== Article(Support) =============== -->
  <section class="support container">
    <div class="border-bottom border-2 border-black mt-5">
      <div class="d-flex align-items-center mb-4">
      <h4 class="mb-0 me-3 fw-bold">고객센터</h4><p class="mb-0 m-1">문의사항을 남겨주시면 빠른 시일 내에 답변해드리도록 하겠습니다.</p>
      </div>
    </div>
  <form action="">
    <div class="p-5">
      <textarea class="form-control border-dark-subtle border-3 p-3" id="exampleFormControlTextarea1" rows="2" placeholder="문의사항을 입력해주세요."></textarea>
      <div class="d-md-flex justify-content-end align-items-center mt-4">
        <input type="submit" value="작성하기" id="sendBtn" class="btn btn-dark btn-sm ps-5 pe-5">
      </div>
    </div>
  </form>
  <div class="border-bottom border-2 border-dark-subtle mt-3 ms-2">
    <div class="d-flex align-items-center mb-4">
    <h5 class="mb-0">문의목록</h5>
    </div>
  </div>  
<!--
  <%-- 게시글 목록 반복 --%>
  <c:forEach items="${list}" var="memo">
    <li class="list-group-item">
    <div class="mb-3 text-end">
      <label class="fs-6">${memo.memberName} | ${memo.writeDate}</label>
      <p class="form-control text-start bg-gray-200">
      ${memo.content}
      </p>
    </div>
  </li>
  </c:forEach>

</ul>
-->

    <!-- Accordion Item 1 -->
  <div class="accordion-item">
    <h2 class="accordion-header" id="flush-headingOne">
      <button class="accordion-button collapsed border-bottom p-4" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
        <p class="mb-0">Q. 로그인이 어렵습니다. 어떻게 하면 될까요?</p>
      </button>
    </h2>
    <div id="flush-collapseOne" class="accordion-collapse collapse lh-lg" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
      <div class="accordion-body p-4">
        <strong>정확한 아이디·비밀번호를 입력했는지 확인</strong><br>
        "가입하지 않은 아이디이거나, 잘못된 비밀번호입니다."라는 문구가 노출되며 로그인이 되지 않는다면, 아이디·비밀번호가 맞지 않거나, 잘못 입력한 경우입니다.
        아래의 내용을 점검하세요. <br>
        1. 아이디는 영문 대문자 입력이 불가하니, 아이디는 영문 소문자로만 입력하세요. <br>
        2. 키보드의 Caps Lock이 눌려 있으면 영문이 대문자로 입력됩니다. <br>
        3. 아이디·비밀번호가 기억나지 않거나 입력한 정보로 계속 로그인이 되지 않는다면 아래 링크를 통해 정확한 아이디·비밀번호 확인 후 로그인 시도하세요.<br>
        <div class="mt-2"><a href="" class="already">아이디 찾기</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="" class="already">비밀번호 찾기</a></div>
      </div>
    </div>
  </div>

  <!-- Accordion Item 2 -->
  <div class="accordion-item">
    <h2 class="accordion-header" id="flush-headingTwo">
      <button class="accordion-button collapsed border-top border-bottom p-4" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
        <p class="mb-0">Q. 주문내역은 어디에서 확인 가능한가요?</p>
      </button>
    </h2>
    <div id="flush-collapseTwo" class="accordion-collapse collapse lh-lg" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
      <div class="accordion-body p-4">
        주문 내역을 확인하려면 <strong>결제 내역 메뉴</strong>로 이동하기만 하면 됩니다. 
        여기에서 구매 날짜 및 주문 상태를 포함한 모든 과거 주문에 대한 자세한 기록을 찾을 수 있습니다. 
        구매 내역을 추적하고 거래에 대한 최신 정보를 확인할 수 있는 편리한 방법입니다. 
        결제 내역 메뉴를 탐색하여 이전 주문에 대해 필요한 모든 정보에 액세스할 수 있습니다. 
        질문이 있거나 추가 지원이 필요한 경우 지원 팀이 항상 대기하고 있습니다! 
      </div>
    </div>
  </div>

  <!-- Accordion Item 3 -->
  <div class="accordion-item">
    <h2 class="accordion-header" id="flush-headingThree">
      <button class="accordion-button collapsed border-top border-bottom p-4" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
        <p class="mb-0">Q. 가능한 결제방식에는 어떤 것이 있나요?</p>
      </button>
    </h2>
    <div id="flush-collapseThree" class="accordion-collapse collapse lh-lg" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
      <div class="accordion-body p-4">결제에 관심을 가져주셔서 감사합니다. 
        소중한 고객의 원활한 결제 경험을 보장하기 위해 안전하고 편리한 다양한 결제 방법을 제공합니다. 
        <strong>신용/직불 카드, PayPal, 은행 송금 등</strong>과 같은 옵션 중에서 선택할 수 있습니다. 
        귀하의 결제 정보는 항상 최고의 보안과 개인 정보로 처리되므로 안심하십시오. 결제 방법에 대한 특정 질문이 있거나 결제 프로세스에 대한 지원이 필요한 경우
        언제든지 지원 팀에 문의하십시오. 번거로움 없이 결제하실 수 있도록 도와드리겠습니다!</div>
    </div>
  </div>
</div>


  <!-- page nav-->
  <div class="d-flex justify-content-center mt-5">
    <nav aria-label="Page navigation example">
      <ul class="pagination">
        <li class="page-item">
          <a class="page-link" href="#" aria-label="Previous">
            <span aria-hidden="true"><strong>&laquo;</strong></span>
          </a>
        </li>
        <li class="page-item active" aria-current="page">
          <a class="page-link" href="#" style="color: white !important;">1</a>
        </li>
        <li class="page-item">
          <a class="page-link" href="#" aria-label="Next">
            <span aria-hidden="true"><strong>&raquo;</strong></span>
          </a>
        </li>
      </ul>
    </nav>
  </div>
  </section>
  

  <!-- =============== Footer =============== -->
  <jsp:include page="/modules/footer.jsp" />


	<!-- JavaScript Libraries -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>
</html>