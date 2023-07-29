<%@page import="quanLySanPham.SanPham"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bài tập quản lý sản phẩm</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body>

	<div class="container mt-4 border p-5" >
		<h1 >QUẢN LÝ SẢN PHẨM</h1>
		<form action="http://localhost:8080/BT_Buoi_29_ServletJSP/qlsp"
			method="post">
			<div class="mb-3">
				<label for="formGroupExampleInput" class="form-label fs-3" >Tên sản phẩm</label> 
				<input type="text" class="form-control" id="formGroupExampleInput" style ="width: 40%" name = "tensp">
			</div>
				<div class="mb-3">
				<label for="formGroupExampleInput" class="form-label fs-3" >Số lượng</label> 
				<input type="number" class="form-control" id="formGroupExampleInput" style ="width: 40%" name = "soLuong">
			</div>
			
				<div class="mb-3">
				<label for="formGroupExampleInput" class="form-label fs-3" >Giá bán</label> 
				<input type="number" class="form-control" id="formGroupExampleInput" style ="width: 40%" name = "giaBan">
			</div>
			
			<div class="col-auto">
    			<button type="submit" class="btn btn-primary">Lưu lại</button>
 			</div>
 			
		</form>
		
		<table class="table table-bordered mt-5">
		  <thead>
		    <tr>
		      <th scope="col" style = "width:5%" class = "text-center">STT</th>
		      <th scope="col">Tên Sản Phẩm</th>
		      <th scope="col">Số Lượng</th>
		      <th scope="col">Giá Bán</th>
		      <th scope="col" style = "width:15%">Thao tác</th>
		    </tr>
		  </thead>
		  
		  <tbody>
		   <%List <SanPham> list =(List<SanPham>) request.getAttribute("ListSanPham"); 
				if (list != null){
			   		for (int i = 0; i < list.size();i++) {%>
			   		
			    <tr>
			      <th scope="row" class = "text-center"><%= i+1%></th>
			      <td><%= list.get(i).getTen() %></td>
			      <td><%= list.get(i).getSoLuong() %></td>
			      <td><%= list.get(i).getGiaBan() %></td>
			      <td class = "d-flex">
			      	<form action="http://localhost:8080/BT_Buoi_29_ServletJSP/qlsp" method="post" >
						<div class="col-auto">
			    			<button type="submit" class="btn btn-danger by-1" name = "delete" value = "button" 
			    			style ="padding :.075rem .75rem">Xóa</button>
			 			</div>
			 		</form>
			 		<!-- <form action="http://localhost:8080/BT_Buoi_29_ServletJSP/qlsp" method="post">
						<div class="col-sm-3 ms-4">
			    			<button type="submit" class="btn btn-primary by-1" name = "edit" value = "button" 
			    			style ="padding :.075rem .75rem">Sửa</button>
			 			</div>
			 		</form> -->
			 	  </td>
			      <%}%>
			      
		      <%}%>
		    </tr>
		  </tbody>
		</table>
		<form action="http://localhost:8080/BT_Buoi_29_ServletJSP/qlsp" method="post">
			<div class="col-auto">
    			<button type="submit" class="btn btn-primary" name = "clear" value = "button" >Xóa tất cả dữ liệu</button>
 			</div>
		</form>
		
	</div>
	
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
</body>
</html>