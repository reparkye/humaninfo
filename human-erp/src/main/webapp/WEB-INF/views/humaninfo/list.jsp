<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<script>
window.addEventListener('load',function(){
	var conf = {
			url : '/humaninfo',	
			success:function(res){
				//alert(JSON.parse(res));
				 res=JSON.parse(res);
				var html='';
				if(res.length==0){
					html += '<tr>';
					html += '<td colspan="10">표시할 내용이 없습니다.</td>';
					html += '</tr>';
				}else{
				for(var hi of res){
					html += '<tr onclick="myviewss('+hi.hinum+')">';
					html += '<td>'+hi.hinum+'</td>';
					html += '<td>'+hi.hiid+'</td>';					
					html += '<td>'+hi.hipwd+'</td>';
					html += '<td>'+hi.hichpwd+'</td>';
					html += '<td>'+hi.hiname+'</td>';
					html += '<td>'+hi.hitrans+'</td>';
					html += '<td>'+hi.hiaddress+'</td>';
					html += '<td>'+hi.hiemail+'</td>';
					html += '<td>'+hi.hibirth+'</td>';
					html += '<td>'+hi.hiphone+'</td>';
					html += '</tr>';
				}
				}
				document.querySelector('#humanlistTbody').insertAdjacentHTML('beforeend',html);	 			
			}		
	}
	
	var au =new AjaxUtil(conf);
	au.send();
});

</script>

<body>
<div class="main">

<div class="container">

<div style="float:right" class="search">
<select id="type" name="type">

	<option value="hiname">이름</option>
	<option value="hiid">아이디</option>
	
</select>
  : <input type="text" id="selkey" name="selkey">  
  <button onclick="searchList()">검색</button>
</div>

<table border="1">
	<thead>
		<tr>
			<th>넘버</th>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>비번확인</th>
			<th>이름</th>
			<th>성별</th>
			<th>주소</th>
			<th>메일</th>
			<th>생일</th>
			<th>핸드폰</th>
		</tr>
	</thead>
	<tbody id="humanlistTbody">
	</tbody>
</table>
</div>
</div>

<script>
function searchList(){
	var type = document.querySelector('#type').value;
	var selkey = document.querySelector('#selkey').value;
 
	var params = {};
	
	params[type] = selkey;
	
	var getParams = '';
	for(var key in params){
		getParams += key + '=' + params[key] + '&';
	}
	console.log(getParams);
	
	var conf={
		url:'/humaninfo?' + getParams,
		method:'GET',
		success:function(res){	
			alert("검색을 완료하였습니다.");
			document.querySelector('#humanlistTbody').innerHTML = '';
			res=JSON.parse(res);
			var html='';
			if(res.length == 0){
				html += '<tr>';
				html += '<td colspan="10">표시할 내용이 없습니다.</td>';
				html += '</tr>';
			}else{
				for(var hi of res){
					html += '<tr onclick="myviewss('+hi.hinum+')">';
					html += '<td>'+hi.hinum+'</td>';
					html += '<td>'+hi.hiid+'</td>';					
					html += '<td>'+hi.hipwd+'</td>';
					html += '<td>'+hi.hichpwd+'</td>';
					html += '<td>'+hi.hiname+'</td>';
					html += '<td>'+hi.hitrans+'</td>';
					html += '<td>'+hi.hiaddress+'</td>';
					html += '<td>'+hi.hiemail+'</td>';
					html += '<td>'+hi.hibirth+'</td>';
					html += '<td>'+hi.hiphone+'</td>';
					html += '</tr>';
			}
			}
			document.querySelector('#humanlistTbody').insertAdjacentHTML('beforeend',html);
		}
	}
	
	var au=new AjaxUtil(conf);
	au.send();
} 

	function myviewss(hinum){
		location.href="/humaninfo/"+hinum;
		
	}

</script>

</body>
</html>