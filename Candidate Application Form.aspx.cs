using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Candidate_Application_Form : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\iPeopleDB.mdf;Integrated Security=True");
    int id1;
    string pname1;

    protected void Page_Load(object sender, EventArgs e)
    {
        pname1 = (string)Session["pname1"];
        genserial();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DateTime today = DateTime.Today;
        string tdate = today.ToString("d");
        string pend = "Pending";
        string query = "Insert into [AppTable] (Id,pname,aname,aphno,aemail,acvlink,adate,fdec) values ('" + id1 + "','" + pname1 + "','" + aname.Text + "','" + aphno.Text + "','" + aemail.Text + "', '" + acvlink.Text + "','" + tdate + "', '" + pend + "') ";
        SqlCommand com = new SqlCommand(query, con);
        con.Open();
        com.ExecuteNonQuery();
        con.Close();
        Response.Redirect("Careers Position Details.aspx");
    }

    public void genserial()
    {
        string query = "select isnull(max(cast(Id as int)),0)+1 from [AppTable]";
        SqlDataAdapter sda1 = new SqlDataAdapter(query, con);
        DataTable dt = new DataTable();
        sda1.Fill(dt);
        string ids = dt.Rows[0][0].ToString();
        id1 = Convert.ToInt32(ids);

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Careers Position Details.aspx");
    }
}