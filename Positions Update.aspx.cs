using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Positions_Update : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\iPeopleDB.mdf;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        string pid1 = (string)Session["pid"];
        pid.Text = pid1;

        if (!IsPostBack)
        {
            con.Open();
            string query = "select pname,dept,jd1,jd2,jd3,jd4,jd5,elreq1,elreq2,elreq3,kpi1,target1,kpi2,target2,kpi3,target3,psal,pinc,plev,pbos,pnos,pnosv from [PosTable] where Id='" + pid1 + "' ";
            SqlDataAdapter sda1 = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            sda1.Fill(dt);
            pname.Text = dt.Rows[0][0].ToString();
            pdept.Text = dt.Rows[0][1].ToString();
            pjd1.Text = dt.Rows[0][2].ToString();
            pjd2.Text = dt.Rows[0][3].ToString();
            pjd3.Text = dt.Rows[0][4].ToString();
            pjd4.Text = dt.Rows[0][5].ToString();
            pjd5.Text = dt.Rows[0][6].ToString();
            preq1.Text = dt.Rows[0][7].ToString();
            preq2.Text = dt.Rows[0][8].ToString();
            preq3.Text = dt.Rows[0][9].ToString();
            kpi1.Text = dt.Rows[0][10].ToString();
            pt1.Text = dt.Rows[0][11].ToString();
            kpi2.Text = dt.Rows[0][12].ToString();
            pt2.Text = dt.Rows[0][13].ToString();
            kpi3.Text = dt.Rows[0][14].ToString();
            pt3.Text = dt.Rows[0][15].ToString();
            psal.Text = dt.Rows[0][16].ToString();
            pinc.Text = dt.Rows[0][17].ToString();
            pleaves.Text = dt.Rows[0][18].ToString();
            pbossid.Text = dt.Rows[0][19].ToString();
            pno.Text = dt.Rows[0][20].ToString();
            pvac.Text = dt.Rows[0][21].ToString();

            con.Close();

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Job Positions.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        //string pnames = pname.Text;
        string query = "update [PosTable] set pname=@pnames, dept='" + pdept.Text + "', jd1='" + pjd1.Text + "',jd2='" + pjd2.Text + "',jd3='" + pjd3.Text + "',jd4='" + pjd4.Text + "',jd5='" + pjd5.Text + "',elreq1='" + preq1.Text + "',elreq2='" + preq2.Text + "',elreq3='" + preq3.Text + "',kpi1='" + kpi1.Text + "',target1='" + pt1.Text + "',kpi2='" + kpi2.Text + "',target2='" + pt2.Text + "',kpi3='" + kpi3.Text + "',target3='" + pt3.Text + "',psal='" + psal.Text + "',pinc='" + pinc.Text + "', plev='" + pleaves.Text + "',pbos='" + pbossid.Text + "',pnos='" + pno.Text + "',pnosv='" + pvac.Text + "' where Id='" + pid.Text + "' ";
        SqlCommand com = new SqlCommand(query, con);
        com.Parameters.AddWithValue("@pnames", pname.Text);

        con.Open();
        com.ExecuteNonQuery();
        con.Close();

        Response.Redirect("Job Positions.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        string query = "delete from [PosTable]  where Id='" + pid.Text + "' ";
        SqlCommand com = new SqlCommand(query, con);
        con.Open();
        com.ExecuteNonQuery();
        con.Close();
        Response.Redirect("Job Positions.aspx");
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        ClientScript.RegisterStartupScript(typeof(Page), "closePage", "window.close();", true);
    }
}