<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://www.mcdelivery.co.kr/kr//static/1607326511470/assets/00/css/main.css">
<link href="../css/template/header.css" rel="stylesheet">
<link href="../css/template/footer.css" rel="stylesheet">

<c:import url="../template/bootStrap.jsp"></c:import>
<style type="text/css">

	.searchWrap{
		width: 900px;
		height: 150px;
		margin: 120px auto 0px auto;
		
	}
	
	#map{
		width: 900px;
		height: 600px;
		margin: 0px auto 250px auto;
		border-radius: 10px;
     }
    #inputStyle{
    	 width: 700px;
		 height: 70px;
    	 border-radius: 70px;
   		 background: #fff;
   		 border: 1px solid #d1d1d1;
   		 color: #292929;
   		 font-size: 18px;
   		 font-weight: bold;
    }
    #btnStyle{
    	 width: 170px;
		 height: 70px;
		 color: #292929;
		 background: #ffbc0d;
		 border: none;
		 border-radius: 70px;
		 font-size: 18px;
		 font-weight: bold;
		 margin-left: 25px;
    }
</style>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
		
		<div class="searchWrap">
			<input type="text" id="inputStyle" placeholder="매장명, 동명, 도로명을 검색해 주세요.">
			<button id="btnStyle">검색하기</button>
		</div>
		
		<div id="map"></div>
		
	<c:import url="../template/footer.jsp"></c:import>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e45050956b17921ffcb625c545f09ffc&libraries=services"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e45050956b17921ffcb625c545f09ffc"></script>
	<script type="text/javascript">
	navigator.geolocation.getCurrentPosition(function(pos) {
	    var latitude = pos.coords.latitude;
	    var longitude = pos.coords.longitude;
	   	kakaomap(latitude,longitude);
	});
	
	function kakaomap(latitude,longitude){
		 var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
			var options = { //지도를 생성할 때 필요한 기본 옵션
				center: new kakao.maps.LatLng(latitude, longitude), //지도의 중심좌표.
				level: 3 //지도의 레벨(확대, 축소 정도)
			};

			var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
			// 마커가 표시될 위치입니다 
			var markerPosition  = new kakao.maps.LatLng(latitude, longitude); 

			// 마커를 생성합니다
			var marker = new kakao.maps.Marker({
			    position: markerPosition
			});

			// 마커가 지도 위에 표시되도록 설정합니다
			marker.setMap(map);
			
		}

	
	$("#btnStyle").click(function(){
			var search=$("#inputStyle").val()+" 맥도날드";
			var infowindow = new kakao.maps.InfoWindow({zIndex:1});

			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			    mapOption = {
			        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
			        level: 3 // 지도의 확대 레벨
			    };  

			// 지도를 생성합니다    
			var map = new kakao.maps.Map(mapContainer, mapOption); 

			// 장소 검색 객체를 생성합니다
			var ps = new kakao.maps.services.Places(); 

			// 키워드로 장소를 검색합니다
			ps.keywordSearch(search, placesSearchCB); 

			// 키워드 검색 완료 시 호출되는 콜백함수 입니다
			function placesSearchCB (data, status, pagination) {
					
			    if (status === kakao.maps.services.Status.OK) {
		             
			        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
			        // LatLngBounds 객체에 좌표를 추가합니다
			        var bounds = new kakao.maps.LatLngBounds();

			        for (var i=0; i<data.length; i++) {
			            displayMarker(data[i]);    
			            bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
			        }       

			        // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
			        map.setBounds(bounds);
			    } 
			}

			// 지도에 마커를 표시하는 함수입니다
			function displayMarker(place) {
			    
			    // 마커를 생성하고 지도에 표시합니다
			    var marker = new kakao.maps.Marker({
			        map: map,
			        position: new kakao.maps.LatLng(place.y, place.x) 
			    });

			    // 마커에 클릭이벤트를 등록합니다
			    kakao.maps.event.addListener(marker, 'click', function() {
			        // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
			        infowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.place_name + '</div>');
			        infowindow.open(map, marker);
			    });
			}
		});
	
	

	

	
		
	
		

			
		
	
	
	</script>
</body>
</html>