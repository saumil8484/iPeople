using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Onboarding : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\iPeopleDB.mdf;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        string query = "select Id,ename from [EmpTable] where ocomp = '" + "Pending" + "'";
        SqlCommand com = new SqlCommand(query, con);

        SqlDataAdapter sda = new SqlDataAdapter();
        sda.SelectCommand = com;

        DataTable dbdataset = new DataTable();
        sda.Fill(dbdataset);

        empgrid.DataSource = dbdataset;
        empgrid.DataBind();
        con.Close();
    }

    protected void linkselect_Click(object sender, EventArgs e)
    {
        string arg1 = Convert.ToString((sender as LinkButton).CommandArgument);
        Session["eid"] = arg1;
        Response.Redirect("Onboarding Details.aspx");

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Dashboard.aspx#recruitment");
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        ClientScript.RegisterStartupScript(typeof(Page), "closePage", "window.close();", true);
    }
}