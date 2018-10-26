<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script src="/resources/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta charset="UTF-8">
</head>

<script>

var isCheckId = 0;
function duplicationId(){
   var hiid =  $("#hiId").val(); 
   
   $.ajax({
       async: false,
       type : "POST",
       url : "/idckeck",
       data : 'hiid=' + hiid,
       success:function (data){
    		if(data == "0"){
    			alert("사용가능한 아이디 입니다.");
    			
    			$("#divInputId").addClass("has-success")
    			$("#divInputId").removeClass("has-error")
    			
    			$("#hiPwd").focus();
				isCheckId = 1;
    		
    		} else if(data == '1') {
    			alert("아이디가 존재합니다 다른아이디 입력 바랍니다.");
    			
    			$("divInputId").addClass("has-error")
    			$("divInputId").removeClass("has-success")
    			
    			$("#hiId").focus();
    		}
       },
   		error: function(req, status, errThrown){
   			alert("network erro");
   		}
       });
}
</script>

<body>
<div class="main">
<h2>Sign Up(회원가입 창)</h2>
<main class="my-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">회원가입 창</div>
                        <div class="card-body">
                                <div class="form-group row">
                                    <label for="hiId" class="col-md-4 col-form-label text-md-right">ID</label>
                                    <div class="col-md-6" id="divInputId">
                                        <input type="text" id="hiId" class="form-control" name="hiId" placeholder="사용하실 아이디 입력">  
                                        
                                        	<!-- 중복체크 -->																		
                                        <input type="button" class="btn btn-default" style="width:30%;" value="중복체크" onclick="duplicationId()"/>   
                                    
                                    </div>
                                </div>
          
                                <div class="form-group row">
                                    <label for="hiPwd" class="col-md-4 col-form-label text-md-right">비밀번호</label>
                                    <div class="col-md-6">
                                        <input type="password" id="hiPwd" class="form-control" name="hiPwd" placeholder="password 입력해주세요">
                                    </div>
                                </div>
                                
                                 <div class="form-group row">
                                    <label for="hiChPwd" class="col-md-4 col-form-label text-md-right">비밀번호 확인</label>
                                    <div class="col-md-6">
                                        <input type="password" id="hiChPwd" class="form-control" name="hiChPwd" placeholder="password check">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="hiName" class="col-md-4 col-form-label text-md-right">이름을 입력해주세요</label>
                                    <div class="col-md-6">
                                        <input type="text" id="hiName" class="form-control" name="hiName" placeholder="your name">
                                    </div>
                                </div>

								<div class="form-group row">
                                    <label for="hiTrans" class="col-md-4 col-form-label text-md-right">당신의 성별은?</label>
                                    <div class="col-md-6">
	                                    <input type="radio" name="hiTrans" value="male">
										<label for="male">남성</label>
										
										<input type="radio" name="hiTrans" value="female">
										<label for="female">여성</label>
                                    </div>
                                </div>    
                                
                                
                                <div class="form-group row">
                                    <label for="hiAddress" class="col-md-4 col-form-label text-md-right">주소를 입력해주세요</label>
                                    <div class="col-md-6">
                                        <input type="text" id="hiAddress" class="form-control" name="hiAddress">
                                    </div>
                                </div>
                                
                                
                                <div class="form-group row">
                                    <label for="hiEmail" class="col-md-4 col-form-label text-md-right">사용할 이메일일 입력해주세요</label>
                                    <div class="col-md-6">
                                        <input type="email" id="hiEmail" class="form-control" name="hiEmail">
                                    </div>
                                </div>   
                                
                                
                                <div class="form-group row">
                                    <label for="hiBirth" class="col-md-4 col-form-label text-md-right">생년월일을 만들어주세요</label>
                                    <div class="col-md-6">
                                        <input type="date" id="hiBirth" class="form-control" name="hiBirth">
                                    </div>
                                </div>
                                
                                 <div class="form-group row">
                                    <label for="hiPhone" class="col-md-4 col-form-label text-md-right">핸드폰번호를 입력해주세요</label>
                                    <div class="col-md-6">
                                        <input type="text" id="hiPhone" class="form-control" name="hiPhone" placeholder="-를 포함하여 입력해주세요.">
                                    </div>
                                </div>                       

                                    <div class="col-md-6 offset-md-4">
                                        <button class="btn btn-primary btn-block" onclick="signupOk()">확인 </button>
                                    </div>
                                </div>
                            <!-- </form> -->
                        </div>
                    </div>
            </div>
        </div>
    </div>

</main>


</div>
<script>



function signupOk(){	
	var hiid=document.querySelector('#hiId').value;		
	var hipwd=document.querySelector('#hiPwd').value;
	var hichpwd=document.querySelector('#hiChPwd').value;
	var hiname=document.querySelector('#hiName').value;
	var hitrans=document.querySelector('input[name=hiTrans]:checked').value;
	var hiaddress=document.querySelector('#hiAddress').value;
	var hiemail=document.querySelector('#hiEmail').value;
	var hibirth=document.querySelector('#hiBirth').value;
	var hiphone=document.querySelector('#hiPhone').value;
	
	
	
	var languageCk = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;	
	
	if(isCheckId == 0) { alert("아이디 중복 체크를 해주세요."); $("#hiId").focus(); return; }

	
	if(hiid.trim().length<6){
		alert('아이디는 6자리 이상으로 입력해주세요');
		hiid="";
		return false;
	}
	
	if(hipwd.trim().length<7){
		alert('비밀번호를 7자이상 입력해주세요.');
		hipwd="";
		return false;
	}
	
	if(hichpwd != hipwd){
		alert('비밀번호가 일치하지않습니다.');
		hichpwd="";
		return false;
	}	
		
	if(languageCk.test(hiemail)){
		alert('이메일 입력란에는 한글은 제외해주세요.');
		hiemail="";
		return false;
	}
	if(hiemail.trim().length==0){
		alert('이메일을 입력해주세요.');
		hiemail="";
		return false;
	}
	var exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
	if(exptext.test(hiemail)==false){
		alert("이메일 형식에 맞게 입력해주세요.");
		hiemail = "";		
		return false;
	}
	
	if(hiphone.trim().length>13 || hiphone.trim().length==0){
		alert('연락처 번호를 다시 입력해주세요.');
		hiphone="";
		return false;
	}

	if(hiaddress.trim().length==0){
		alert('주소를 입력해주세요.');
		hiaddress="";
		return false;
	}
	if(languageCk.test(hiaddress)){		
	}else{
		alert('주소를 한글로 입력해주세요.');
		hiaddress="";
		return false;
	}	
		if(hibirth.trim().length==0){
			alert('생년월일을 입력해주세요.');
			hibirth="";
			return false;
	}
	
	
				
	var params={hiid:hiid,hipwd:hipwd,hichpwd:hichpwd,hiname:hiname,hitrans:hitrans,
			hiaddress:hiaddress,hiemail:hiemail,hibirth:hibirth,hiphone:hiphone}
	
	params=JSON.stringify(params);
	
	var conf={url:'/humaninfo',
			method:'POST',
			param:params,
			success:function(res){
					if(res=='1'){
						alert('회원가입이 완료되었습니다.');
						location.href='/url/humaninfo:list';
					}else{
						error(res);
					}
			}
	}
	var au=new AjaxUtil(conf);
	au.send();
}
</script>

</body>
</html>