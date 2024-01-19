using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebBanGiay_BTL
{
    public class NguoiDung
    {
        public string username;
        public string email;
        public string password;
        public string repassword;

        public NguoiDung(string username, string email, string password, string repassword)
        {
            this.username = username;
            this.email = email;
            this.password = password;
            this.repassword = repassword;
        }
        public string UserName
        {
            get { return username; }
            set { username = value; }
        }
        public string Email
        {
            get { return email; }
            set { email = value; }
        }
        public string PassWord
        {
            get { return password; }
            set { password = value; }
        }
        public string RePassWord
        {
            get { return repassword; }
            set { repassword = value; }
        }
    }
}