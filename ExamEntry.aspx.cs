using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;

public partial class ExamEntry : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["exam"] = "test";
        DateTime dt = DateTime.Now;
        string sdt = dt.ToString("dd/MM/yyyy HH:mm:ss");
        DateTime adth = dt.AddHours(1);
        DateTime adtm = adth.AddMinutes(1);
        string sadt = adtm.ToString("dd/MM/yyyy HH:mm:ss");
        Session["start"] = sdt;
        Session["end"] = sadt;
        Response.Redirect("Exam.aspx");
    }
}