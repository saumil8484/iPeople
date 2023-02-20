using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Careers_Position_Details : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\iPeopleDB.mdf;Integrated Security=True");
    string pid1, pname1;

    protected void Page_Load(object sender, EventArgs e)
    {
        pid1 = (string)Session["pid"];


        {
            con.Open();
            string query = "select pname,dept,jd1,jd2,jd3,jd4,jd5,elreq1,elreq2,elreq3,kpi1,target1,kpi2,target2,kpi3,target3,psal,pinc,plev,pnosv from [PosTable] where Id='" + pid1 + "' ";
            SqlDataAdapter sda1 = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            sda1.Fill(dt);
            pname1 = dt.Rows[0][0].ToString();
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
            pnosv.Text = dt.Rows[0][19].ToString();
            con.Close();

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Careers.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["pname1"] = pname1;
        Response.Redirect("Candidate Application Form.aspx");
    }
}