using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class Onboarding_Details : System.Web.UI.Page
{
    String eid1, ids;
    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\iPeopleDB.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        eid1 = (string)Session["eid"];
        if (!IsPostBack)
        {
            con.Open();
            string query = "select Id,aid,pname,ename,ephone,eemail,verified1,etaddr,apaddr,verified2,edoj,ebldgrp,emarry,efamphn,eaddrproof from [EmpTable] where Id='" + eid1 + "' ";
            SqlDataAdapter sda1 = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            sda1.Fill(dt);

            eid.Text = dt.Rows[0][0].ToString();
            aid.Text = dt.Rows[0][1].ToString();
            pname.Text = dt.Rows[0][2].ToString();
            ename.Text = dt.Rows[0][3].ToString();
            ephone.Text = dt.Rows[0][4].ToString();
            eemail.Text = dt.Rows[0][5].ToString();
            verified1.Text = dt.Rows[0][6].ToString();
            etaddr.Text = dt.Rows[0][7].ToString();
            epaddr.Text = dt.Rows[0][8].ToString();
            verified2.Text = dt.Rows[0][9].ToString();
            edoj.Text = dt.Rows[0][10].ToString();
            ebldgrp.Text = dt.Rows[0][11].ToString();
            emarry.Text = dt.Rows[0][12].ToString();
            efamphn.Text = dt.Rows[0][13].ToString();
            eaddrproof.Text = dt.Rows[0][14].ToString();

            con.Close();

            DateTime today = DateTime.Today;
            string tdate = today.ToString("d");
            edoj.Text = tdate;

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        genserial();
        string query = "update [EmpTable] set verified1='" + verified1.Text + "',  etaddr='" + etaddr.Text + "', apaddr='" + epaddr.Text + "', verified2='" + verified2.Text + "', edoj='" + edoj.Text + "', ebldgrp ='" + ebldgrp.Text + "', emarry='" + emarry.Text + "', efamphn='" + efamphn.Text + "', eaddrproof='" + eaddrproof.Text + "',  ocomp='" + ocomp.Text + "' where Id='" + eid1 + "' ";
        string query2 = "insert into [LogTable] (Id,userid,password,utype) values ('" + ids + "','" + eemail.Text + "','" + password.Text + "','" + "emp" + "')";
        SqlCommand com = new SqlCommand(query, con);
        SqlCommand com2 = new SqlCommand(query2, con);
        con.Open();
        com.ExecuteNonQuery();
        com2.ExecuteNonQuery();
        con.Close();
        Response.Redirect("Onboarding.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Onboarding.aspx");
    }

    public void genserial()
    {

        string query = "select isnull(max(cast(Id as int)),0)+1 from [LogTable]";
        SqlDataAdapter sda1 = new SqlDataAdapter(query, con);
        DataTable dt = new DataTable();
        sda1.Fill(dt);
        ids = dt.Rows[0][0].ToString();

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        ClientScript.RegisterStartupScript(typeof(Page), "closePage", "window.close();", true);
    }
}