using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Response : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DateTime dt = DateTime.Now;
        string curtime = dt.ToString("dd/MM/yyyy hh:mm:ss");
        
        string totime= Session["end"].ToString();

        //$timefirst=strtotime($from_time1);
        DateTime second = DateTime.ParseExact(totime, "dd/MM/yyyy hh:mm:ss",null);
        TimeSpan diff=second.Subtract(dt);
        //string sdiff = diff.ToString("hh:mm:ss");
        Response.Write(diff);
        /*
        echo gmdate("H:i:s",$diff);*/
    }
}