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
                                        <input type="text" id="hiId" class="form-control" name="hiId" value="${hi.hiid}" disabled>
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
                                        <input type="text" id="hiName" class="form-control" name="hiName" value="${hi.hiname}" disabled>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="hiBir" class="col-md-4 col-form-label text-md-right">Date of Birth</label>
                                    <div class="col-md-6">
                                        <input type="date" id="hiBirth" class="form-control" name="hiBirth" value="${hi.hibirth}" disabled>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="hiTrans" class="col-md-4 col-form-label text-md-right">Gender</label>
                                    <div class="col-md-6">
                                    
	                                    <input type="radio" class="" name="hiTrans" id="male" value="male" ${hi.hitrans eq "male"?"checked":""} disabled>
										<label for="male">male</label>
										
										<input type="radio" class="" name="hiTrans" id="female" value="female" ${hi.hitrans eq "female"?"checked":""} disabled>
										<label for="female">female</label>
                                    </div>
                                </div>    
                                
                                <div class="form-group row">
                                    <label for="hiEmail" class="col-md-4 col-form-label text-md-right">User Email</label>
                                    <div class="col-md-6">
                                        <input type="email" id="hiEmail" class="form-control" name="hiEmail" value="${hi.hiemail}" >
                                    </div>
                                </div>   
                                
                                 <div class="form-group row">
                                    <label for="hiPhone" class="col-md-4 col-form-label text-md-right">User Phone</label>
                                    <div class="col-md-6">
                                        <input type="text" id="hiPhone" class="form-control" name="hiPhone" value="${hi.hiphone}" >
                                    </div>
                                </div>                       

                                <div class="form-group row">
                                    <label for="hiAddress" class="col-md-4 col-form-label text-md-right"><abbr
                                                title="주소를 입력해 주세요">User Address</abbr></label>
                                    <div class="col-md-6">
                                        <input type="text" id="hiAddress" class="form-control" name="hiAddress" value="${hi.hiaddress}" >
                                    </div>
                                </div>
                                
   

                                    <div class="col-md-6 offset-md-4">
                                        <button class="btn btn-primary btn-block" onclick="updateUserinfo(${hi.hinum})">수정</button>
                                        <button class="btn btn-primary btn-block" onclick="deleteUserinfo(${hi.hinum})">삭제</button>
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
function updateUserinfo(hinum){	
	var hipwd=document.querySelector('#hiPwd').value;
	var hichpwd=document.querySelector('#hichPwd').value;
	var hiemail=document.querySelector('#hiEmail').value;
	var hiphone=document.querySelector('#hiPhone').value;
	var hiaddress=document.querySelector('#hiAddress').value;
	
	

	var languageCk = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;	
	
	
	
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
	
	
	
	
	
	var params={hipwd:hipwd,
			hichpwd:hichpwd,
			hiaddress:hiaddress,
			hiemail:hiemail,
			hinum:hinum}
	
	params=JSON.stringify(params);
	
	var conf={url:'/humaninfo/'+hinum,
			method:'PUT',
			param:params,
			success:function(res){
					if(res=='1'){
						alert('수정이 완료되었습니다.');
						location.href='/url/humaninfo:list';
					}else{
						error(res);
					}
			}
	}
	var au=new AjaxUtil(conf);
	au.send();
}

function deleteUserinfo(hinum){	
	var conf={url:'/humaninfo/'+hinum,
			method:'DELETE',
			success:function(res){
			if(res=='1'){
				alert("삭제 성공");
				location.href='/url/humaninfo:list';
			}		  
		}
	
	}
	var au=new AjaxUtil(conf);
	au.send();	
}
</script>

</body>
</html>