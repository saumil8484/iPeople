using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Performance_Update : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\iPeopleDB.mdf;Integrated Security=True");
    string ids, ename1;


    double tt1, aa1, tf1, osc, tt2, tt3, aa2, aa3, tf2, tf3;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        findata();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        tt1 = Convert.ToDouble(t1.Text);
        tt2 = Convert.ToDouble(t2.Text);
        tt3 = Convert.ToDouble(t3.Text);
        aa1 = Convert.ToDouble(a1.Text);
        aa2 = Convert.ToDouble(a2.Text);
        aa3 = Convert.ToDouble(a3.Text);
        tf1 = (aa1 / tt1);
        tf2 = aa2 / tt2;
        tf3 = aa3 / tt3;
        osc = (((tf1 + tf2 + tf3) * 100) / 3);
        //Label1.Text = osc.ToString();
        con.Open();
        genserial();
        string queryu = "update [PerfTable] set kpi1 = '" + kpi1.Text + "',t1='" + tt1 + "',a1='" + aa1 + "',kpi2 = '" + kpi2.Text + "',t2='" + tt2 + "',a2='" + aa2 + "',kpi3 = '" + kpi3.Text + "',t3='" + tt3 + "',a3='" + a3.Text + "',oscore='" + osc + "' where month = '" + month.Text + "' and eid = '" + eid.Text + "'";
        string queryi = "insert into [PerfTable] (Id,month,eid,ename,kpi1,t1,a1,kpi2,t2,a2,kpi3,t3,a3,oscore) values ('" + ids + "','" + month.Text + "','" + eid.Text + "','" + ename.Text + "','" + kpi1.Text + "','" + tt1 + "','" + aa1 + "','" + kpi2.Text + "','" + tt2 + "','" + aa2 + "','" + kpi3.Text + "','" + tt3 + "','" + a3.Text + "','" + osc + "')";

        if (l404.Text == "Insertion")
        {
            SqlCommand comi = new SqlCommand(queryi, con);
            comi.ExecuteNonQuery();
        }
        if (l404.Text == "Updation")
        {
            SqlCommand comu = new SqlCommand(queryu, con);
            comu.ExecuteNonQuery();
        }
        con.Close();
    }

    public void findata()
    {

        con.Open();
        string query = "select kpi1,t1,a1,kpi2,t2,a2,kpi3,t3,a3,ename Phone from [PerfTable] where month = '" + month.Text + "' and eid = '" + eid.Text + "'";
        SqlCommand com = new SqlCommand(query, con);
        SqlDataAdapter sda = new SqlDataAdapter();
        sda.SelectCommand = com;
        DataTable dt = new DataTable();
        sda.Fill(dt);


        if (dt.Rows.Count != 0)
        {

            l404.Text = "Updation";

            kpi1.Text = dt.Rows[0][0].ToString();
            t1.Text = dt.Rows[0][1].ToString();
            a1.Text = dt.Rows[0][2].ToString();
            kpi2.Text = dt.Rows[0][3].ToString();
            t2.Text = dt.Rows[0][4].ToString();
            a2.Text = dt.Rows[0][5].ToString();
            kpi3.Text = dt.Rows[0][6].ToString();
            t3.Text = dt.Rows[0][7].ToString();
            a3.Text = dt.Rows[0][8].ToString();
            ename.Text = dt.Rows[0][9].ToString();
        }
        else
        {

            l404.Text = "Insertion";

            //l404.Text = "No data found! You can add performance data of this month below.";

            string query2 = "select pname,ename from [EmpTable] where Id = '" + eid.Text + "'";
            SqlCommand com2 = new SqlCommand(query2, con);
            SqlDataAdapter sda2 = new SqlDataAdapter();
            sda2.SelectCommand = com2;
            DataTable dt2 = new DataTable();
            sda2.Fill(dt2);
            string pname2 = dt2.Rows[0][0].ToString();
            ename.Text = dt2.Rows[0][1].ToString();

            string query3 = "select kpi1,target1,kpi2,target2,kpi3,target3 from [PosTable] where pname = '" + pname2 + "'";
            SqlCommand com3 = new SqlCommand(query3, con);
            SqlDataAdapter sda3 = new SqlDataAdapter();
            sda3.SelectCommand = com3;
            DataTable dt3 = new DataTable();
            sda3.Fill(dt3);
            kpi1.Text = dt3.Rows[0][0].ToString();
            t1.Text = dt3.Rows[0][1].ToString();
            kpi2.Text = dt3.Rows[0][2].ToString();
            t2.Text = dt3.Rows[0][3].ToString();
            kpi3.Text = dt3.Rows[0][4].ToString();
            t3.Text = dt3.Rows[0][5].ToString();

            a1.Text = "0";
            a2.Text = "0";
            a3.Text = "0";



        }
        con.Close();
    }

    public void genserial()
    {

        string query = "select isnull(max(cast(Id as int)),0)+1 from [PerfTable]";
        SqlDataAdapter sda1 = new SqlDataAdapter(query, con);
        DataTable dt = new DataTable();
        sda1.Fill(dt);
        ids = dt.Rows[0][0].ToString();

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Employee Performance.aspx");
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        ClientScript.RegisterStartupScript(typeof(Page), "closePage", "window.close();", true);
    }
}