<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<link
   href="${pageContext.request.contextPath}/resources/css/finalcss.css"
   rel="stylesheet" type="text/css" />
<style type="text/css">
#ima {
margin-left: 15px;}

/* Markup */
body,html,head {
  color: #000;
  margin: 0;
  font-family: "Lucida Console", Monaco, monospace;
}
#where {
 margin-top:50px;
	position: relative;
	left:15%;
	}
#foott{
	top:80%;
}	
#tengg{
	position:relative;
	top:20%;
	left: 15%;
	overflow: auto;
	
	
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
	<script type="text/javascript">
		window.onload = function gamelist() {
			$.ajax({
						url : "https://asia.api.riotgames.com/lol/match/v5/matches/by-puuid/pTIXNTmJPvXMXMtdEKwDKeZfnQMolnSFfpalVCmrjez4l1bR2FUqDBG2b9lii-pIErbi12tyO4tpcA/ids?start=0&count=10&api_key=RGAPI-619a24b1-e979-429c-bcb9-f85939a7f6b1",
						type : "GET",
						success : function(data) {
							game(data)
						}
					})

		};
		function game(data) {
			$.each(data,function(i){
			var ingame = data[i];
			var apikey = "RGAPI-619a24b1-e979-429c-bcb9-f85939a7f6b1";
			$.ajax({
				type : "GET",
				url : "https://asia.api.riotgames.com/lol/match/v5/matches/"
						+ ingame + '?api_key=' + apikey,
				success : function(result) {
			        var data = result.info.participants; 
					var str = '<TR>';
			        var time = JSON.stringify(data[1].timePlayed)
			        var mtime = time.toHHMMSS();
			        var redteam = [1,2,3,4,5]
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
			            alert("????????????");
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
					return '??????'
				}else{
					return '??????'
				}
			}
	</script>
<jsp:include page="header.jsp"></jsp:include>
<div id = "where">
		<table border="1px">

			<tr id="champmost">
				<h3> ????????? ??????</h3>
				<td width="100" style="text-align: center;">??? ?????????<br> ?????????</td>	
				
				<td><img src="resources/newchamp/Sona.jpg" alt="??????"
					width="100" height="100"></td>
				<td><img src="resources/newchamp/Talon.jpg" alt="??????"
					width="100" height="100"></td>
				<td><img src="resources/newchamp/Nocturne.jpg" alt="??????"
					width="100" height="100"></td>
			
			<tr id="champ">
			<td width="100" style="text-align: center;">TFT??????<br> ??????</td>
				<td><img src="resources/newchamp/Karthus.jpg" alt="?????????"
					width="100" height="100"></td>
				<td><img src="resources/newchamp/Evelynn.jpg" alt="?????????"
					width="100" height="100"></td>
				<td><img src="resources/newchamp/Qiyana.jpg" alt="?????????"
					width="100" height="100"></td>
			</tr></tr>
			</th>
			</table>
		</div>
			<br>
			<br>
			<br>
			<h1> ???????????? ??????</h1>
			<div id="tengg">
		
				<table border="1">
					<h3> ?????? 10?????? ??????</h3>
					<tr id="??????????????????">
						<th width="100px">?????? ??????</th>
						<th width="100px">?????????</th>
						<th width="100px">KDA</th>
						<th width="250px">?????????</th>
						<th width="150px">LV / G / CS</th>
						<th width="100px">???????????????</th>
					</tr>
			<tbody id="gamelist">
				
			</tbody>
			</table>
			</div>
						
	</div>


</body>
<footer><jsp:include page="footer.jsp"></jsp:include>	</footer>
</html>