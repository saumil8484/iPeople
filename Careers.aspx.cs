using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Careers : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\iPeopleDB.mdf;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        string query = "select Id,pname,dept,pnosv from [PosTable] where pnosv>0";
        SqlCommand com = new SqlCommand(query, con);

        SqlDataAdapter sda = new SqlDataAdapter();
        sda.SelectCommand = com;

        DataTable dbdataset = new DataTable();
        sda.Fill(dbdataset);

        postgrid.DataSource = dbdataset;
        postgrid.DataBind();
        con.Close();
    }

    protected void linkselect_Click(object sender, EventArgs e)
    {
        string arg1 = Convert.ToString((sender as LinkButton).CommandArgument);
        Session["pid"] = arg1;
        Response.Redirect("Careers Position Details.aspx");

    }
}