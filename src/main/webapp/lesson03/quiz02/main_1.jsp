<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<style>
header {
	height: 50px;
}

.bord {
	padding: 60px;
	border: 1px solid green;
}
</style>

</head>
<body>
	<%
	// 아티스트 정보 

	Map<String, Object> artistInfo = new HashMap<>();
	artistInfo.put("name", "아이유");
	artistInfo.put("debute", 2008);
	artistInfo.put("agency", "EDAM엔터테인먼트");
	artistInfo.put("photo", "http://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/867/444/81867444_1616662460652_1_600x600.JPG");

	// 아이유 노래 리스트 
	List<Map<String, Object>> musicList = new ArrayList<>();

	Map<String, Object> musicInfo = new HashMap<>();
	musicInfo.put("id", 1);
	musicInfo.put("title", "팔레트");
	musicInfo.put("album", "Palette");
	musicInfo.put("singer", "아이유");
	musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
	musicInfo.put("time", 217);
	musicInfo.put("composer", "아이유");
	musicInfo.put("lyricist", "아이유");
	musicList.add(musicInfo);

	musicInfo = new HashMap<>();
	musicInfo.put("id", 2);
	musicInfo.put("title", "좋은날");
	musicInfo.put("album", "Real");
	musicInfo.put("singer", "아이유");
	musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/3/3c/IU_-_Real.jpg");
	musicInfo.put("time", 233);
	musicInfo.put("composer", "이민수");
	musicInfo.put("lyricist", "김이나");
	musicList.add(musicInfo);

	musicInfo = new HashMap<>();
	musicInfo.put("id", 3);
	musicInfo.put("title", "밤편지");
	musicInfo.put("album", "palette");
	musicInfo.put("singer", "아이유");
	musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
	musicInfo.put("time", 253);
	musicInfo.put("composer", "제휘,김희원");
	musicInfo.put("lyricist", "아이유");
	musicList.add(musicInfo);

	musicInfo = new HashMap<>();
	musicInfo.put("id", 4);
	musicInfo.put("title", "삐삐");
	musicInfo.put("album", "삐삐");
	musicInfo.put("singer", "아이유");
	musicInfo.put("thumbnail",
			"https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/111/535/81111535_1539157728291_1_600x600.JPG");
	musicInfo.put("time", 194);
	musicInfo.put("composer", "이종훈");
	musicInfo.put("lyricist", "아이유");
	musicList.add(musicInfo);

	musicInfo = new HashMap<>();
	musicInfo.put("id", 5);
	musicInfo.put("title", "스물셋");
	musicInfo.put("album", "CHAT-SHIRE");
	musicInfo.put("singer", "아이유");
	musicInfo.put("thumbnail",
			"https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/080/724/877/80724877_1445520704274_1_600x600.JPG");
	musicInfo.put("time", 194);
	musicInfo.put("composer", "아이유,이종훈,이채규");
	musicInfo.put("lyricist", "아이유");
	musicList.add(musicInfo);

	musicInfo = new HashMap<>();
	musicInfo.put("id", 6);
	musicInfo.put("title", "Blueming");
	musicInfo.put("album", "Love poem");
	musicInfo.put("singer", "아이유");
	musicInfo.put("thumbnail",
			"https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
	musicInfo.put("time", 217);
	musicInfo.put("composer", "아이유,이종훈,이채규");
	musicInfo.put("lyricist", "아이유");
	musicList.add(musicInfo);

	int id = Integer.parseInt(request.getParameter("id"));
	String name = request.getParameter("name");
	String keyword = request.getParameter("word");
	%>

	<div>
		<jsp:include page="header.jsp"/>
		<section>
			<div class="d-flex align-items-center">
				<b class="mt-3">멜롱차트 최신음악 장르음악 멜롱DJ 뮤직어워드</b>
			</div>
			<h4 class=p-3>곡 정보</h4>
		</section>
	</div>
	
			<%
				Map<String, Object>target = new HashMap<>();
				for (Map<String, Object>item : musicList){
					if ((int)item.get("id") == id || item.get("title").equals(keyword)){
						target = item;
						break;
					}
					
					if (((int)item.get("id") != id) || (keyword != null && keyword.equals(item.get("title")))){
						continue;
					}
				%>
					
				<% 	  
					}
	
				%>
	<div class='row'>
	
		<div class='bord d-flex justify-items-start form-control'>
			<img width="200" src="<%=target.get("thumbnail")%>">
			<div class="ml-3">
				<h3><%=target.get("title")%></h3>
				<span class=text-success><%=target.get("singer") %></span> <br>
				<small> 앨범 <%= target.get("album") %><br> 재생시간 <%=(int)target.get("time") / 60 + "분" + (int)target.get("time") % 60 + "초" %><br>
					작곡가 <%=target.get("composer") %><br> 작사가 <%= target.get("lyricist") %><br>
				</small>
			</div>
				
		</div>
			
</body>
</html>