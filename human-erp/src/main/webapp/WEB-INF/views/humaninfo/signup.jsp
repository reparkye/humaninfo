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
                                    <div class="col-md-6">
                                        <input type="text" id="hiId" class="form-control" name="hiId" placeholder="사용하실 아이디 입력">
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
	var hiId=document.querySelector('#hiId').value;		
	var hiPwd=document.querySelector('#hiPwd').value;
	var hiChPwd=document.querySelector('#hiChPwd').value;
	var hiName=document.querySelector('#hiName').value;
	var hiTrans=document.querySelector('input[name=hiTrans]:checked').value;
	var hiAddress=document.querySelector('#hiAddress').value;
	var hiEmail=document.querySelector('#hiEmail').value;
	var hiBirth=document.querySelector('#hiBirth').value;
	var hiPhone=document.querySelector('#hiPhone').value;
	
	var languageCk = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;	
	
	if(hiId.trim().length<6){
		alert('아이디는 6자리 이상으로 입력해주세요');
		hiId="";
		return false;
	}
	
	if(hiPwd.trim().length<7){
		alert('비밀번호를 7자이상 입력해주세요.');
		hiPwd="";
		return false;
	}
	
	if(hiChPwd != hiPwd){
		alert('비밀번호가 일치하지않습니다.');
		hiChPwd="";
		return false;
	}	
		
	if(languageCk.test(hiEmail)){
		alert('이메일 입력란에는 한글은 제외해주세요.');
		hiEmail="";
		return false;
	}
	if(hiEmail.trim().length==0){
		alert('이메일을 입력해주세요.');
		hiEmail="";
		return false;
	}
	var exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
	if(exptext.test(hiEmail)==false){
		alert("이메일 형식에 맞게 입력해주세요.");
		hiEmail = "";		
		return false;
	}
	
	if(hiPhone.trim().length>13 || hiPhone.trim().length==0){
		alert('연락처 번호를 다시 입력해주세요.');
		hiPhone="";
		return false;
	}

	if(hiAddress.trim().length==0){
		alert('주소를 입력해주세요.');
		hiAddress="";
		return false;
	}
	if(languageCk.test(hiAddress)){		
	}else{
		alert('주소를 한글로 입력해주세요.');
		hiAddress="";
		return false;
	}
	
	
				
	var params={hiId:hiId,hiPwd:hiPwd,hiChPwd:hiChPwd,hiName:hiName,hiTrans:hiTrans,
			hiAddress:hiAddress,hiEmain:hiEmail,hiBirth:hiBirth,hiPhone:hiPhone}
	
	params=JSON.stringify(params);
	
	var conf={url:'/humaninfo',
			method:'POST',
			param:params,
			success:function(res){
					if(res=='1'){
						alert('회원가입이 완료되었습니다.');
						location.href='home';
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