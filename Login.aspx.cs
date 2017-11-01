using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string cn1 = TextBox1.Text;
        string cn2 = TextBox2.Text;
        string cnt1 = cn1.Trim();
        string cnt2 = cn2.Trim();
        if (cnt1 == "admin")
        {
            Session["sadmin"] = 1;
            Response.Redirect("AdminDashboard.aspx");
        }
        else if (cnt1 == "user")
        {
            Session["sid"] = cnt1;
            Response.Redirect("Dashboard.aspx");
        }
        else
        {
            TextBox1.Text="Username does not exist";
        }
    }
}