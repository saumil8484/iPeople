using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Application_Details : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\iPeopleDB.mdf;Integrated Security=True");
    int id1;
    string ids;

    protected void Page_Load(object sender, EventArgs e)
    {
        genserial();
        ids = Convert.ToString(id1);
        string aid1 = (string)Session["aid"];
        aid.Text = aid1;
        if (!IsPostBack)
        {
            con.Open();
            string query = "select Id,pname,aname,aphno,aemail,acvlink,adate,ka,sa,pa,va,ta,fscor,fdec from [AppTable] where Id='" + aid1 + "' ";
            SqlDataAdapter sda1 = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            sda1.Fill(dt);
            aid.Text = dt.Rows[0][0].ToString();
            pname.Text = dt.Rows[0][1].ToString();
            aname.Text = dt.Rows[0][2].ToString();
            aphno.Text = dt.Rows[0][3].ToString();
            amail.Text = dt.Rows[0][4].ToString();
            acvlink.Text = dt.Rows[0][5].ToString();
            adate.Text = dt.Rows[0][6].ToString();
            aknow.Text = dt.Rows[0][7].ToString();
            askill.Text = dt.Rows[0][8].ToString();
            apersona.Text = dt.Rows[0][9].ToString();
            avalue.Text = dt.Rows[0][10].ToString();
            atask.Text = dt.Rows[0][11].ToString();
            ascore.Text = dt.Rows[0][12].ToString();
            afinal.Text = dt.Rows[0][13].ToString();
            con.Close();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Job Applications.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        DateTime today = DateTime.Today;
        string tdate = today.ToString("d");

        string query = "update [AppTable] set ka='" + aknow.Text + "',  sa='" + askill.Text + "', pa='" + apersona.Text + "', va='" + avalue.Text + "', ta='" + atask.Text + "', fscor='" + ascore.Text + "', fdec='" + afinal.Text + "' where Id='" + aid.Text + "' ";
        string query2 = "Insert into [EmpTable] (Id,aid,pname,ename,ephone,eemail,edoj,ocomp) values ('" + id1 + "','" + aid.Text + "','" + pname.Text + "','" + aname.Text + "','" + aphno.Text + "','" + amail.Text + "','" + tdate + "','" + "Pending" + "') ";
        string query3 = "update [PosTable] set pnosv=pnosv-1 where pname='" + pname.Text + "' ";

        SqlCommand com = new SqlCommand(query, con);
        SqlCommand com2 = new SqlCommand(query2, con);
        SqlCommand com3 = new SqlCommand(query3, con);
        con.Open();
        com.ExecuteNonQuery();
        if (afinal.Text == "Selected")
        {
            com2.ExecuteNonQuery();
            com3.ExecuteNonQuery();
        }
        con.Close();
        Response.Redirect("Job Applications.aspx");
    }

    public void genserial()
    {
        string query = "select isnull(max(cast(Id as int)),0)+1 from [EmpTable]";
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