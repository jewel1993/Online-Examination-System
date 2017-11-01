using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;


public partial class AddQuestions : System.Web.UI.Page
{
    private OleDbConnection conn = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\\Users\\JEWEL\\Documents\\Visual Studio 2010\\WebSites\\Online-Examination-System\\Database\\Online-Exam.accdb");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        string cnt1 = TextBox1.Text.Trim();
        string cnt2 = TextBox2.Text.Trim();
        string cnt3 = TextBox3.Text.Trim();
        if (cnt1 == "" || cnt2 == "" || cnt3 == "")
        {
            Label1.Text = "Blank course name not allowed!!";
        }

        {
            DateTime first = DateTime.Now;
            string curtime = first.ToString("dd/MM/yyyy HH:mm:ss");
            OleDbCommand cmd = new OleDbCommand("INSERT INTO questions (Instruction,question,correctOption,dificultyLevel,status,creationDate,lastActivatedDate) VALUES ('" + cnt2 + "','" + cnt3 + "','2','easy','active','" + curtime + "','" + curtime + "')");
            cmd.Connection = conn;
            conn.Open();

            if (conn.State == ConnectionState.Open)
            {
                try
                {
                    cmd.ExecuteNonQuery();
                    Label1.Text = "Data Saved into the database!!";
                }
                catch (Exception et1)
                {
                    Label1.Text = et1.ToString();
                }
                finally
                {
                    conn.Close();
                }
            }
            else
            {
                Label1.Text = "Connection Failed!!";
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = null;
        TextBox2.Text = null;
        TextBox3.Text = null;
        Label1.Text = null;
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        if (DropDownList1.SelectedIndex != 0)
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("TextBox");
            int count = Convert.ToInt32(DropDownList1.SelectedItem.Value);
            for (int i = 0; i < count; i++)
            {
                dt.Rows.Add("");
            }
            this.Repeater1.DataSource = dt;
            this.Repeater1.DataBind();
        }
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

    }
}