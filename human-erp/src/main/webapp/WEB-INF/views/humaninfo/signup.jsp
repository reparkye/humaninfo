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
<h2>Sign Up</h2>
<main class="my-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">Sign Up</div>
                        <div class="card-body">
                            <!-- <form name="my-form" onsubmit="return validform()" action="success.php" method=""> -->
                                <div class="form-group row">
                                    <label for="hiId" class="col-md-4 col-form-label text-md-right">User ID</label>
                                    <div class="col-md-6">
                                        <input type="text" id="hiId" class="form-control" name="hiId">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="hiPwd" class="col-md-4 col-form-label text-md-right">Password</label>
                                    <div class="col-md-6">
                                        <input type="password" id="hiPwd" class="form-control" name="hiPwd">
                                    </div>
                                </div>
                                
                                 <div class="form-group row">
                                    <label for="hiChPwd" class="col-md-4 col-form-label text-md-right">Password check</label>
                                    <div class="col-md-6">
                                        <input type="password" id="hiChPwd" class="form-control" name="hiChPwd">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="hiName" class="col-md-4 col-form-label text-md-right">User Name</label>
                                    <div class="col-md-6">
                                        <input type="text" id="hiName" class="form-control" name="hiName">
                                    </div>
                                </div>

								<div class="form-group row">
                                    <label for="hiTran" class="col-md-4 col-form-label text-md-right">Gender</label>
                                    <div class="col-md-6">
	                                    <input type="radio" name="hiTran" value="male">
										<label for="male">male</label>
										
										<input type="radio" name="hiTran" value="female">
										<label for="female">female</label>
                                    </div>
                                </div>    
                                
                                
                                <div class="form-group row">
                                    <label for="hiAddress" class="col-md-4 col-form-label text-md-right"><abbr
                                                title="주소 입력해주세요">User Address</abbr></label>
                                    <div class="col-md-6">
                                        <input type="text" id="hiAddress" class="form-control" name="hiAddress">
                                    </div>
                                </div>
                                
                                
                                <div class="form-group row">
                                    <label for="hiEmail" class="col-md-4 col-form-label text-md-right">User Email</label>
                                    <div class="col-md-6">
                                        <input type="email" id="hiEmail" class="form-control" name="hiEmail">
                                    </div>
                                </div>   
                                
                                
                                <div class="form-group row">
                                    <label for="hiBir" class="col-md-4 col-form-label text-md-right">Date of Birth</label>
                                    <div class="col-md-6">
                                        <input type="date" id="hiBir" class="form-control" name="hiBir">
                                    </div>
                                </div>
                                
                                 <div class="form-group row">
                                    <label for="hiPhone" class="col-md-4 col-form-label text-md-right">User Phone</label>
                                    <div class="col-md-6">
                                        <input type="text" id="hiPhone" class="form-control" name="hiPhone" placeholder="-를 포함하여 입력해주세요.">
                                    </div>
                                </div>                       

                                    <div class="col-md-6 offset-md-4">
                                        <button class="btn btn-primary btn-block" onclick="signupOk()">Register </button>
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
	var hichPwd=document.querySelector('#hiChPwd').value;
	var hiName=document.querySelector('#hiName').value;
	var hiTrans=document.querySelector('input:radio[name="uiTran"]').value;
	var hiAddress=document.querySelector('#hiAddress').value;
	var hiEmail=document.querySelector('#hiEmail').value;
	var hiBirth=document.querySelector('#hiBirth').value;
	var hiPhone=document.querySelector('#hiPhone').value;
	
	
				
	var params={hiId:hiId,hiPwd:hiPwd,hiChPwd:hiChPwd,hiName:hiName,hiTrans:hiTrans,
			hiAddress:hiAddress,hiEmain:hiEmail,hiBirth:hiBirth,hiPhone:hiPhone}
	
	params=JSON.stringify(params);
	
	var conf={url:'/Humaninfo',
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