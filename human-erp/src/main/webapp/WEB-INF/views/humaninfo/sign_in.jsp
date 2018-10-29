<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>User Interface</title>

    <!-- vendor css -->
    <link href="/resources/lib/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="/resources/lib/Ionicons/css/ionicons.css" rel="stylesheet">

    <!-- Bracket CSS -->
    <link rel="stylesheet" href="/resources/css/bracket.css">
  </head>

  <body>

    <div class="d-flex align-items-center justify-content-center bg-br-primary ht-100v"  style="background-image:url(/resources/img/bg-1.jpg);background-size:cover;">

      <div class="login-wrapper wd-300 wd-xs-350 pd-25 pd-xs-40 bg-white rounded shadow-base">
        <div class="signin-logo tx-center tx-28 tx-bold tx-inverse"><span class="tx-normal">[</span> User Interface <span class="tx-normal">]</span></div>
        <div class="tx-center mg-b-60">여행 정보 로그인 창</div>
        
        
		<form action="/loginCke" method="POST">
        
        <div class="form-group">
          <input type="text" name="hiid" class="form-control" placeholder="아이디를 입력해주세요">
        </div>
        
        <div class="form-group">
          <input type="password" name="hipwd" class="form-control" placeholder="비밀번호를 입력해주세요">
        </div>
        
        <button class="btn btn-info btn-block">로그인</button>	<!-- 컨트롤러 가는 값이 널로 나옴 -->
</form>
        <div class="mg-t-60 tx-center">가입 하시겠습니까? <a href="/url/humaninfo:signup" class="tx-info">회원가입</a></div>
      </div>
    </div>
    <script src="/resources/lib/jquery/jquery.js"></script>
    <script src="/resources/lib/popper.js/popper.js"></script>
    <script src="/resources/lib/bootstrap/bootstrap.js"></script>

  </body>
</html>
