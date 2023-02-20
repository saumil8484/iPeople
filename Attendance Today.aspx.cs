using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Attendance_Today : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\iPeopleDB.mdf;Integrated Security=True");
    String s, Id1, ids, tdatec;
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        {
            DateTime today = DateTime.Today;
            string tdate = today.ToString("d");
            Label3.Text = tdate;

            string query = "select isnull(max(cast(Id as int)),0) from [AttTable]";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            Id1 = dt.Rows[0][0].ToString();
            int id2 = Convert.ToInt32(Id1);

            string query2 = "select date from [AttTable] where Id = '" + id2 + "'";
            SqlDataAdapter sda2 = new SqlDataAdapter(query2, con);
            DataTable dt2 = new DataTable();
            sda2.Fill(dt2);
            tdatec = dt2.Rows[0][0].ToString();
            //Label4.Text = tdatec;

            //
            if (tdatec != tdate || tdatec == "0")
            {
                startatt();
            }
            todayatt();
        }
    }

    public void startatt()
    {
        con.Open();
        string query = "select Id,ename from [EmpTable]";
        SqlDataAdapter sda1 = new SqlDataAdapter(query, con);
        DataTable dt1 = new DataTable();
        sda1.Fill(dt1);
        int rcount = dt1.Rows.Count;
        genserial();

        DateTime today = DateTime.Today;
        string tdate = today.ToString("d");
        string pend = "Pending";


        for (int i = 0; i < rcount; i++)
        {
            string query2 = "Insert into [AttTable] (Id,date,eid,ename,status) values ('" + ids + "','" + tdate + "','" + dt1.Rows[i][0].ToString() + "','" + dt1.Rows[i][1].ToString() + "','" + pend + "') ";
            SqlCommand com2 = new SqlCommand(query2, con);
            com2.ExecuteNonQuery();
            genserial();

        }
        con.Close();
    }

    public void todayatt()
    {
        con.Open();
        DateTime today = DateTime.Today;
        string tdate = today.ToString("d");
        string query = "select Id,eid,ename,status from [AttTable] where date='" + tdate + "'";
        SqlCommand com = new SqlCommand(query, con);

        SqlDataAdapter sda = new SqlDataAdapter();
        sda.SelectCommand = com;

        DataTable dbdataset = new DataTable();
        sda.Fill(dbdataset);

        TodayAttGridView.DataSource = dbdataset;
        TodayAttGridView.DataBind();


        con.Close();
    }

    protected void present_Click(object sender, EventArgs e)
    {
        s = "Present";
        Id1 = Convert.ToString((sender as LinkButton).CommandArgument);
        string query = "update [AttTable] set status='" + s + "' where Id='" + Id1 + "' ";
        SqlCommand com = new SqlCommand(query, con);
        con.Open();
        com.ExecuteNonQuery();
        con.Close();
        todayatt();

    }
    protected void absent_Click(object sender, EventArgs e)
    {
        s = "Absent";
        Id1 = Convert.ToString((sender as LinkButton).CommandArgument);
        string query = "update [AttTable] set status='" + s + "' where Id='" + Id1 + "' ";
        SqlCommand com = new SqlCommand(query, con);
        con.Open();
        com.ExecuteNonQuery();
        con.Close();
        todayatt();
    }

    public void genserial()
    {
        string query = "select isnull(max(cast(Id as int)),0)+1 from [AttTable]";
        SqlDataAdapter sda = new SqlDataAdapter(query, con);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        ids = dt.Rows[0][0].ToString();
        //id1 = Convert.ToInt32(ids);

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Employee Attendance.aspx");
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        ClientScript.RegisterStartupScript(typeof(Page), "closePage", "window.close();", true);
    }
}