<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<style>
body{
	background-color:#FFCCFF;
}
</style>
<title>로그인</title>
</head>
<body>
	<jsp:include page="./menu.jsp"/>
	
<section class="text-center">
	<div class="p-5 bg-image" style="background-image: 
        url('./resources/images/171.jpg');
        height: 300px;">
    </div>
    <div class="card mx-4 mx-md-5 shadow-5-strong" style="
        margin-top: -100px;
        background: hsla(0, 0%, 100%, 0.8);
        backdrop-filter: blur(30px);">
        
    <div class="card-body py-5 px-md-5">

      <div class="row d-flex justify-content-center">
        <div class="col-lg-8">
          <h2 class="fw-bold mb-5">Sign up now</h2>
          <%
				String error=request.getParameter("error");
			
				if(error!=null){
					out.println("<div class='alert alert-danger'>");
					out.println("아이디 또는 비밀번호를 확인해주세요!!");
					out.println("</div>");
				}
		  %>
          <form class="form-signin" action="processLogin.jsp" method="post">

            <!-- Id input -->
            <div class="form-outline mb-4">
              <label class="form-label" for="form3Example3">Id</label>
              <input type="text" class="form-control" placeholder="ID" 
					name="id" required autofocus>
            </div>

            <!-- Password input -->
            <div class="form-outline mb-4">
              <label class="form-label" for="form3Example4">Password</label>
              <input type="password" class="form-control" 
					placeholder="Password" name="password" required>
            </div>

            <!-- Submit button -->
            <div class="form-group">
				<a href="./join.jsp" class="btn btn-lg btn-info">회원가입</a>
				<button class="btn btn-lg btn-success" type="submit">로그인</button>
			</div>
		</form>
       </div>
        </div>
      </div>
    </div>
</section>
	<hr>
	<jsp:include page="./footer.jsp"/>
</body>
</html>