<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<style type="text/css">
#ima {
margin-left: 15px;}

/* Markup */
body,html,head {
  color: #000;
  margin: 0;
  font-family: "Lucida Console", Monaco, monospace;
}


th{ border:1px;
	box-shadow: 1px 1px 1px 1px black;
	border-color : black;
	background-color : #E0E0E0;
	height: 50px;
	opacity:0.8;
 z-index: 1;}

.true {
	background: #CCE5FF;
	opacity: 0.8;
}
.false{
	background: #FFCCCC;
	opacity: 0.8;
	}</style>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

		<table border="1px">
	<h1> TFT 팀의 추천</h1>
			<tr id="champmost">
				<td width="100" style="text-align: center;">주 플레이<br> 챔피언</td>	
				
				<td><img src="resources/newchamp/Sona.jpg" alt="소나"
					width="100" height="100"></td>
				<td><img src="resources/newchamp/Talon.jpg" alt="탈론"
					width="100" height="100"></td>
				<td><img src="resources/newchamp/Nocturne.jpg" alt="녹턴"
					width="100" height="100"></td>
			
			<tr id="champ">
			<td width="100" style="text-align: center;">TFT팀의<br> 추천</td>
				<td><img src="resources/newchamp/Karthus.jpg" alt="카서스"
					width="100" height="100"></td>
				<td><img src="resources/newchamp/Evelynn.jpg" alt="이블린"
					width="100" height="100"></td>
				<td><img src="resources/newchamp/Qiyana.jpg" alt="키아나"
					width="100" height="100"></td>
			</tr></tr>
			</th>
			</table>
			<br>
			<br>
			<br>
			<h1> 최근경기 전적</h1>
			<div id="위치잡기용">
		
				<table border="1">
					<tr id="승패결과잡긴">
						<th width="100px">승패 결과</th>
						<th width="100px">챔피언</th>
						<th width="100px">KDA</th>
						<th width="250px">닉네임</th>
						<th width="150px">LV / G / CS</th>
						<th width="100px">플레이타임</th>
					</tr>
			<tbody id="gamelist">
				
			</tbody>
			</table>
			</div>
	<script type="text/javascript">
		window.onload = function gamelist() {
			$.ajax({
						url : "https://asia.api.riotgames.com/lol/match/v5/matches/by-puuid/pTIXNTmJPvXMXMtdEKwDKeZfnQMolnSFfpalVCmrjez4l1bR2FUqDBG2b9lii-pIErbi12tyO4tpcA/ids?start=0&count=10&api_key=RGAPI-d36b7668-bc35-4d1b-8933-bdb4db728993",
						type : "GET",
						success : function(data) {
							alert(data);
							game(data)
						}
					})

		};
		function game(data) {
			$.each(data,function(i){
			var ingame = data[i];
			var apikey = "RGAPI-d36b7668-bc35-4d1b-8933-bdb4db728993";
			$.ajax({
				type : "GET",
				url : "https://asia.api.riotgames.com/lol/match/v5/matches/"
						+ ingame + '?api_key=' + apikey,
				success : function(result) {
			        var data = result.info.participants; 
					var str = '<TR>';
			        var time = JSON.stringify(data[1].timePlayed)
			        var mtime = time.toHHMMSS();
			            $.each(data, function(i) {
			            var win = change(data[i].win)
			               str += '<TD class='+data[i].win+'>'+win +'</TD><TD ><img src="resources/newchamp/'+ data[i].championName +'.jpg" width="70" height=70 id = "ima"></TD><TD>' +data[i].kills+'/'+data[i].deaths+'/'+data[i].assists +'</TD><TD>' + data[i].summonerName +'</TD><TD>' + data[i].champLevel+ '/'+ data[i].goldEarned +'/' + data[i].totalMinionsKilled +'</TD><TD>' + mtime+'</TD>'
			               str += '</TR>'
			            });
			            $("#gamelist").append(str);
			            $("#gamelist").append("<br>");
			           console.log(str);
			         },
			         error : function(jqXHR, textStatus, errorThrown) {
			            alert("에러발생");
			         }
				})
				})
			}
			String.prototype.toHHMMSS = function () {
			    var myNum = parseInt(this, 10);
			    var hours   = Math.floor(myNum / 3600);
			    var minutes = Math.floor((myNum - (hours * 3600)) / 60);
			    var seconds = myNum - (hours * 3600) - (minutes * 60);

			    if (hours   < 10) {hours   = "0"+hours;}
			    if (minutes < 10) {minutes = "0"+minutes;}
			    if (seconds < 10) {seconds = "0"+seconds;}
			    return hours+':'+minutes+':'+seconds;
			}
			function change(item){
				var data = JSON.stringify(item)
				console.log(typeof data);
				var win ='true';
				var loose = 'false';
				if (data == win){
					return '승리'
				}else{
					return '패배'
				}
			}
	</script>
</body>
</html>