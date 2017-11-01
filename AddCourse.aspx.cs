using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;


public partial class AddCourse : System.Web.UI.Page
{
    private OleDbConnection conn = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\\Users\\JEWEL\\Documents\\Visual Studio 2010\\WebSites\\Online-Examination-System\\Database\\Online-Exam.accdb");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
            string cnt1 = TextBox1.Text.Trim();
            string cnt2 = TextBox2.Text.Trim();
            if (cnt1 == "" || cnt2 == "")
            {
                Label1.Text = "Blank course name not allowed!!";
            }
            
            {
                DateTime first = DateTime.Now;
                string curtime = first.ToString("dd/MM/yyyy HH:mm:ss");
                OleDbCommand cmd = new OleDbCommand("INSERT INTO course (cname,description,status,creationDate,lastActivatedDate) VALUES ('" + cnt1 + "','" + cnt2 + "','active','" + curtime + "','" + curtime + "')");

                cmd.Connection = conn;
                conn.Open();

                if (conn.State == ConnectionState.Open)
                {
                    try
                    {
                        cmd.ExecuteNonQuery();
                        Label2.Text="Data Saved into the database!!";
                    }
                    catch(Exception et1)
                    {
                        Label2.Text=et1.ToString();
                    }
                    finally
                    {
                        conn.Close();
                    }
                }
                else
                {
                    Label2.Text="Connection Failed!!";
                }
            }
        }

    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = null;
        TextBox2.Text = null;
        Label2.Text = null;
    }
}
