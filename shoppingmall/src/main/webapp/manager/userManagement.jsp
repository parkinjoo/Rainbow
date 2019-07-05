<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    
<!-- 구분선(회원관리 세부) -->
<div class="tab-pane fade show active" id="user-management">

	<!-- 회원 관리 세부 메뉴 -->
	<ul class="nav nav-pills mb-3 bottomNav-managerPage">
		<li class="nav-item"><a class="nav-link active"
			data-toggle="pill" href="#pills-home" aria-selected="true">사용자 목록</a></li>
		<li class="nav-item"><a class="nav-link" data-toggle="pill"
			href="#pills-profile" aria-selected="false">탈퇴 회원 관리</a></li>
	</ul>
	<!-- 회원 관리 세부 메뉴 -->

	<div class="tab-content" id="pills-tabContent">

		<!--사용자 목록 세부-->
		<div class="tab-pane fade show active listDiv-managerPage"
			id="pills-home">
			<div class="searchDiv">
				<form class="form-inline my-2 my-lg-0">
					<input class="form-control mr-sm-2" type="search" placeholder="Search">
					<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
				</form>
			</div>
			<div class="deleteBtnDiv-managerPage">
				<input type="button" class="deleteBtn-managerPage" name="deleteBtn"
					value="선택 목록 삭제" id="selectedItemDeleteBtn">
			</div>
			<form>
				<table class="table table-hover">
					<thead>
						<tr>
							<th scope="col">#</th>
							<th scope="col">이름</th>
							<th scope="col">아이디</th>
							<th scope="col">이메일 주소</th>
							<th scope="col"></th>
							<th scope="col"><input type="checkbox" id="selectAll">
							</th>
						</tr>
					</thead>
					<tbody id="userList">
						<!-- ajax로 호출되는 부분 -->
					</tbody>
				</table>
			</form>
			<!-- 이 부분에 페이징 처리 -->
			<nav aria-label="Page navigation example">
				<ul class="pagination justify-content-center">
					<li class="page-item"><a class="page-link" href="#"
						aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
					</a></li>
					<li class="page-item"><a class="page-link" href="">1</a></li>
					<li class="page-item"><a class="page-link" href="">2</a></li>
					<li class="page-item"><a class="page-link" href="">3</a></li>
					<li class="page-item"><a class="page-link" href=""
						aria-label="Next"> <span aria-hidden="true">&raquo;</span>
					</a></li>
				</ul>
			</nav>
			<!-- 페이징 -->
		</div>
		<!-- 사용자 목록 세부 -->

		<div class="tab-pane fade" id="pills-profile">
			<!-- 탈퇴회원 목록 세부 -->
		</div>


	</div>
	<!-- 구분선 -->
</div>
<script>
//---------------페이지가 뜨면 실행되는 함수-----------------------

$(document).ready(function(){	
	
	//-------------사용자 목록을 뿌려주는 함수-------------------
	$.ajax({
		type : 'POST' ,
		url : '/shoppingmall/manager/getUserList.do',
		dataType : 'json',
		success : function(data){			
			$.each(data.list, function(index,items){
				$('#userList').append("<tr>"+
									  "<th scope='row'>"+(index+1)+
									  "</th>"+
									  "<td>"+items.name+"</td>"+
									  "<td>"+items.id+"</td>"+
									  "<td>"+items.email+"</td>"+
									  "<td><button type='button'"+ 
									  			  "class='btn btn-secondary modifyBtn-managerPage'"+
									  			  "'>수정</button></td>"+
									  "<td>"+
									  "<input type='checkbox' name='deleteCheck'"+
									  		 "class='deleteCheck-managerPage'"+
									  		 "value="+items.id+">"+
									  "<input value='"+items.id+
									  	   "' type='hidden' class='hiddenId'>"+
									  "</td>"+
									  "</tr>");
				
				$('.modifyBtn-managerPage').each(function(index, item){
					$(item).addClass('modifyArr_'+index);
				});
				
				$('.hiddenId').each(function(index, item){
					$(item).addClass('hiddenArr_'+index);
				});
				
			});//each;
			
			$('.modifyBtn-managerPage').each(function(index, item){
				$(item).click(function(){
					
					$.ajax({
						type : 'post',
						url: '/shoppingmall/manager/getUserInfo.do',
						data : 'id='+$('.hiddenArr_'+index).val(),
						dataType : 'json',
						success : function(data){
							//alert(data.userDTO.id);
							$('#modal-name').val(data.userDTO.name);
							$('#modal-id').val(data.userDTO.id);
							$('#modal-email').val(data.userDTO.email);
							$('#modal-joinday').val(data.userDTO.joinday);
							$('#modal-tel').val(data.userDTO.tel);
							$('#modal-zipcode').val(data.userDTO.zipcode);
							$('#modal-addr1').val(data.userDTO.addr1);
							$('#modal-addr2').val(data.userDTO.addr2);
							$('#modal-point').val(data.userDTO.point);
							$('#modal-cash').val(data.userDTO.cash);
							$('#modal-totalPay').val(data.userDTO.totalPay);
							$('#modal-grade').val(data.userDTO.grade);
							$('#userModal').modal();
							
						}
					});
					//$('#modal-name').val($('.hiddenArr_'+index).val());
					//$('#userModal').modal()
				});
			});
		}
	});
	//---------------------------------------------------	
});

//-----------------------------------------------------------------
//체크박스 전체선택 기능
	$('#selectAll').click(function(){
		if($('#selectAll').prop("checked")) {
			$('.deleteCheck-managerPage').prop("checked", true);
		}else {
			$('.deleteCheck-managerPage').prop("checked", false);
		}
	});
//------------------------------------------------------------


//선택된 목록 삭제하기
$('#selectedItemDeleteBtn').click(function(){
	
	var checkArr = [];
	
	$('.deleteCheck-managerPage:checked').each(function(i){
		checkArr.push($(this).val());
	});
	
	if(checkArr.length==0){
		alert("선택된 목록이 없습니다");
	}else {
		var deleteConfirm = confirm("삭제한 아이디는 탈퇴처리 됩니다. 삭제하시겠습니까?");
		if(deleteConfirm){
			
			$.ajax({
				type: 'POST',
				url : "/shoppingmall/manager/userDelete.do",
				data : {
					chkbox : checkArr
				},
				success: function(){
					alert("삭제되었습니다");
					location.href = "/shoppingmall/manager/managerPage.do";
				}
			});
			
		}else {
			//없음
		}
	}
});
//-----------------------------
</script>