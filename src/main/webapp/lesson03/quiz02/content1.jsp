<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!-- bootstrap -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

<%

//아티스트 정보 

 Map<String, Object> artistInfo = new HashMap<>();
 artistInfo.put("name", "아이유");
 artistInfo.put("debute", 2008);
 artistInfo.put("agency", "EDAM엔터테인먼트");
 artistInfo.put("photo", "http://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/867/444/81867444_1616662460652_1_600x600.JPG");


//아이유 노래 리스트 
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
 musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/111/535/81111535_1539157728291_1_600x600.JPG");
 musicInfo.put("time", 194);
 musicInfo.put("composer", "이종훈");
 musicInfo.put("lyricist", "아이유");
 musicList.add(musicInfo);

 musicInfo = new HashMap<>();
 musicInfo.put("id", 5);
 musicInfo.put("title", "스물셋");
 musicInfo.put("album", "CHAT-SHIRE");
 musicInfo.put("singer", "아이유");
 musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/080/724/877/80724877_1445520704274_1_600x600.JPG");
 musicInfo.put("time", 194);
 musicInfo.put("composer", "아이유,이종훈,이채규");
 musicInfo.put("lyricist", "아이유");
 musicList.add(musicInfo);

 musicInfo = new HashMap<>();
 musicInfo.put("id", 6);
 musicInfo.put("title", "Blueming");
 musicInfo.put("album", "Love poem");
 musicInfo.put("singer", "아이유");
 musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
 musicInfo.put("time", 217);
 musicInfo.put("composer", "아이유,이종훈,이채규");
 musicInfo.put("lyricist", "아이유");
 musicList.add(musicInfo);
%>
<style>
	.main{border: 1px soild green}
</style>
<div class="content1">
	<div class="main d-flex">
		<%
		Map<String, Object> target = new HashMap<>();
			int id = Integer.parseInt(request.getParameter("id"));
			for(int i = 0; i < musicList.size(); i++){
				Map<String, Object> item = musicList.get(i);
					
					
		%>
		
			<img
				src=<%=item.get("thumbnail") %> alt=""  width="200"/>

		<div class="ml-3">
			<div class="display-4 "><%=item.get("title") %></div>
			<div class="text-success"> <%=item.get("singer") %></div>
			<div>앨범  <%= item.get("album") %> </div>
			<div>재생시간 <%= item.get("time") %> </div>
			<div>작곡가  <%= item.get("composer") %> </div>
			<div>작사가  <%= item.get("lyricist") %> </div>
		</div>
		
		
		
	</div>
		<%
					
			}
		
		%>
	<div>
		<h2>가사</h2>
		<hr>
		<b>가사정보 없음</b>
	</div>
</div>