﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Giohang.aspx.cs" Inherits="WebBanGiay_BTL.Giohang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<link rel="stylesheet" href="Style/HDvsFT.css">
	<link rel="stylesheet" href="Style/Giohang.css">
    <title>Giỏ hàng</title>
</head>
<body>   
		<div class="header">
		<div class="header_top" id="header-top">
			<p>Định Công, Hoàng Mai, Hà Nội</p>
			<div id="login" class="login" runat="server">
				<p class="user"></p>
				<a href="Dangnhap.aspx" title="Đăng nhập">Đăng nhập</a>
			</div>
		</div>
		<div class="header_mid">
			<a href="Trangchu.aspx">
				<img width="150" height="150" src="images/Logo.png" title="Giày">
			</a>
			<p style="color:white; font-size:60px; margin:auto;"> <i>Nâng niu bàn chân Việt</i></p>
		</div>
		<div class="header_bot" id="header-bot">
			<ul>
				<li><a href="Trangchu.aspx">Trang chủ</a></li>
				<li><a href="gioithieu.aspx">Giới thiệu</a></li>
				<li><a href="Giaynam.aspx">Giày nam</a></li>
				<li><a href="Giaynu.aspx">Giày nữ</a></li>
				<li><a href="Lienhe.aspx">Liên hệ</a></li>
				<li><a href="Giohang.aspx">Giỏ hàng</a></li>
				<a href="javascript:void(0);" style="font-size:35px;" class="icon" onclick="responsive() ">&#9776;</a>
			</ul>
		</div>
	</div>

        <div class="main">
		<p class="sogiohang" id="sogiohang" runat="server"></p>
		<div class="cart_product">
			<table class="bang">
						<tr>
							<th>Ảnh</th>
							<th>Tên sản phẩm</th>
							<th>Giá</th>
							<th>Tác vụ</th>
						</tr>
			<asp:ListView ID="ListViewCart" runat="server">
				<ItemTemplate>
						<tr>
							<td class="td1"><img src= "<%# Eval("Images") %>" class="anh" /></td>
							<td><p><%# Eval("Name") %></p></td>
							<td><p><%# Eval("Price") %> đồng</p></td>
							<td><a href="Xoa.aspx?id=<%#Eval("Id")%>" class="xoa"><button class="xoa">Xóa</button></a></td>
						</tr>
				</ItemTemplate>
			</asp:ListView>
			</table>
		</div>
		<div class="cart_price">
			<div class="cart--right">
                    <h2 class="cart__title--right">Đơn hàng<br></h2>
                    <div class="cart__products-total-price">
                        <p>Tổng tiền sản phẩm</p>
                        <p runat="server" id="products_price">0 <span class="cart__product-price-unit">đ</span></p>
                    </div>
                    
                    <div class="cart__order-total">
                        <p>Tổng cộng: </p>
                        <p runat="server" id="order_total_price">0 <span class="cart__product-price-unit">đ</span></p>
                    </div>
                    
                    <div class="cart__buttons--right">
                        <button class="purchase-button" type="button">Thanh toán</button>
                    </div>
                </div>
		</div>
	</div>

		<div class="footter">
			<div class="footter_top">
				<div class="Thongtinlienhe">
					<h1>Thông Tin Liên Hệ</h1>
					<p>Địa chỉ: Định Công, Hoàng Mai, Hà Nội </p>
					<p>SĐT: 1910192092</p>
					<p>Gmail: abc1234@gmail.com</p>
				</div>
				<div class="Lienket">
					<h1>Liên Kết</h1>
					<ul>
						<li><a href="gioithieu.aspx">Giới thiệu</a></li>
						<li><a href="Giaynam.aspx">Giày nam</a></li>
						<li><a href="Giaynu.aspx">Giày nữ</a></li>
						<li><a href="Lienhe.aspx">Liên hệ</a></li>
					</ul>
				</div>
				<div class="Lienket">
					<h1>Hỗ Trợ</h1>
					<ul>
						<li><a href="#">Hướng dẫn mua hàng</a></li>
						<li><a href="#">Hướng dẫn thanh toán</a></li>
						<li><a href="#">Chính sách bảo hành</a></li>
						<li><a href="#">Chính sách đổi trả</a></li>
						<li><a href="#">Tư vấn khách hàng</a></li>
					</ul>
				</div>
			</div>
			<div class="footter_bot">
				<div class="copyright">
					© Khoa công nghê thông tin - Đại học Mở Hà Nội
				</div>
			</div>
		</div>
    
	<script>
		   function responsive() {
			   var x = document.getElementById("header-bot");
			   if (x.className === "header_bot")
				   x.className += "responsive";
			   else
				   x.className = "header_bot";
           }
    </script>
</body>
</html>
