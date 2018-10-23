<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<link href="/resources/css/login.css" rel="stylesheet" />
<link href="/resources/css/modal.css" rel="stylesheet" />

<!-- signUp -->
<link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script src="/resources/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

</head>
<body>
<div class="main">
 <div class="container">

      <form class="form-signin">
        <h2 class="form-signin-heading">sign in</h2>


        <label for="inputEmail" class="sr-only">user ID~!!</label>
        <input type="text" id="inputEmail" class="form-control" placeholder="user ID" required autofocus>
        <label for="inputPassword" class="sr-only">Password~!!</label>
        <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me">  아이디 체크   <br>
               If you don't have an Id? <a id="myBtn" href="#myModal" data-toggle="modal">  SignIn</a>
            
          </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
      </form>

    </div> <!-- /container -->
    
    <!-- The Modal -->
    <div id="myModal" class="modal">
 	<div class="modal-dialog modal-lg">
 	
      <!-- Modal content -->
      <div class="modal-content">
      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span class="close" aria-hidden="true">&times;</span></button>
        
        <!-- SignUp -->                                                               
        <main class="my-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">Sign Up</div>
                        <div class="card-body">
                        
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
                                                title="주소를 입력해주세요">User Address</abbr></label>
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

</main><!-- /SignUp -->  

      </div> <!-- /Modal content -->
 	</div>
    </div><!-- /The Modal -->
    
  </div> <!-- /main -->    
  
  
  <script>
  //modal
	//Get the modal
  var modal = document.getElementById('myModal');

  // Get the <span> element that closes the modal
  var span = document.getElementsByClassName('close')[0];                                   

  // When the user clicks on <span> (x), close the modal
  span.onclick = function() {
      modal.style.display = "none";
  }

  // When the user clicks anywhere outside of the modal, close it
  window.onclick = function(event) {
      if (event.target == modal) {
          modal.style.display = "none";
      }
  }
  
  
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
		
	
		var languageCheck = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;	
		
		if(hiPwd.trim().length<7){
			alert('비밀번호를 7자이상 입력해주세요.');
			hiPwd="";
			return false;
		}
		if(hiChPwd != hiPwd){
			alert('비밀번호가 일치하지 않습니다.');
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

		
			
		var params={hiId:hiId,hiPwd:hiPwd,hiChPwd:hiChPwd,hiName:hiName,hiTrans:hiTrans,
				hiAddress:hiAddress,hiEmain:hiEmail,hiBirth:hiBirth,hiPhone:hiPhone}
		
		params=JSON.stringify(params);
		
		var conf={url:'/humaninfo',
				method:'POST',
				param:params,
				success:function(res){
						if(res=='1'){
							alert('회원가입이 완료되었습니다.');
							location.href='/home';
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