using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Data.OleDb;
using System.Data;

public partial class Exam : System.Web.UI.Page
{
    private OleDbConnection conn = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\\Users\\JEWEL\\Documents\\Visual Studio 2010\\WebSites\\Online-Examination-System\\Database\\Online-Exam.accdb");
    public int limit;
    private int i
    {
        get {
            if (Session["i"] == null)
            {
                Session["i"] = 0;
                return 0;
            }
            return (int)Session["i"];
        }
        set{
            Session["i"] = value;
        }
    }
    DataTable tb = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        //Session["i"] = null;
        if(Session["exam"] == null)
            Response.Redirect("Result.aspx");
        OleDbCommand cmd = new OleDbCommand("SELECT * FROM questions");
        cmd.Connection = conn;
        conn.Open();
        OleDbDataAdapter adapter = new OleDbDataAdapter(cmd);
        adapter.Fill(tb);
        Label3.Text = tb.Rows[i]["Instruction"].ToString();
        Label2.Text = tb.Rows[i]["question"].ToString();
        string qid = tb.Rows[i]["ID"].ToString();
        limit = tb.Rows.Count;
        if ((int)Session["i"] == limit-1)
            Session["i"] = null;
        /*
        if(((int)Session["i"])==0)
            i=limit-1;*/
        OleDbCommand cmd1 = new OleDbCommand("SELECT * FROM questionOption where qID=" + qid + "");
        cmd1.Connection = conn;
        OleDbDataReader dr1 = cmd1.ExecuteReader();
        int value = 1;
        RadioButtonList1.Items.Clear();
        while (dr1.Read())
        {
            ListItem item = new ListItem();
            item.Text = "    " + dr1["option"].ToString();
            item.Value = value.ToString();
            RadioButtonList1.Items.Add(item);
            value++;
        }
        conn.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["exam"] = null;
        UpdateTimer.Enabled = false;
        Response.Redirect("Result.aspx");
    }
    protected void UpdateTimer_Tick(object sender, EventArgs e)
    {
        DateTime first = DateTime.Now;
        string curtime = first.ToString("dd/MM/yyyy HH:mm:ss");
        string totime = (string)Session["end"];
        DateTime second = DateTime.ParseExact(totime, "dd/MM/yyyy HH:mm:ss", CultureInfo.InvariantCulture);
        TimeSpan diff = second.Subtract(first);
        string hdiff = string.Format("{0:hh}", diff);
        string mdiff = string.Format("{0:mm}", diff);
        string sdiff = string.Format("{0:ss}", diff);
        if (hdiff == "00" && mdiff == "00" && sdiff == "00" || Session["exam"] == null)
        {
            Session["exam"] = null;
            Session["end"] = null;
            Session["start"] = null;
            Response.Redirect("Result.aspx");
        }
        else if (hdiff == "00")
        {
            string responseString = mdiff + ":" + sdiff;
            DateStampLabel.Text = responseString;
        }
        else
        {
            string responseString = hdiff + ":" + mdiff + ":" + sdiff;
            DateStampLabel.Text = responseString;
        }
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        ++i;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        --i;
    }
}