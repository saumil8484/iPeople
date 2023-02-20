using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Employee_Payroll : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\iPeopleDB.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Payroll Generate.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        con.Open();
        string query = "select Id,ename,aperc,base,inc,net from [PayTable] where month='" + month1.Text + "'";
        SqlCommand com = new SqlCommand(query, con);
        SqlDataAdapter sda = new SqlDataAdapter();
        sda.SelectCommand = com;
        DataTable dbdataset = new DataTable();
        sda.Fill(dbdataset);
        GridView1.DataSource = dbdataset;
        GridView1.DataBind();
        con.Close();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Dashboard.aspx#Employees");
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        ClientScript.RegisterStartupScript(typeof(Page), "closePage", "window.close();", true);
    }
}