<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!-- Large modal/���� ��ư�� ������ �� ������ ���â���� Ȯ�� (hidden���� ���� �־ ��ư ������ ������ �Ⱥ���)-->
<div class="modal fade bd-example-modal-lg" id="userModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content modalSample-managerPage">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalCenterTitle">ȸ�� ���� ����</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body modal-body-managerPage">
				<div class="input-group mb-3">
					<div class="input-group-prepend">
						<span class="input-group-text" id="inputGroup-sizing-default">�̸�</span>
					</div>
					<input type="text" id="modal-name" class="form-control" readonly>
				</div>
				<div class="input-group mb-3">
					<div class="input-group-prepend">
						<span class="input-group-text" id="inputGroup-sizing-default">���̵�</span>
					</div>
					<input type="text" id="modal-id" class="form-control" value="" readonly>
				</div>
				<div class="input-group mb-3">
					<div class="input-group-prepend">
						<span class="input-group-text" id="inputGroup-sizing-default">�̸���</span>
					</div>
					<input type="text" id="modal-email" class="form-control" value="" readonly>
				</div>
				<div class="input-group mb-3">
					<div class="input-group-prepend">
						<span class="input-group-text" id="inputGroup-sizing-default">ȸ�� ������</span>
					</div>
					<input type="text" id="modal-joinday" class="form-control" value="" readonly>
				</div>
				<div class="input-group mb-3">
					<div class="input-group-prepend">
						<span class="input-group-text" id="inputGroup-sizing-default">����ó</span>
					</div>
					<input type="text" id="modal-tel" class="form-control" value="" readonly>
				</div>
				<div class="input-group mb-3">
					<div class="input-group-prepend">
						<span class="input-group-text" id="inputGroup-sizing-default">���� ��ȣ</span>
					</div>
					<input type="text" id="modal-zipcode" class="form-control" value="" readonly>
				</div>
				<div class="input-group mb-3">
					<div class="input-group-prepend">
						<span class="input-group-text" id="inputGroup-sizing-default">���ּ�</span>
					</div>
					<input type="text" id="modal-addr1" class="form-control" value="" readonly>
				</div>
				<div class="input-group mb-3">
					<div class="input-group-prepend">
						<span class="input-group-text" id="inputGroup-sizing-default">���ּ�</span>
					</div>
					<input type="text" id="modal-addr2" class="form-control" value="" readonly>
				</div>
				<div class="input-group mb-3">
					<div class="input-group-prepend">
						<span class="input-group-text" id="inputGroup-sizing-default">���� ����Ʈ</span>
					</div>
					<input type="text" id="modal-point" class="form-control" value="">
				</div>
				<div class="input-group mb-3">
					<div class="input-group-prepend">
						<span class="input-group-text" id="inputGroup-sizing-default">���� ĳ��</span>
					</div>
					<input type="text" id="modal-cash" class="form-control" value="">
				</div>
				<div class="input-group mb-3">
					<div class="input-group-prepend">
						<span class="input-group-text" id="inputGroup-sizing-default">�� ���� �ݾ�</span>
					</div>
					<input type="text" id="modal-totalPay" class="form-control" value="" readonly>
				</div>
				<div class="input-group">
					<input type="text" class="form-control gradeArea" id="modal-grade">
					<div class="input-group-append">
						<button class="btn btn-outline-secondary dropdown-toggle"
							type="button" data-toggle="dropdown">ȸ�� ���</button>
						<div class="dropdown-menu">
							<a class="dropdown-item" id="general-grade">General</a> 
							<a class="dropdown-item" id="vip-grade">VIP</a> 
							<a class="dropdown-item" id="vvip-grade">VVIP</a>
						</div>
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">�ݱ�</button>
			</div>
		</div>
	</div>
</div>
<!-- Large modal/���� ��ư�� ������ �� ������ ���â���� Ȯ�� -->

<script>
	//ȸ�� ��� ���� ��� (--> modal popup ���� �������� �̵�)
	$('#general-grade').click(function(){
		$('#gradeArea').empty();
		$('#gradeArea').val('General');
	});
	
	$('#vip-grade').click(function(){
		$('#gradeArea').empty();
		$('#gradeArea').val('VIP');
	});
	
	$('#vvip-grade').click(function(){
		$('#gradeArea').empty();
		$('#gradeArea').val('VVIP');
	});
	//------------------------------------------------------------
	

</script>