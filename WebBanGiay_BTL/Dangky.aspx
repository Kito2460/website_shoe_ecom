<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dangky.aspx.cs" Inherits="WebBanGiay_BTL.Dangky" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="Style/HDvsFT.css">
	<link rel="stylesheet" href="Style/Dangky.css">
	<script src="Check.js"></script>
    <title>Đăng nhập</title>
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

	<div class="content">
	<div id="reg-form" class="auth">
                <form action="Dangky.aspx" method="post" runat="server">
                <div class="auth__header">
                    <h2>Đăng ký</h2>
                    <a href="Dangnhap.aspx">Đăng nhập</a>
                </div>
                <div class="auth__form">
                    <p runat="server" id="username_error" style="color:red"></p>
                    <div class="form-control">
                        <label for="username">Tên đăng nhập</label>
                        <input type="text" id="username" placeholder="Nhập tên đăng nhập" name="username"/>
                        <p></p>
                    </div>
                    <p runat="server" id="email_error" style="color:red"></p>
                    <div class="form-control">
                        <label for="Email">Email</label>
                        <input type="email" id="Email" placeholder="abcd@gmail.com" name="email"/>
                        <p></p>
                    </div>
                    <p runat="server" id="password_error" style="color:red"></p>
                    <div class="form-control">
                        <label for="password">Mật khẩu</label>
                        <input type="password" id="password" placeholder="Nhập mật khẩu" name="password"/>                      
                        <p></p>
                    </div>
                    <p runat="server" id="xnpassword_error" style="color:red"></p>
                    <div class="form-control">
                        <label for="re-password">Xác nhận mật khẩu</label>
                        <input type="password" id="re-password" placeholder="Nhập lại mật khẩu" name="re-password"/>
                        <p></p>                       
                    </div>
                    <p runat="server" id="btn_error" style="color:red"></p>
                    <button class="auth_btn" id="btnReg" >Đăng ký</button>
                </div>
                </form>
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
        let form = document.querySelector('.auth__form');
        let username = document.getElementById('username');
        let email = document.getElementById('email');
        let password = document.getElementById('password');
        let repassword = document.getElementById('re-password');
        let inputs = form.querySelectorAll('.input');
        a = document.getElementById("username").value;
        // Check bỏ trống
        /*
        for (let i = 0; i < inputs.length; i++) {
            inputs[i].onblur = inputs[i].oninput = function () {
                if (inputs[i].value.trim()) {
                    setSuccessFor(inputs[i]);
                } else {
                    setErrorFor(inputs[i], 'Trường này không được bỏ trống');
                }
            }
        }
        */

        function setErrorFor(input, message) {
            const formControl = input.parentElement;
            const p = formControl.querySelector('p');
            p.innerText = message;
            formControl.className = 'form-control invalid';
            //input.focus();
        }

        function setSuccessFor(input) {
            const formControl = input.parentElement;
            const p = formControl.querySelector('p');
            p.innerText = '';
            formControl.className = 'form-control valid';
        }
        /*
        username.onblur = username.oninput = function () {
            if (username.value.trim().length < 6) {
                setErrorFor(username, 'Tên đăng nhập phải it nhất 6 ký tự');
            } else if (username.value.charAt(0)=="0") {
                setErrorFor(username, '111');
            }            
            else {
                setSuccessFor(username);
            }
        }
        */
        username.onblur = username.oninput = function () {
            if (username.value == "") {
                setErrorFor(username, 'Tên đăng nhập không được để trống');
            }            
            else {
                setSuccessFor(username);
            }
        }

        email.onblur = email.oninput = function () {
            if (email.value == "") {
                setErrorFor(email, 'Email không được để trống');
            }
            else {
                setSuccessFor(email);
            }
        }

        password.onblur = password.oninput = function () {
            if (password.value == "") {
                setErrorFor(password, 'Tên đăng nhập không được để trống');
            }
            else {
                setSuccessFor(password);
            }
        }
        // Check trùng password 
        repassword.onblur = repassword.oninput = function () {
            if (repassword.value.trim() === password.value.trim()) {
                setSuccessFor(repassword);
            } else {
                //setErrorFor(repassword, '');
                setErrorFor(repassword, 'Mật khẩu chưa trùng khớp');
            }
        }
        
        /*
        btnReg.onclick = function (e) {
            var valid = true;
            if (!(username.value.trim() || email.value.trim() || password.value.trim() || repassword.value.trim())) {
                //alert('Hãy điền đầy đủ các trường');
                let btn_error = document.getElementById('btn_error');
                btn_error.innerHTML = 'Hãy điền đầy đủ các trường';
                valid = false;
            }

            if (!username.value.trim()) {
                setErrorFor(username, 'Trường này không được bỏ trống');
                valid = false;
                console.log(valid);
            }
            else {
                setSuccessFor(username);
            }
            if (!email.value.trim()) {
                setErrorFor(email, 'Trường này không được bỏ trống');
                valid = false;
                console.log(valid);
            } else {
                setSuccessFor(email);
            }
            if (!password.value.trim()) {
                setErrorFor(password, 'Trường này không được bỏ trống');
                valid = false;
                console.log(valid);
            } else {
                setSuccessFor(password);
            }
            if (!repassword.value.trim()) {
                setErrorFor(repassword, 'Trường này không được bỏ trống');
                valid = false;
                console.log(valid);
            } else {
                setSuccessFor(repassword);
            }
            if (!valid) {
                e.preventDefault();
            }
        }
        */
    </script>

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
