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
<main class="my-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">수정 정보</div>
                        <div class="card-body">
                                <div class="form-group row">
                                    <label for="hiId" class="col-md-4 col-form-label text-md-right">User ID</label>
                                    <div class="col-md-6">
                                        <input type="text" id="hiId" class="form-control" name="hiId" value="${hi.hiId}" disabled>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="hiPwd" class="col-md-4 col-form-label text-md-right">Password</label>
                                    <div class="col-md-6">
                                        <input type="password" id="hiPwd" class="form-control" name="hiPwd">
                                    </div>
                                </div>
                                
                                 <div class="form-group row">
                                    <label for="hiRPwd" class="col-md-4 col-form-label text-md-right">Password check</label>
                                    <div class="col-md-6">
                                        <input type="password" id="hichPwd" class="form-control" name="hichPwd">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="hiName" class="col-md-4 col-form-label text-md-right">User Name</label>
                                    <div class="col-md-6">
                                        <input type="text" id="hiName" class="form-control" name="hiName" value="${hi.hiName}" disabled>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="hiBir" class="col-md-4 col-form-label text-md-right">Date of Birth</label>
                                    <div class="col-md-6">
                                        <input type="date" id="hiBir" class="form-control" name="hiBir" value="${hi.hiBir}" disabled>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="hiTran" class="col-md-4 col-form-label text-md-right">Gender</label>
                                    <div class="col-md-6">
                                    
	                                    <input type="radio" class="" name="hiTran" id="male" value="male" ${hi.hiTran eq "male"?"checked":""} disabled>
										<label for="male">male</label>
										
										<input type="radio" class="" name="hiTran" id="female" value="female" ${hi.hiTran eq "female"?"checked":""} disabled>
										<label for="female">female</label>
                                    </div>
                                </div>    
                                
                                <div class="form-group row">
                                    <label for="hiEmail" class="col-md-4 col-form-label text-md-right">User Email</label>
                                    <div class="col-md-6">
                                        <input type="email" id="hiEmail" class="form-control" name="hiEmail" value="${hi.hiEmail}" >
                                    </div>
                                </div>   
                                
                                 <div class="form-group row">
                                    <label for="hiPhone" class="col-md-4 col-form-label text-md-right">User Phone</label>
                                    <div class="col-md-6">
                                        <input type="text" id="hiPhone" class="form-control" name="hiPhone" value="${hi.hiPhone}" >
                                    </div>
                                </div>                       

                                <div class="form-group row">
                                    <label for="hiAddress" class="col-md-4 col-form-label text-md-right"><abbr
                                                title="주소를 입력해 주세요">User Address</abbr></label>
                                    <div class="col-md-6">
                                        <input type="text" id="hiAddress" class="form-control" name="hiAddress" value="${hi.hiAddress}" >
                                    </div>
                                </div>
                                
   

                                    <div class="col-md-6 offset-md-4">
                                        <button class="btn btn-primary btn-block" onclick="updateUserinfo(${hi.hiNum})">수정</button>
                                        <button class="btn btn-primary btn-block" onclick="deleteUserinfo(${hi.hiNum})">삭제</button>
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
function updateUserinfo(hiNum){	
	var hiPwd=document.querySelector('#hiPwd').value;
	var hiRPwd=document.querySelector('#hiRPwd').value;
	var hiEmail=document.querySelector('#hiEmail').value;
	var hiPhone=document.querySelector('#hiPhone').value;
	var hiAddress=document.querySelector('#hiAddress').value;
	
	//--유효성검사 start--//	
	var languageCheck = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;	
	
	if(hiPwd.trim().length<5){
		alert('비밀번호를 5자이상 입력해주세요.');
		hiPwd="";
		return false;
	}
	if(hiRPwd != hiPwd){
		alert('비밀번호를 다시 입력해주세요.');
		hiRPwd="";
		return false;
	}	
		
	if(languageCheck.test(hiEmail)){
		alert('이메일을 한글 제외하고 입력해주세요.');
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
		alert('연락처를 다시 입력해주세요.');
		hiPhone="";
		return false;
	}

	if(hiAddress.trim().length==0){
		alert('주소를 입력해주세요.');
		hiAddress="";
		return false;
	}
	if(languageCheck.test(hiAddress)){		
	}else{
		alert('주소를 한글로 입력해주세요.');
		hiAddress="";
		return false;
	}
	if(hiDAddress.trim().length==0){
		alert('상세주소를 입력해주세요.');
		hiDAddress="";
		return false;
	}
	if(languageCheck.test(hiDAddress)){		
	}else{
		alert('상세주소를 한글로 입력해주세요.');
		hiDAddress="";
		return false;
	}
	//--유효성 검사end--//
	
	
	
	var params={hiPwd:hiPwd,hiRPwd:hiRPwd,hiEmail:hiEmail,hiPhone:hiPhone,hiAddress:hiAddress,hiDAddress:hiDAddress,hiDesc:hiDesc,hiNum:hiNum}
	params=JSON.stringify(params);
	
	var conf={url:'/userinfo/'+hiNum,
			method:'PUT',
			param:params,
			success:function(res){
					if(res=='1'){
						alert('수정이 완료되었습니다.');
						location.href='/url/userinfo:list';
					}else{
						error(res);
					}
			}
	}
	var au=new AjaxUtil(conf);
	au.send();
}

function deleteUserinfo(hiNum){	
	var conf={url:'/userinfo/'+hiNum,
			method:'DELETE',
			success:function(res){
			if(res=='1'){
				alert("삭제 성공");
				location.href='/url/userinfo:list';
			}		  
		}
	
	}
	var au=new AjaxUtil(conf);
	au.send();	
}
</script>

</body>
</html>