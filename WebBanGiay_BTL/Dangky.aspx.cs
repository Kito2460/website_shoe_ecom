using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebBanGiay_BTL
{
    public partial class Dangky : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string username = Request.Form.Get("username");
                string email = Request.Form.Get("email");
                string password = Request.Form.Get("password");
                string repassword = Request.Form.Get("re-password");
                List<NguoiDung> users = (List<NguoiDung>)Application["Users"];
                bool check = true;
                int a = 0;
                int b = 0;
                
                if(username == "")
                {
                    username_error.InnerHtml = "ko đc để trống";
                    check = false;
                }
                if(email == "")
                {
                    email_error.InnerHtml = "ko đc để trống";
                    check = false;
                }
                if(password == "")
                {
                    password_error.InnerHtml = "ko đc để trống";
                    check = false;
                }
                if(repassword == "")
                {
                    xnpassword_error.InnerHtml = "Ko đc để trống";
                    check = false;
                }
                
                
                    if (username != "" && email != "" && password != "" && repassword != "")
                    {
                    
                        foreach (NguoiDung user in users)
                        {
                            if (username == user.username)
                            {
                                btn_error.InnerHtml = "Tài khoản đã được sử dụng";
                                check = false;
                            }
                        }
                    
                    if (password != repassword)
                    {
                        email_error.InnerHtml = "";
                        password_error.InnerHtml = "";
                        username_error.InnerHtml = "";
                        xnpassword_error.InnerHtml = "mật khẩu ko trùng";
                        check = false;
                    }

                    if (username.Length < 8)
                    {
                        username_error.InnerHtml = "Tài khoản phải đủ 8 ký tự";
                        check = false;
                    }
                    for(int i = 0; i < username.Length; i++)
                    {
                        if(username[i]>='A' && username[i] <= 'Z')
                        {
                            a++;
                        }
                        if(username[i]>='0' && username[i] <= '9')
                        {
                            b++;
                        }
                    }
                    if (a == 0)
                    {
                        username_error.InnerHtml = "Tài khoản phải có ít nhất 1 chữ hoa";
                        check = false;
                    }
                    if (b == 0)
                    {
                        username_error.InnerHtml = "Tài khoản phải có ít nhất 1 chữ số";
                        check = false;
                    }
                    if (check==true)
                        {
                            btn_error.InnerHtml = "Đăng ký thành công";
                        email_error.InnerHtml = "";
                        password_error.InnerHtml = "";
                        username_error.InnerHtml = "";
                        xnpassword_error.InnerHtml = "";
                        NguoiDung newUser = new NguoiDung(username, email, password, repassword);
                            users.Add(newUser);
                            Application["Users"] = users;
                        }
                    }
                
            }
        }
    }
}