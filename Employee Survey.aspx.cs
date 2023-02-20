using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class Employee_Survey : System.Web.UI.Page
{
    string ids;
    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\iPeopleDB.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        string userid = (string)Session["userid2"];
        con.Open();

        string query = "select ename from [EmpTable] where eemail = '" + userid + "'";
        SqlCommand com = new SqlCommand(query, con);
        SqlDataAdapter sda = new SqlDataAdapter();
        sda.SelectCommand = com;
        DataTable dbdataset = new DataTable();
        sda.Fill(dbdataset);
        name.Text = dbdataset.Rows[0][0].ToString();
        con.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        string query1 = "select ename, month from [EsurTable] where ename = '" + name.Text + "' and month ='" + month.Text + "'";
        SqlCommand com1 = new SqlCommand(query1, con);
        SqlDataAdapter sda1 = new SqlDataAdapter();
        sda1.SelectCommand = com1;
        DataTable dt1 = new DataTable();
        sda1.Fill(dt1);
        if (dt1.Rows.Count != 0)
        {
            l404.Text = "You have already filled survey for this month!";
        }
        else
        {
            l404.Text = "";
            genserial();
            //1a,1b,2a,2b,3,4,5,6a,6b,7,8a,8b,8c,9,10,11,12;
            int sa1 = numcon(a1.Text);
            int sb1 = numcon(b1.Text);
            int sa2 = numcon(a2.Text);
            int sb2 = numcon(b2.Text);
            int sa3 = numcon(a3.Text);
            int sa4 = numcon(a4.Text);
            int sa5 = numcon(a5.Text);
            int sa6 = numcon(a6.Text);
            int sb6 = numcon(b6.Text);
            int sa7 = numcon(a7.Text);
            int sa8 = numcon(a8.Text);
            int sb8 = numcon(b8.Text);
            int sc8 = numcon(c8.Text);
            int sa9 = numcon(a9.Text);
            int sa10 = numcon(a10.Text);
            int sa11 = numcon(a11.Text);
            int sa12 = numcon(a12.Text);

            int id1 = Convert.ToInt32(ids);
            //Label2.Text = sb1.ToString();
            string query = "Insert into [EsurTable] (Id,ename,month,a1,b1,a2,b2,a3,a4,a5,a6,b6,a7,a8,b8,c8,a9,a10,a11,a12) values ('" + id1 + "','" + name.Text + "','" + month.Text + "','" + sa1 + "','" + sb1 + "','" + sa2 + "','" + sb2 + "','" + sa3 + "','" + sa4 + "','" + sa5 + "','" + sa6 + "','" + sb6 + "','" + sa7 + "','" + sa8 + "','" + sb8 + "','" + sc8 + "','" + sa9 + "','" + sa10 + "','" + sa11 + "','" + sa12 + "') ";
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

        string query = "select isnull(max(cast(Id as int)),0)+1 from [EsurTable]";
        SqlDataAdapter sda1 = new SqlDataAdapter(query, con);
        DataTable dt = new DataTable();
        sda1.Fill(dt);
        ids = dt.Rows[0][0].ToString();

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Employee Home.aspx");
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        ClientScript.RegisterStartupScript(typeof(Page), "closePage", "window.close();", true);
    }
}