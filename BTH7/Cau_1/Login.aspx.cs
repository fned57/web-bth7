using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTH7
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            use u = new use();
            u.Setname(TextBox1.Text);
            u.Setpas(TextBox2.Text);
            Session["use"] = u;
            Response.Redirect("Default.aspx");
        }
    }
}