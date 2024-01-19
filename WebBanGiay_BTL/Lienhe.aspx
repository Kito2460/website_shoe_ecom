﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Lienhe.aspx.cs" Inherits="WebBanGiay_BTL.Lienhe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="Style/HDvsFT.css">
    <link rel="stylesheet" href="Style/Lienhe.css">
    <title>Liên hệ</title>
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

    <form method="GET" action="#">
        <div class="content">
            <div class="auth">
                <div class="auth__header">
                    <h2>Gửi ý kiến phản hồi</h2>
                </div>
                <div class="auth__form">
                    <div class="form-control">
                        <label for="username">Tên của bạn</label>
                        <input type="text" id="usernameL">
                        <p>Error message</p>
                    </div>
                    <div class="form-control">
                        <label for="Email">Email</label>
                        <input type="email" id="Email">
                        <p>Error message</p>
                    </div>
                    <div class="form-control">
                        <label for="Review">Ý kiến của bạn</label>
                        <textarea name="Review" id="Review" cols="5"></textarea>
                        <p>Error message</p>
                    </div>
                    <input type="submit" name="submit" class="auth_btn" id="btnLogin" value="Gửi phản hồi" />
                </div>
            </div>
        </div>
    </form>

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
