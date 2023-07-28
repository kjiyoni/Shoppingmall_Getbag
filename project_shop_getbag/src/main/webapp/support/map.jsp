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
  

  <!-- =============== Map =============== -->
  <div class="map d-flex justify-content-center mt-5">
    <div class="me-5">
    <div class="mt-3">
      <h4 class="ms-3 fw-bold">매장 찾기</h4>
    </div> 
    <div class="mapbox text-center">
      <div>
        <h5 class="text-start mb-0 p-5 ps-3 fw-bold">서울특별시 노원구 상계로64 화랑빌딩</h5>
      </div>
      <div class="">
        <h5 class="text-start mb-0 p-5 ps-3 fw-bold" style="border-top: 2px solid rgba(0, 0, 0, 0.3);">02-000-0000</h5>
      </div>
    </div>
  </div>
  <div class="mb-5" id="map" style="width:600px;height:400px;"></div>
</div>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=67a8ec9b4fba859b7f3b4dbee9037419"></script>
    <script>
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
      mapOption = { 
          center: new kakao.maps.LatLng(37.65579137633598 , 127.06227801821026 ), // 지도의 중심좌표
          level: 3 // 지도의 확대 레벨
      };
  
  var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
  
  // 지도를 클릭한 위치에 표출할 마커입니다
  var marker = new kakao.maps.Marker({ 
      // 지도 중심좌표에 마커를 생성합니다 
      position: map.getCenter() 
  }); 
  // 지도에 마커를 표시합니다
  marker.setMap(map);
  
  //마커 위에 표시할 인포윈도우를 생성한다
  var infowindow = new kakao.maps.InfoWindow({
       map: map,
       content: '<div style="width:150px;text-align:center;padding:5px;"><strong>GETBAG</strong></div>',
       disableAutoPan: true
   });   
  
  // 인포윈도우를 지도에 표시한다
  infowindow.open(map, marker);
  
  // 지도에 클릭 이벤트를 등록합니다
  // 지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
  kakao.maps.event.addListener(map, 'click', function(mouseEvent) {        
      
      // 클릭한 위도, 경도 정보를 가져옵니다 
      var latlng = mouseEvent.latLng; 
      
      // 마커 위치를 클릭한 위치로 옮깁니다
      marker.setPosition(latlng);
      
      var message = '클릭한 위치의 위도는 ' + latlng.getLat() + ' 이고, ';
      message += '경도는 ' + latlng.getLng() + ' 입니다';
      
      var resultDiv = document.getElementById('clickLatlng'); 
      resultDiv.innerHTML = message;
      
  });
    </script>

  

  <!-- =============== Footer =============== -->
  <jsp:include page="/modules/footer.jsp" />


	<!-- JavaScript Libraries -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
  
  <!-- API -->
  <script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=67a8ec9b4fba859b7f3b4dbee9037419"></script>
</body>
</html>