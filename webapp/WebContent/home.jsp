<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<title>RealMadrid Story</title>
</head>
<body>
	<jsp:include page="./menu2.jsp"/>
	
	<div class="py-5 bg-transparent text-center w-100">
	<h1 editable="inline" class="display-5">방문을 환영합니다!</h1><br>
	<div editable="rich">
		<p class="lead"><strong>이 곳은 레알마드리드FC에 대한 정보를 제공합니다.</strong></p><hr>
	</div>
	</div>

<div class="container min-vh-100 d-flex align-items-center ">
	<div class="row">
		<div class="col-md-4">
			<div class="lc-block">
				<div class="card shadow-lg p-3 bg-white text-dark">
					<img class="card-img-top" src="./resources/images/ballon.png" 
					alt="Photo by Omar Prestwich" loading="lazy">
					<div class="card-body text-center">
						<h3 class="card-title mb-5" editable="inline">발롱도르 수상</h3>
						<a class="btn btn-link" href="./news.jsp" 
						role="button">더 알아보기</a>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="lc-block">
				<div class="card shadow-lg p-3 bg-white text-dark">
					<img class="card-img-top" src="./resources/images/bg.png"
					alt="Photo by Omar Prestwich" loading="lazy">
					<div class="card-body text-center">
						<h4 class="card-title mb-5" editable="inline">챔피언스 리그 우승</h4>
						<a class="btn btn-link" href="./news.jsp" 
						role="button">더 알아보기</a>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="lc-block">
				<div class="card shadow-lg p-3 bg-white text-dark">
					<img class="card-img-top" src="./resources/images/uniform.png" alt="Photo by NeONBRAND" loading="lazy">
					<div class="card-body text-center">
						<h3 class="card-title mb-5" editable="inline">22/23 유니폼</h3>
						<a class="btn btn-link" href="./uniforms.jsp" 
						role="button">더 알아보기</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
	<hr>
	<jsp:include page="footer.jsp"/>
</body>
</html>