<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="dto.News" %>
<%@ page import="dao.NewsRepository" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<title>News</title>
</head>
<body>
	<jsp:include page="./menu2.jsp"/>
	
	<div class="py-5 bg-transparent text-center w-100">
	<h1 editable="inline" class="display-5">RealMadrid News</h1><br>
	<div editable="rich">
		<p class="lead"><strong>최신 소식을 빠르게 업데이트합니다.</strong></p>
		<div class="text-right">
			<a href="addNews.jsp" class="btn btn-primary pull-right">
			뉴스 등록</a>
		</div><hr>
	</div>
	</div>
	<%
		NewsRepository dao=NewsRepository.getInstance();
		ArrayList<News>listOfNews=dao.getAllNews();

	%>
	
	<section class="bg-dark">
	<div class="container py-6">
		<div class="row ùgx-3 gx-lg-4">
			<div class="col-lg-6 col-sm-12">
				<div class="lc-block card border-0 text-white p-3 p-lg-4 h-100" 
				style="background-image: url('./resources/images/2122.png');
				background-size: 100% 100%; background-position: center;">
					
				</div>
			</div>
			<div class="col-lg-6 col-sm-12">
				<div class="lc-block card border-0 bg-white shadow p-3 h-100">
					<div class="card-body">
						<div class="lc-block mb-4"><svg xmlns="http://www.w3.org/2000/svg" width="3em" height="3em" fill="currentColor" viewBox="0 0 16 16" lc-helper="svg-icon" class="bg-dark text-white rounded p-2 shadow">
								<path d="M12 12a1 1 0 0 0 1-1V8.558a1 1 0 0 0-1-1h-1.388c0-.351.021-.703.062-1.054.062-.372.166-.703.31-.992.145-.29.331-.517.559-.683.227-.186.516-.279.868-.279V3c-.579 0-1.085.124-1.52.372a3.322 3.322 0 0 0-1.085.992 4.92 4.92 0 0 0-.62 1.458A7.712 7.712 0 0 0 9 7.558V11a1 1 0 0 0 1 1h2Zm-6 0a1 1 0 0 0 1-1V8.558a1 1 0 0 0-1-1H4.612c0-.351.021-.703.062-1.054.062-.372.166-.703.31-.992.145-.29.331-.517.559-.683.227-.186.516-.279.868-.279V3c-.579 0-1.085.124-1.52.372a3.322 3.322 0 0 0-1.085.992 4.92 4.92 0 0 0-.62 1.458A7.712 7.712 0 0 0 3 7.558V11a1 1 0 0 0 1 1h2Z"></path>
							</svg></div>
						<div class="lc-block mb-5">
							<h1>최고의 한 해</h1>
							<br>
							<div editable="rich">
								<p class="rfs-8"> 시즌 초 레알마드리드의 주장이자 수비수인 세르히오 라모스와
						라파엘 바란이 이적한 후 새로 영입한 공격수 에덴 아자르와 기존에 있던
						공격수 가레스 베일 또한 폼이 좋지 않아
						좋은 성적을 내기는 어려울 것이라는 평가를 받았다.</p>
						<br>
						<p>시즌을 시작하기 전에 왼쪽 풀백 마르셀루를 새로 주장으로 맞이한 후
						바이에른 뮌헨에서 왼쪽 풀백 과 센터백으로 뛸 수 있는 데이비드 알라바 그리고
						든든한 백업으로 수비형 미드필더인 에두아르 카마빙가를 영입하였다.</p>
						<br>
						<p>기존에 있던
						비니시우스 주니오르와 호드리구 등 영건들이 성장하면서 레알마드리드는 리그 우승과
						챔피언스 리그 우승 및 슈퍼컵 2개를 더해 4개의 우승을 이루며
						최고의 한 해를 보냈다.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>
	<hr>
	<section class="bg-light">
	<div class="container py-6">
		<div class="row ùgx-3 gx-lg-4">
			<div class="col-md-5 mb-4 mb-md-0">
				<div class="lc-block card border-solid text-white p-3 p-lg-4 h-100" 
				style="background-image: url('./resources/images/ballon.png');
				background-size: 100% 100%; background-position: center;">
					<div class="card-body">
						<div class="lc-block mb-4">
							<div editable="rich">
								<h1 class="fw-bold display-1"></h1>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-7">
				<div class="lc-block card border-0 bg-white shadow p-3 h-100">
					<div class="card-body">
						<div class="lc-block mb-4"><svg xmlns="http://www.w3.org/2000/svg" width="3em" height="3em" fill="currentColor" viewBox="0 0 16 16" lc-helper="svg-icon" class="bg-dark text-white rounded p-2 shadow">
								<path d="M12 12a1 1 0 0 0 1-1V8.558a1 1 0 0 0-1-1h-1.388c0-.351.021-.703.062-1.054.062-.372.166-.703.31-.992.145-.29.331-.517.559-.683.227-.186.516-.279.868-.279V3c-.579 0-1.085.124-1.52.372a3.322 3.322 0 0 0-1.085.992 4.92 4.92 0 0 0-.62 1.458A7.712 7.712 0 0 0 9 7.558V11a1 1 0 0 0 1 1h2Zm-6 0a1 1 0 0 0 1-1V8.558a1 1 0 0 0-1-1H4.612c0-.351.021-.703.062-1.054.062-.372.166-.703.31-.992.145-.29.331-.517.559-.683.227-.186.516-.279.868-.279V3c-.579 0-1.085.124-1.52.372a3.322 3.322 0 0 0-1.085.992 4.92 4.92 0 0 0-.62 1.458A7.712 7.712 0 0 0 3 7.558V11a1 1 0 0 0 1 1h2Z"></path>
							</svg></div>
						<div class="lc-block mb-5">
							<h1>생에 첫 발롱도르</h1>
							<br>
							<div editable="rich">
								<p class="rfs-8"> 2022년 레알 마드리드의 카림 벤제마가
						생에 첫 발롱도르 수상을 이뤘다. 이는 지네딘 지단 이후 24년만의
						프랑스 선수 발롱도르 수상이다.</p><br>
						<p>35살의 베테랑인 나이에 챔피언스 리그에서 15골, 리그에서
						27골 등을 몰아쳐 각각 득점왕을 차지하였고 총 46경기 44골 15도움으로
						시즌을 마무리하였다.</p><br>
						<p>세대 교체 시기 임에도 불구하고 팀의 더블을 이끌며 이번 시즌 유럽을 넘어 
						전 세계에서 최고의 스트라이커로서 본인 커리어의 역사에 남을 시즌을 보냈다.</p></p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>
	<hr>
	<section class="bg-dark">
	<div class="container py-6">
		<div class="row ùgx-3 gx-lg-4">
			<div class="col-lg-6 col-sm-12">
				<div class="lc-block card border-0 text-white p-3 p-lg-4 h-100" 
				style="background-image: url('./resources/images/chua.png');
				background-size: 100% 100%; background-position: center;">
					<div class="card-body">
						<div class="lc-block mb-4">
							<div editable="rich">
								<h1 class="fw-bold display-1"></h1>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-6 col-sm-12">
				<div class="lc-block card border-0 bg-white shadow p-3 h-100">
					<div class="card-body">
						<div class="lc-block mb-4"><svg xmlns="http://www.w3.org/2000/svg" width="3em" height="3em" fill="currentColor" viewBox="0 0 16 16" lc-helper="svg-icon" class="bg-dark text-white rounded p-2 shadow">
								<path d="M12 12a1 1 0 0 0 1-1V8.558a1 1 0 0 0-1-1h-1.388c0-.351.021-.703.062-1.054.062-.372.166-.703.31-.992.145-.29.331-.517.559-.683.227-.186.516-.279.868-.279V3c-.579 0-1.085.124-1.52.372a3.322 3.322 0 0 0-1.085.992 4.92 4.92 0 0 0-.62 1.458A7.712 7.712 0 0 0 9 7.558V11a1 1 0 0 0 1 1h2Zm-6 0a1 1 0 0 0 1-1V8.558a1 1 0 0 0-1-1H4.612c0-.351.021-.703.062-1.054.062-.372.166-.703.31-.992.145-.29.331-.517.559-.683.227-.186.516-.279.868-.279V3c-.579 0-1.085.124-1.52.372a3.322 3.322 0 0 0-1.085.992 4.92 4.92 0 0 0-.62 1.458A7.712 7.712 0 0 0 3 7.558V11a1 1 0 0 0 1 1h2Z"></path>
							</svg></div>
						<div class="lc-block mb-5">
							<h1>여름 이적시장</h1>
							<br>
							<div editable="rich">
								<p class="rfs-8"> 이번 시즌 성공적인 시즌을 보낸 레알마드리드는
						2022년 6월 여름 이적 시장을 통해서 첼시에서 수비수 안토니어 뤼디거를, 
						as모나코에서 수비형 미드필더 오렐리앙 추아메니를 영입했다.</p><br>
						<p>안토니오 뤼디거는 저번 시즌에 이탈한 세르히오 라모스와 라파엘 바란의
						자리를 채워줄 수 있고 오렐리앙 추아메니는 노쇠화된 레알 마드리드의
						미드필더 진에 세대교체를 이루어 중요한 역할을 해줄 것이라고 전망한다.</p>
						<br><br>
						<h6 class="text-left">왼-안토니오 뤼디거, 우-오렐리앙 추아메니</h6>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>
	<hr>
	
	<section class="bg-dark">
	<div class="container py-6">
		<div class="row ùgx-3 gx-lg-4">
			<%
					for(int i=0;i<listOfNews.size();i++){
						News news=listOfNews.get(i);
			%>
			<div class="col-md-5 mb-4 mb-md-0">
				<div class="lc-block card border-0 text-white p-3 p-lg-4 h-100" 
				style="background-image: url('./resources/images/<%=news.getFilename()%>');
				background-size: 100% 100%; background-position: center;">
					<div class="card-body">
						<div class="lc-block mb-4">
							<div editable="rich">
								<h1 class="fw-bold display-1"></h1>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-7">
				<div class="lc-block card border-0 bg-white shadow p-3 h-100">
					<div class="card-body">
						<div class="lc-block mb-4"><svg xmlns="http://www.w3.org/2000/svg" width="3em" height="3em" fill="currentColor" viewBox="0 0 16 16" lc-helper="svg-icon" class="bg-dark text-white rounded p-2 shadow">
								<path d="M12 12a1 1 0 0 0 1-1V8.558a1 1 0 0 0-1-1h-1.388c0-.351.021-.703.062-1.054.062-.372.166-.703.31-.992.145-.29.331-.517.559-.683.227-.186.516-.279.868-.279V3c-.579 0-1.085.124-1.52.372a3.322 3.322 0 0 0-1.085.992 4.92 4.92 0 0 0-.62 1.458A7.712 7.712 0 0 0 9 7.558V11a1 1 0 0 0 1 1h2Zm-6 0a1 1 0 0 0 1-1V8.558a1 1 0 0 0-1-1H4.612c0-.351.021-.703.062-1.054.062-.372.166-.703.31-.992.145-.29.331-.517.559-.683.227-.186.516-.279.868-.279V3c-.579 0-1.085.124-1.52.372a3.322 3.322 0 0 0-1.085.992 4.92 4.92 0 0 0-.62 1.458A7.712 7.712 0 0 0 3 7.558V11a1 1 0 0 0 1 1h2Z"></path>
							</svg></div>
						<div class="lc-block mb-5">
							<h1><%=news.getTitle() %></h1>
							<br>
							<div editable="rich">
								<p class="rfs-8"><%=news.getDescription() %></p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<%
				}
			%>
		</div>
	</div>
	</section>
	<hr>
	<jsp:include page="footer.jsp"/>
</body>
</html>