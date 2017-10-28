using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class About : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            DateTime dt = DateTime.Now;
            string sdt = dt.ToString("dd/MM/yyyy hh:mm:ss");
            DateTime adt = dt.AddMinutes(3);
            string sadt = adt.ToString("dd/MM/yyyy hh:mm:ss");
            Session["start"] = sdt;
            Session["end"] = sadt;
            Label1.Text = sadt;
            Response.Redirect("Default2.aspx");
        }
        else
            Label1.Text = "Session is off";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Clear();
    }
}
