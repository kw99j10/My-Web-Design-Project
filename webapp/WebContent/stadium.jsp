<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<title>Stadium</title>
</head>
<body>
	<jsp:include page="./menu2.jsp"/>
	
	<br>
	<br>
	<div class="container-fluid p-0">
		<div class="row g-0">
			<div lc-helper="background" class="col-md-6 order-md-2 ps-4 d-flex"
			 style="background-size: 100% 100%; background-position: center; 
			 background-image: url('./resources/images/sta.png');">
				<div class="lc-block align-self-center text-light ms-4">
					<div editable="rich">
						<h2 class="fw-bold display-1"><br><br></h2>
					</div>
				</div>
			</div>
			<div class="col-md-6 order-md-1" style="padding:5vh 5vw">
				<div class="lc-block mb-5">
					<div editable="rich">
	
						<div class="text-center">
						<h2><strong>에스타디오 산티아고 베르나베우</strong></h2>
						</div>
					</div>
				</div>
				<div class="lc-block pb-4">
					<div editable="rich">
						<p><h2>개요:</h2> 
						<h6>스페인 마드리드에 위치한 라리가의 프로 축구 클럽 레알 마드리드 CF의 홈구장. 
						스페인 축구 국가대표팀의 홈구장으로 쓰이기도 한다. </p>
						<p>이름의 유래는 클럽의 전설적인 인물인 산티아고 베르나베우이다.</p>
						<p>UEFA 챔피언스 리그 결승전, UEFA 유로 결승전과 FIFA 월드컵 결승전을 
						모두 개최한 최초의 유럽 경기장으로, 세계에서 가장 유명한 축구 경기장 중 하나이다.</h6></p>
						
					</div>
						
				</div>
				<details class="text-center">
				<summary><strong>역사</strong></summary>
				<ol>
				<div class="lc-block">
					<div editable="rich">
						<br>
						<p>1944년 10월 27일에 시공하여 1947년 12월 14일에 
						포르투갈 프리메이라 리가의 CF 오스 벨레넨세스와 경기를 하면서 개장하였다.</p> 
						<p>개장 당시에도 75,145명을 수용할 수 있는 대형 구장이었다고 한다. 이후 여러 차례 개조를 통해 수용 인원은 계속 바뀌었는데, 
						1954년의 확장이 끝난 뒤에는 무려 125,000명에 달하는 인원을 수용 가능했다고
						 한다. 현재 수용 가능 인원은 81,044명이다.</p>
						 
						<p>1955년 1월 4일 경기장의 이름을 결정하는 이사회에서 만장일치로 산티아고 베르나베우로 결정되었다.
						당시 레알 마드리드 CF의 회장인 산티아고 베르나베우는 다른 이름을 제안하였으나 
						팬들 대다수는 구단의 레전드인 회장의 이름을 경기장에 붙여 버렸다.</p>
						
						<p>2020년대 대규모 리빌딩에 들어갔으며 
						리모델링 비용은 3억~4억 유로가 들 것이라고 전망됐다.
						리모델링은 2019년에 시작되었고 2022년 10월에 완료할 예정이라고 한다.</p>
						<p>코로나 19의 영향으로 
						축구가 진행되지 않기 때문에 리모델링 작업 속도가 약 50% 빨라져 2020년 9월 30일 경기를
						치를 예정이었으나 임시 홈구장인 에스타디오 알프레도 디 스테파노에서 진행되었고 이는 2021-22
						시즌까지 지속되었다.</p>
						<p> 2022-23 시즌부터 다시 이곳에서 경기를 치를 예정. 코로나19로 인해 관중 수용력이 필요없는 상황에서 
						운영비가 적게 드는 디 스테파노 구장에서 경기를 진행하는 것으로 보인다.</p>
					</div>
				</div>
				</ol>
			</details>
			</div>
		</div>
		</div>
		<hr>
	<details class="text-center">
		<summary><strong>Overview</strong></summary>
		<ol>
	  	<div class="py-5 bg-transparent text-center w-100">	
			<div editable="rich">
				<p class="lead"><strong>현재 경기장 내 외부 모습</strong></p>
			</div>
		</div>
		<div class="container py-5">
		   <div class="row">
		      <div class="col g-4">
		         <div class="lc-block">
		            <img class="img-fluid" src="./resources/images/in.png" sizes="(max-width: 880px) 100vw, 880px" width="880" height="768" alt="Photo by Félix Besombes" loading="lazy">
		         </div>
		      </div>
		      <div class="col g-4">
		         <div class="lc-block">
		            <img class="img-fluid" src="./resources/images/out.png" sizes="(max-width: 1080px) 100vw, 1080px" width="1080" height="768" alt="Photo by Fabrizio Conti" loading="lazy">
		         </div>
		      </div>
		   </div>
		</div>
	  </ol>
	</details>
	<hr>
	<jsp:include page="footer.jsp"/>
</body>
</html>