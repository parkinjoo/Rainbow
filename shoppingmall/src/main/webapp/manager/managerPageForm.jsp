<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>������ ������ ������</title>
<link rel="stylesheet" href="../css/modifyform-style.css">
</head>
<body>
<form name="modifyCheckForm" id="modifyForm">
  <div class="modifyCheckDiv">
  	<table class="modifyCheckTable">
  	  <tr>
  	    <td>
  	      <span><strong>������ ���̵�� ��й�ȣ�� �Է����ּ���.</strong><br><br><br></span>
  	    </td>
  	  </tr>
  	  <tr>
  	    <td>
	      <input type="text" name="id" id="id" onkeyup="enterkey();" placeholder="ID" />
	    </td>
  	  </tr>
  	  <tr>
	    <td>
	      <input type="password" name="password" id="pwd" onkeyup="enterkey();" placeholder="PASSWORD" />
  		</td>
  	  </tr>
  	  <tr>
	   	<td>
	   	  <input type="button" id="inputBtn" value="�Է�" class="inputBtn" />
  		</td>
  	  </tr>
    </table>
  </div>
</form>
</body>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
$(document).ready(function() {
	 document.modifyCheckForm.id.focus();
});

$('#inputBtn').click(function(){
	var id=$('#id').val();
	var pwd=$('#pwd').val();

	if(id=='') {
		alert('���̵� �Է��� �ּ���.');
	}else if(pwd=='') {
		alert("��й�ȣ�� �Է����ּ���")
	}else {	
		$.ajax({
			type : 'POST',
			url : '/shoppingmall/user/managerLogin.do',
			data : {"id":id,
					"pwd":pwd},
			dataType : 'text',
			success : function(data){
				if(data=='loginFail'){
					alert("�ùٸ��� ���� �����Դϴ�. �ٽ� Ȯ�����ּ���.");
				}else if(data=='loginOk'){
					location.href='/shoppingmall/manager/managerPage.do';
				}
			}
		});	
	}
});

function enterkey() {
    if (window.event.keyCode == 13) {
    
         // ����Ű�� ������ �� ������ ����
         var id=$('#id').val();
		var pwd=$('#pwd').val();
	
		if(id=='') {
			alert('���̵� �Է��� �ּ���.');
		}else if(pwd=='') {
			alert("��й�ȣ�� �Է����ּ���")
		}else {	
			$.ajax({
				type : 'POST',
				url : '/shoppingmall/user/managerLogin.do',
				data : {"id":id,
						"pwd":pwd},
				dataType : 'text',
				success : function(data){
					if(data=='loginFail'){
						alert("�ùٸ��� ���� �����Դϴ�. �ٽ� Ȯ�����ּ���.");
					}else if(data=='loginOk'){
						location.href='/shoppingmall/manager/managerPage.do';
					}
				}
			});	
		}
    }
}
</script>

</html>