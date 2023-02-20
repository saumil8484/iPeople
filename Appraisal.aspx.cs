using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Appraisal : System.Web.UI.Page
{
    string ids;
    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\iPeopleDB.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        string query1 = "select ename, month from [ApraisTable] where ename = '" + name.Text + "' and month ='" + month.Text + "'";
        SqlCommand com1 = new SqlCommand(query1, con);
        SqlDataAdapter sda1 = new SqlDataAdapter();
        sda1.SelectCommand = com1;
        DataTable dt1 = new DataTable();
        sda1.Fill(dt1);
        if (dt1.Rows.Count != 0)
        {
            l404.Text = "You have already filled appraisal for this employee!";
        }
        else
        {
            l404.Text = "";

            int sa1 = numcon(a1.Text);
            int sa2 = numcon(a2.Text);
            int sa3 = numcon(a3.Text);
            int sa4 = numcon(a4.Text);
            int sa5 = numcon(a5.Text);
            int sa6 = numcon(a6.Text);
            int sa7 = numcon(a7.Text);
            int sa8 = numcon(a8.Text);

            genserial();
            int id1 = Convert.ToInt32(ids);
            string query = "Insert into [ApraisTable] (Id,ename,month,a1,a2,a3,a4,a5,a6,a7,a8) values ('" + id1 + "','" + name.Text + "','" + month.Text + "','" + sa1 + "','" + sa2 + "','" + sa3 + "','" + sa4 + "','" + sa5 + "','" + sa6 + "','" + sa7 + "','" + sa8 + "') ";
            SqlCommand com = new SqlCommand(query, con);
            com.ExecuteNonQuery();

        }
        con.Close();

    }
    public int numcon(string x1)
    {
        if (x1 == "Strongly Agree")
        { return 5; }
        if (x1 == "Slightly Agree")
        { return 4; }
        if (x1 == "Neutral")
        { return 3; }
        if (x1 == "Slightly Disagree")
        { return 2; }
        if (x1 == "Strongly Disagree")
        { return 1; }
        return 0;
    }

    public void genserial()
    {

        string query = "select isnull(max(cast(Id as int)),0)+1 from [ApraisTable]";
        SqlDataAdapter sda1 = new SqlDataAdapter(query, con);
        DataTable dt = new DataTable();
        sda1.Fill(dt);
        ids = dt.Rows[0][0].ToString();

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Dashboard.aspx#Employees");
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        ClientScript.RegisterStartupScript(typeof(Page), "closePage", "window.close();", true);
    }
}