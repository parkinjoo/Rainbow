<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<div class="modal fade bd-example-modal-xl" id="itemModal" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-xl">
    <div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalCenterTitle">새 상품 등록</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body modal-body-managerPage">
				<div class="input-group mb-3 addnewItemDiv1grid">
					<div class="input-group-prepend">
						<span class="input-group-text" id="inputGroup-sizing-default">상품 코드</span>
					</div>
					<input type="text" id="modal-name" class="form-control">
				</div>
				<div class="input-group mb-3 addnewItemDiv1grid">
					<div class="input-group-prepend">
						<span class="input-group-text" id="inputGroup-sizing-default">상품명</span>
					</div>
					<input type="text" id="modal-name" class="form-control">
				</div>
				<div class="container">
					<div class="row">
						<div class="col">
							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text" id="inputGroup-sizing-default">판매 단가</span>
								</div>
								<input type="text" id="modal-name" class="form-control">
							</div>
						</div>
						<div class="col">
							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text" id="inputGroup-sizing-default">상품 원가</span>
								</div>
								<input type="text" id="modal-name" class="form-control">
							</div>
						</div>
					</div>
				</div>
				<div class="tableDivModal">
					<table class="table">
						<thead class="thead-dark">
							<tr>
								<th scope="col">색상/사이즈</th>
								<th scope="col">S(90)</th>
								<th scope="col">M(95)</th>
								<th scope="col">L(100)</th>
								<th scope="col">XL(105)</th>
								<th scope="col">FREE</th>
								<th scope="col">TOTAL</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row"><input type="text" name="col1" id="col1"
									size="10" class="colInputModal" list="col1List"
									placeholder="색상1 입력">

									<div id="col1Div"></div> <datalist id="col1List">
										<option value="black">
										<option value="white">
										<option value="navy">
										<option value="beige">
										<option value="charcoal">
									</datalist></th>

								<td><input type="number" min="0" step="10" name="col1s"
									id="col1s" value="0" class="sizeInputModal">
									<div id="col1sDiv"></div></td>
								<td><input type="number" min="0" step="10"
									class="sizeInputModal" name="col1m" id="col1m" value="0">
									<div id="col1mDiv"></div></td>
								<td><input type="number" min="0" step="10"
									class="sizeInputModal" name="col1l" id="col1l" value="0">
									<div id="col1lDiv"></div></td>
								<td><input type="number" min="0" step="10"
									class="sizeInputModal" name="col1x" id="col1x" value="0">
									<div id="col1xDiv"></div></td>
								<td><input type="number" min="0" step="10"
									class="sizeInputModal" name="col1f" id="col1f" value="0">
									<div id="col1fDiv"></div></td>
								<td><input type="text" name="col1tot" id="col1tot"
									value="0" size="5" class="sizeInputModal" readonly></td>
							</tr>

							<tr>
								<th scope="row"><input type="text" name="col2" id="col2"
									size="10" class="colInputModal" list="col2List"
									placeholder="색상2 입력">

									<div id="col2Div"></div> <datalist id="col2List">
										<option value="black">
										<option value="white">
										<option value="navy">
										<option value="beige">
										<option value="charcoal">
									</datalist></th>

								<td><input type="number" min="0" step="10" name="col2s"
									id="col2s" value="0" class="sizeInputModal">
									<div id="col2sDiv"></div></td>

								<td><input type="number" min="0" step="10"
									class="sizeInputModal" name="col2m" id="col2m" value="0">
									<div id="col2mDiv"></div></td>
								<td><input type="number" min="0" step="10"
									class="sizeInputModal" name="col2l" id="col2l" value="0">
									<div id="col2lDiv"></div></td>
								<td><input type="number" min="0" step="10"
									class="sizeInputModal" name="col2x" id="col2x" value="0">
									<div id="col2xDiv"></div></td>
								<td><input type="number" min="0" step="10"
									class="sizeInputModal" name="col2f" id="col2f" value="0">
									<div id="col2fDiv"></div></td>
								<td><input type="text" name="col2tot" id="col2tot"
									value="0" size="5" class="sizeInputModal" readonly></td>
							</tr>

							<tr>
								<th scope="row"><input type="text" name="col3" id="col3"
									size="10" class="colInputModal" list="col3List"
									placeholder="색상3 입력">

									<div id="col3Div"></div> <datalist id="col3List">
										<option value="black">
										<option value="white">
										<option value="navy">
										<option value="beige">
										<option value="charcoal">
									</datalist></th>

								<td><input type="number" min="0" step="10" name="col3s"
									id="col3s" value="0" class="sizeInputModal">
									<div id="col3sDiv"></div></td>

								<td><input type="number" min="0" step="10"
									class="sizeInputModal" name="col3m" id="col3m" value="0">
									<div id="col3mDiv"></div></td>
								<td><input type="number" min="0" step="10"
									class="sizeInputModal" name="col3l" id="col3l" value="0">
									<div id="col3lDiv"></div></td>
								<td><input type="number" min="0" step="10"
									class="sizeInputModal" name="col3x" id="col3x" value="0">
									<div id="col3xDiv"></div></td>
								<td><input type="number" min="0" step="10"
									class="sizeInputModal" name="col3f" id="col3f" value="0">
									<div id="col3fDiv"></div></td>
								<td><input type="text" name="col3tot" id="col3tot"
									value="0" size="5" class="sizeInputModal" readonly></td>
							</tr>

							<tr>
								<th scope="row"><input type="text" name="col4" id="col4"
									size="10" class="colInputModal" list="col4List"
									placeholder="색상4 입력">

									<div id="col4Div"></div> <datalist id="col4List">
										<option value="black">
										<option value="white">
										<option value="navy">
										<option value="beige">
										<option value="charcoal">
									</datalist></th>

								<td><input type="number" min="0" step="10" name="col4s"
									id="col4s" value="0" class="sizeInputModal">
									<div id="col4sDiv"></div></td>

								<td><input type="number" min="0" step="10"
									class="sizeInputModal" name="col4m" id="col4m" value="0">
									<div id="col4mDiv"></div></td>
								<td><input type="number" min="0" step="10"
									class="sizeInputModal" name="col4l" id="col4l" value="0">
									<div id="col4lDiv"></div></td>
								<td><input type="number" min="0" step="10"
									class="sizeInputModal" name="col4x" id="col4x" value="0">
									<div id="col4xDiv"></div></td>
								<td><input type="number" min="0" step="10"
									class="sizeInputModal" name="col4f" id="col4f" value="0">
									<div id="col4fDiv"></div></td>
								<td><input type="text" name="col4tot" id="col4tot"
									value="0" size="5" class="sizeInputModal" readonly></td>
							</tr>

							<tr>
								<th scope="row"></th>

								<td><input type="number" min="0" step="10" name="col4f"
									id="col4f" value="0" class="sizeInputModal">
									<div id="col4fDiv"></div></td>

								<td><input type="number" min="0" step="10"
									class="sizeInputModal" name="col4f" id="col4f" value="0">
									<div id="col4fDiv"></div></td>
								<td><input type="number" min="0" step="10"
									class="sizeInputModal" name="col4f" id="col4f" value="0">
									<div id="col4fDiv"></div></td>
								<td><input type="number" min="0" step="10"
									class="sizeInputModal" name="col4f" id="col4f" value="0">
									<div id="col4fDiv"></div></td>
								<td><input type="number" min="0" step="10"
									class="sizeInputModal" name="col4f" id="col4f" value="0">
									<div id="col4fDiv"></div></td>
								<td><input type="text" name="col4ftot" id="col4ftot"
									value="0" size="5" class="sizeInputModal" readonly></td>
							</tr>

						</tbody>
					</table>
				</div>

				<div class="input-group itemExplain">
					<div class="input-group-prepend">
						<span class="input-group-text">상품 설명</span>
					</div>
					<textarea class="form-control" aria-label="With textarea"></textarea>
				</div>

				<div class="input-group mb-3 imageUploadDiv">
					<div class="input-group-prepend">
						<span class="input-group-text" id="inputGroupFileAddon01">이미지
							1</span>
					</div>
					<div class="custom-file">
						<input type="file" class="custom-file-input" id="inputGroupFile01"
							aria-describedby="inputGroupFileAddon01"> <label
							class="custom-file-label" for="inputGroupFile01">Choose
							file</label>
					</div>
				</div>

				<div class="input-group mb-3 imageUploadDiv">
					<div class="input-group-prepend">
						<span class="input-group-text" id="inputGroupFileAddon01">이미지
							2</span>
					</div>
					<div class="custom-file">
						<input type="file" class="custom-file-input" id="inputGroupFile01"
							aria-describedby="inputGroupFileAddon01"> <label
							class="custom-file-label" for="inputGroupFile01">Choose
							file</label>
					</div>
				</div>

				<div class="input-group mb-3 imageUploadDiv">
					<div class="input-group-prepend">
						<span class="input-group-text" id="inputGroupFileAddon01">이미지
							3</span>
					</div>
					<div class="custom-file">
						<input type="file" class="custom-file-input" id="inputGroupFile01"
							aria-describedby="inputGroupFileAddon01"> <label
							class="custom-file-label" for="inputGroupFile01">Choose
							file</label>
					</div>
				</div>

				<div class="input-group mb-3 imageUploadDiv">
					<div class="input-group-prepend">
						<span class="input-group-text" id="inputGroupFileAddon01">이미지
							4</span>
					</div>
					<div class="custom-file">
						<input type="file" class="custom-file-input" id="inputGroupFile01"
							aria-describedby="inputGroupFileAddon01"> <label
							class="custom-file-label" for="inputGroupFile01">Choose
							file</label>
					</div>
				</div>

				<div class="input-group mb-3 addnewItemDiv1grid">
					<div class="input-group-prepend">
						<span class="input-group-text" id="inputGroup-sizing-default">키워드</span>
					</div>
					<input type="text" id="modal-name" class="form-control">
				</div>


				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-primary">등록하기</button>
					<button type="reset" class="btn btn-primary">다시 쓰기</button>
				</div>
			</div>

  </div>
</div>