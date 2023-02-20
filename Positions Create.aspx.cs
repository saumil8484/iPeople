using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Positions_Create : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\iPeopleDB.mdf;Integrated Security=True");
    int id1;

    protected void Page_Load(object sender, EventArgs e)
    {
        genserial();
        pid.Text = Convert.ToString(id1);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Job Positions.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

        string query = "Insert into [PosTable] (Id,pname,dept,jd1,jd2,jd3,jd4,jd5,elreq1,elreq2,elreq3,kpi1,target1,kpi2,target2,kpi3,target3,psal,pinc,plev,pbos,pnos,pnosv) values ('" + id1 + "','" + pname.Text + "','" + pdept.Text + "','" + pjd1.Text + "','" + pjd2.Text + "','" + pjd3.Text + "','" + pjd4.Text + "','" + pjd5.Text + "','" + preq1.Text + "','" + preq2.Text + "','" + preq3.Text + "','" + kpi1.Text + "','" + pt1.Text + "','" + kpi2.Text + "','" + pt2.Text + "','" + kpi3.Text + "','" + pt3.Text + "','" + psal.Text + "','" + pinc.Text + "','" + pleaves.Text + "','" + pbossid.Text + "','" + pno.Text + "','" + pno.Text + "') ";
        SqlCommand com = new SqlCommand(query, con);
        con.Open();
        com.ExecuteNonQuery();
        con.Close();
        Response.Redirect("Job Positions.aspx");
    }

    public void genserial()
    {
        string query = "select isnull(max(cast(Id as int)),0)+1 from [PosTable]";
        SqlDataAdapter sda1 = new SqlDataAdapter(query, con);
        DataTable dt = new DataTable();
        sda1.Fill(dt);
        string ids = dt.Rows[0][0].ToString();
        id1 = Convert.ToInt32(ids);

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        ClientScript.RegisterStartupScript(typeof(Page), "closePage", "window.close();", true);
    }
}