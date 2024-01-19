<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Gioithieu.aspx.cs" Inherits="WebBanGiay_BTL.Gioithieu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="Style/HDvsFT.css">
	<link rel="stylesheet" href="Style/Gioithieu.css">
    <title>Giới thiệu</title>
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
	 <div class="gioithieu">
        <div class="gioithieu_column_one">
            <img src="images/anh_giay1.jpg" alt="lỗi" width="100%">
        </div>
        <div class="gioithieu_column_two">
            <h2>Giới thiệu về Future Store</h2>
            <span>
                “Cùng với sự phát triển không ngừng của thời trang thế giới, rất nhiều thương hiệu cho ra đời những mẫu giày thể thao đa dạng về phong cách, kiểu dáng, màu sắc, kích cỡ… Một đôi giày thể thao chính hãng mang đến cho bạn cảm giác thoải mái, tự tin và năng động mỗi ngày.
                Hiện nay, Giày thể thao không còn xa lạ với tất cả mọi người bởi sự tiện dụng thoải mái và là phụ kiện thời trang không thể thiếu  .
                Trong tủ giày của mọi người luôn có sự xuất hiện của nhưng đôi giày thể thao .”
            </span>
        </div>
    </div>
    <div class="section_content">
        <div class="section_item">
            <div class="section_child">
                <h3>Hàng chính hãng</h3>
                <span>Hiện nay, Giày thể thao là phụ kiện thời trang phổ biến đối với mọi người trong cuộc sống hiện đại ngày nay</span>
            </div>
            <div class="section_child">
                <h3>Sản phẩm mới 100%</h3>
                <span>Hiện nay, Giày thể thao là phụ kiện thời trang phổ biến đối với mọi người trong cuộc sống hiện đại ngày nay</span>
            </div>
            <div class="section_child">
                <h3>Bảo hành 12 tháng</h3>
                <span>Hiện nay, Giày thể thao là phụ kiện thời trang phổ biến đối với mọi người trong cuộc sống hiện đại ngày nay</span>
            </div>
        </div>
        <div class="section_item">
            <div class="section_child">
                <h3>Đổi trả trong vòng 7 ngày</h3>
                <span>Hiện nay, Giày thể thao là phụ kiện thời trang phổ biến đối với mọi người trong cuộc sống hiện đại ngày nay</span>
            </div>
            <div class="section_child">
                <h3>Miễn phí giao hàng</h3>
                <span>
                   Hiện nay, Giày thể thao là phụ kiện thời trang phổ biến đối với mọi người trong cuộc sống hiện đại ngày nay
                </span>
            </div>
            <div class="section_child">
                <h3>Giá cả hợp lý</h3>
                <span>Hiện nay, Giày thể thao là phụ kiện thời trang phổ biến đối với mọi người trong cuộc sống hiện đại ngày nay</span>
            </div>
        </div>
    </div>
    <div class="section_img">
        <img src="images/anh_giay_trai.jpg" alt="photo" width="100%">
    </div>

    <div class="degi">

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
