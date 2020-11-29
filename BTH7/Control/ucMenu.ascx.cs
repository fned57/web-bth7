using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTH7.Control
{
    public partial class ucMenu : System.Web.UI.UserControl
    {
        static use u ;
        protected void Page_Load(object sender, EventArgs e)
        {
             u = (use)Session["use"];
            if (u == null)
            {
                Label1.Text = "";
                Button1.Text = "Đăng Nhập";
            }
            else
            {
                Button1.Text = "Đăng Xuất";
                Label1.Text = u.Getname();
            }
           
        }

        protected void danhnhap(object sender, EventArgs e)
        {
            if (u != null)
            {
                u = null;
                Session.Clear();
                Page_Load(sender, e);
                Response.Redirect("Default.aspx");
            }
            else
            {
                Response.Redirect("Login.aspx");
            }

        }
    }
}