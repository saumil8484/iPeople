using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Personal_Info : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\iPeopleDB.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        string userid = (string)Session["userid2"];
        if (!IsPostBack)
        {
            con.Open();
            string query = "select ename,ephone,eemail,etaddr,apaddr,ebldgrp,emarry,efamphn from [EmpTable] where eemail='" + userid + "' ";
            SqlDataAdapter sda1 = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            sda1.Fill(dt);
            
                
            ename.Text = dt.Rows[0][0].ToString();
            ephone.Text = dt.Rows[0][1].ToString();
            eemail.Text = dt.Rows[0][2].ToString();
            etaddr.Text = dt.Rows[0][3].ToString();
            epaddr.Text = dt.Rows[0][4].ToString();
            ebldgrp.Text = dt.Rows[0][5].ToString();
            emarry.Text = dt.Rows[0][6].ToString();
            efamphn.Text = dt.Rows[0][7].ToString();
                
            

            con.Close();
        }


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string query = "update [EmpTable] set ename='" + ename.Text + "', ephone='" + ephone.Text + "', etaddr='" + etaddr.Text + "', apaddr='" + epaddr.Text + "',ebldgrp='" + ebldgrp.Text + "',emarry='" + emarry.Text + "',efamphn='" + efamphn.Text + "' where eemail='" + eemail.Text + "' ";
        SqlCommand com = new SqlCommand(query, con);
        con.Open();
        com.ExecuteNonQuery();
        con.Close();
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