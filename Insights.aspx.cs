using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class Insights : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\iPeopleDB.mdf;Integrated Security=True");
    int m1, idi;

    protected void Page_Load(object sender, EventArgs e)
    {
        genmax();
        DateTime today = DateTime.Today;
        string tdate = today.ToString("d");
        string month1 = tdate.Substring(3, 2);
        int currmon = Convert.ToInt32(month1);
        l404.Text = currmon.ToString();
        if (currmon != m1)
        {
            geninsights();
        }
        displayins();
    }

    public void displayins()
    {
        genmax();
        con.Open();
        string query = "select name,plif,subs,orel,prel,opro,eret,lpip from [InsTable] where month = '" + m1 + "' ";
        SqlCommand com = new SqlCommand(query, con);
        SqlDataAdapter sda = new SqlDataAdapter();
        sda.SelectCommand = com;
        DataTable dt = new DataTable();
        sda.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        con.Close();
    }

    public void geninsights()
    {
        int plif, subs, orel, prel, opro, eret, lpip;
        double dplif, dsubs, dorel, dprel, dopro, deret, dlpip;

        con.Open();
        string query = "select ename from [EmpTable]";
        SqlCommand com = new SqlCommand(query, con);
        SqlDataAdapter sda = new SqlDataAdapter();
        sda.SelectCommand = com;
        DataTable dt = new DataTable();
        sda.Fill(dt);
        int numemp = dt.Rows.Count;

        for (int i = 0; i < numemp; i++)
        {
            //Id,ename,month,a1,b1,a2,b2,a3,a4,a5,a6,b6,a7,a8,b8,c8,a9,a10,a11,a12
            //2         6                 12                  18
            string query2 = "select ename,month,a1,b1,a2,b2,a3,a4,a5,a6,b6,a7,a8,b8,c8,a9,a10,a11,a12 from [EsurTable] where ename = '" + dt.Rows[i][0] + "'"; //dt.Rows[i][0]
            SqlCommand com2 = new SqlCommand(query2, con);
            SqlDataAdapter sda2 = new SqlDataAdapter();
            sda2.SelectCommand = com2;
            DataTable dt2 = new DataTable();
            sda2.Fill(dt2);
            string nam = dt2.Rows[0][0].ToString();
            string mon = dt2.Rows[0][1].ToString();

            dplif = (Convert.ToDouble(dt2.Rows[0][2].ToString())) + (Convert.ToDouble(dt2.Rows[0][3].ToString())) + (Convert.ToDouble(dt2.Rows[0][4].ToString())) + (Convert.ToDouble(dt2.Rows[0][5].ToString()));
            //5,6a,6b,
            dsubs = (Convert.ToDouble(dt2.Rows[0][8].ToString())) + (Convert.ToDouble(dt2.Rows[0][9].ToString())) + (Convert.ToDouble(dt2.Rows[0][10].ToString()));
            //8a,8b,8c,9
            dorel = (2 * (Convert.ToDouble(dt2.Rows[0][12].ToString()))) + ((Convert.ToDouble(dt2.Rows[0][13].ToString())) / 2) + ((Convert.ToDouble(dt2.Rows[0][14].ToString())) / 2) + (2 * (Convert.ToDouble(dt2.Rows[0][15].ToString()))); ;
            //7
            dprel = (Convert.ToDouble(dt2.Rows[0][11].ToString()));
            //8c,12
            dopro = (Convert.ToDouble(dt2.Rows[0][14].ToString())) + (Convert.ToDouble(dt2.Rows[0][18].ToString()));
            //3,4,dsubs,9,10,11,12
            deret = (Convert.ToDouble(dt2.Rows[0][6].ToString())) + (Convert.ToDouble(dt2.Rows[0][7].ToString())) + dsubs + (Convert.ToDouble(dt2.Rows[0][15].ToString())) + (Convert.ToDouble(dt2.Rows[0][16].ToString())) + (Convert.ToDouble(dt2.Rows[0][17].ToString())) + (Convert.ToDouble(dt2.Rows[0][18].ToString())); ;
            //1,2,prel
            dlpip = dplif + dprel;

            plif = Convert.ToInt32(dplif);
            subs = Convert.ToInt32(dsubs);
            orel = Convert.ToInt32(dorel);
            prel = Convert.ToInt32(dprel);
            opro = Convert.ToInt32(dopro);
            eret = Convert.ToInt32(deret);
            lpip = Convert.ToInt32(dlpip);

            genserial();
            string queryi = "Insert into [InsTable] (Id,name,month,plif, subs, orel, prel, opro, eret, lpip) values ('" + idi + "','" + nam + "','" + mon + "', '" + plif + "', '" + subs + "','" + orel + "','" + prel + "','" + opro + "','" + eret + "','" + lpip + "') ";
            SqlCommand comi = new SqlCommand(queryi, con);
            comi.ExecuteNonQuery();


            //l404.Text = plif.ToString();
        }

        con.Close();

    }

    /*protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        //Checking the RowType of the Row  
        //if (txtColor.Text.Trim() != "")
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                //if (e.Row.Cells[0].Text == txtColor.Text)
                {
                    e.Row.Cells[0].ForeColor = System.Drawing.Color.Red; ;
                }
            }
        }
    }*/

    public void genmax()
    {

        string query = "select isnull(max(cast(month as int)),0) from [InsTable]";
        SqlDataAdapter sda1 = new SqlDataAdapter(query, con);
        DataTable dt = new DataTable();
        sda1.Fill(dt);
        string ids = dt.Rows[0][0].ToString();
        m1 = Convert.ToInt32(ids);

    }

    public void genserial()
    {

        string query = "select isnull(max(cast(Id as int)),0)+1 from [InsTable]";
        SqlDataAdapter sda1 = new SqlDataAdapter(query, con);
        DataTable dt = new DataTable();
        sda1.Fill(dt);
        string ids = dt.Rows[0][0].ToString();
        idi = Convert.ToInt32(ids);

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        ClientScript.RegisterStartupScript(typeof(Page), "closePage", "window.close();", true);
    }
}