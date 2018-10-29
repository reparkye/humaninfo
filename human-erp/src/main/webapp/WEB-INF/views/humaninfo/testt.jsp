<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


<script>

	//	 1번
var id = document.querySelector('input[name=id]').value;
 var pwd = documnet.querySelectro('input[name=pwd]').value;
 var pwdChk = documnet.querySelector('input[name=pwdChk]').value;
 var age = document.querySelector('input[naame=age]').value;
 var email = document.querySelector('input[name=email]').value;
 
var languageCk = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;	 
	
	//나이 0
	if(hiage.trim()==0){
		alert('아이디 0');
		hiage="";
		return false;
	}

	//나이 130 초과
	if(hiage.trim()>130){
		alert('아이디 130 초과');
		hiage="";
		return false;
	}

	//아이디
	if(hiid.trim().length<5){
		alert('아이디는 5자리 이상으로 입력해주세요');
		hiid="";
		return false;
	}
	
	//비번 
	if(hipwd.trim().length<8){
		alert('비밀번호를 8자이상 입력해주세요.');
		hipwd="";
		return false;
	}
	
	//비번 확인
	if(hichpwd != hipwd){
		alert('비밀번호가 일치하지않습니다.');
		hichpwd="";
		return false;
	}	
		
	//이메일 입력 체크
	if(hiemail.trim().length==0){
		alert('이메일을 입력해주세요.');
		hiemail="";
		return false;
	}
	
	//이메일 @ 
	var exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
	if(exptext.test(hiemail)==false){
		alert("이메일 형식에 맞게 입력해주세요.");
		hiemail = "";		
		return false;
	}
	
	
	//2번
	
	
	//3번
	
	
	@@@@@@@@@@@@@@@@@@@@@select.jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String content = "/url/q3:";
if(request.getParameter("page") != null) {
    content += request.getParameter("page");
} else {
    content += "r1";
}
%>
<!doctype html>
<html>
<head>
</head>
<body>
    <div class="include-wrapper" style="width:500px">
        <div class="left" style="float:left;width:100px">
            <jsp:include page="/url/q3:left" flush="false" />
        </div>
        <div class="right" style="float:right;width:100px">
            <jsp:include page="<%=content %>" flush="false" />
        </div>
    </div>
</body>
</html>
@@@@@@@@@@@@@@@@@@@@@@left.jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
</head>
<body>
<form id="left">
    <select name="page" onchange="this.form.submit()">
        <option value="">선택하랑게</option>
        <option value="r1">r1</option>
        <option value="r2">r2</option>
        <option value="r3">r3</option>
    </select>
</form>
</body>
</html>
@@@@@@@@@@@@@@@@@@@@@rX.jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
</head>
<body>
나는 rX
</body>
</html>
	
	
	//4번
	
	<form action="/loginCke" method="POST">
        
        <div class="form-group">
          <input type="text" name="id" class="form-control" placeholder="아이디를 입력해주세요">
        </div>
        
        <div class="form-group">
          <input type="password" name="pwd" class="form-control" placeholder="비밀번호를 입력해주세요">
        </div>
        
        <button class="btn btn-info btn-block">로그인</button>	<!-- 컨트롤러 가는 값이 널로 나옴 -->
</form>
	
	
</script>


</body>
</html>