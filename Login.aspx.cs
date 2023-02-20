using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\iPeopleDB.mdf;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    { 
        Label3.Text = "";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

        int flag = 0;
        string userid = uname.Text;
        string password = upass.Text;
        con.Open();
        string query = "select userid,password,utype from [LogTable]";
        SqlCommand com = new SqlCommand(query, con);
        SqlDataAdapter sda = new SqlDataAdapter();
        sda.SelectCommand = com;
        DataTable dt = new DataTable();
        sda.Fill(dt);
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            if (userid == dt.Rows[i][0].ToString())
            {
                if (password == dt.Rows[i][1].ToString())
                {
                    flag = 1;

                    if (dt.Rows[i][2].ToString() == "admin")
                    {
                        ScriptManager.RegisterStartupScript(Page, typeof(Page), "OpenWindow", "window.open('Dashboard.aspx');", true);
                        //ClientScript.RegisterStartupScript(typeof(Page), "closePage", "window.close();", true);
                    }
                    if (dt.Rows[i][2].ToString() == "emp")
                    {
                        Session["userid"] = userid;
                        ScriptManager.RegisterStartupScript(Page, typeof(Page), "OpenWindow", "window.open('Employee Home.aspx');", true);
                    }
                }
            }
        }
        if (flag == 0)
        {
            Label3.Text = "Incorrect login credentials!";

        }

        con.Close();

    }
}