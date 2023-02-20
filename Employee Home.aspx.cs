using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Employee_Home : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\iPeopleDB.mdf;Integrated Security=True");
    string userid1;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        userid1 = (string)Session["userid"];
        Session["userid3"] = userid1;

        string userid = (string)Session["userid3"];
        if (!IsPostBack)
        {
            con.Open();
            string query = "select ename from [EmpTable] where eemail='" + userid + "' ";
            SqlDataAdapter sda1 = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            sda1.Fill(dt);


            
            Label1.Text = dt.Rows[0][0].ToString();
            con.Close();
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["userid2"] = userid1;
        Response.Redirect("Employee Info.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["userid2"] = userid1;
        Response.Redirect("Employee Survey.aspx");
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        ClientScript.RegisterStartupScript(typeof(Page), "closePage", "window.close();", true);
    }
}