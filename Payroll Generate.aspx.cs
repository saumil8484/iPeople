using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class Payroll_Generate : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\iPeopleDB.mdf;Integrated Security=True");
    string ids;
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void Button2_Click(object sender, EventArgs e)
    {
        string month1 = month.Text;

        con.Open();
        string query = "select month from [PayTable] where month = '" + month.Text + "'";
        SqlCommand com = new SqlCommand(query, con);
        SqlDataAdapter sda = new SqlDataAdapter();
        sda.SelectCommand = com;
        DataTable dt = new DataTable();
        sda.Fill(dt);


        if (dt.Rows.Count != 0)
        {
            l404.Text = "Payroll for this month is already generated";
        }
        else
        {

            string query1 = "select Id from [EmpTable]";
            SqlCommand com1 = new SqlCommand(query1, con);
            SqlDataAdapter sda1 = new SqlDataAdapter();
            sda1.SelectCommand = com1;
            DataTable dt1 = new DataTable();
            sda1.Fill(dt1);
            int numemp = dt1.Rows.Count;


            for (int i = 0; i < numemp; i++)
            {
                string query2 = "select Id,ename,pname from [EmpTable] where Id = '" + dt1.Rows[i][0] + "' ";
                SqlCommand com2 = new SqlCommand(query2, con);
                SqlDataAdapter sda2 = new SqlDataAdapter();
                sda2.SelectCommand = com2;
                DataTable dt2 = new DataTable();
                sda2.Fill(dt2);
                //eid = dt2.Rows[0][0]
                //ename = dt2.Rows[0][1]


                string query3 = "select date,status from [AttTable] where eid = '" + dt1.Rows[i][0] + "' ";
                SqlCommand com3 = new SqlCommand(query3, con);
                SqlDataAdapter sda3 = new SqlDataAdapter();
                sda3.SelectCommand = com3;
                DataTable dt3 = new DataTable();
                sda3.Fill(dt3);
                float totdays = 0, predays = 0;


                for (int j = 0; j < dt3.Rows.Count; j++)
                {
                    string datestr = dt3.Rows[j][0].ToString();
                    string monthstr = datestr.Substring(3, 2);
                    int monthi = Convert.ToInt32(monthstr);

                    if (monthstr == month.Text)
                    {
                        totdays++;

                        if (dt3.Rows[j][1].ToString() == "Present")
                        {
                            predays++;
                        }
                    }
                }

                float apercf = predays / totdays;

                string query4 = "select psal,pinc from [PosTable] where pname = '" + dt2.Rows[0][2] + "' ";
                SqlCommand com4 = new SqlCommand(query4, con);
                SqlDataAdapter sda4 = new SqlDataAdapter();
                sda4.SelectCommand = com4;
                DataTable dt4 = new DataTable();
                sda4.Fill(dt4);
                Double basesal = Convert.ToDouble(dt4.Rows[0][0].ToString());
                basesal = basesal * apercf;



                string query5 = "select oscore from [PerfTable] where ename = '" + dt2.Rows[0][1] + "' ";
                SqlCommand com5 = new SqlCommand(query5, con);
                SqlDataAdapter sda5 = new SqlDataAdapter();
                sda5.SelectCommand = com5;
                DataTable dt5 = new DataTable();
                sda5.Fill(dt5);
                Double incsal = Convert.ToDouble(dt4.Rows[0][1].ToString());
                Double incperc = Convert.ToDouble(dt5.Rows[0][0].ToString());
                incperc = incperc / 100;
                incsal = incsal * incperc;


                double netsal = basesal + incsal;
                netsal = Math.Round(netsal);
                //testlab.Text = netsal.ToString();
                genserial();

                string eids = dt2.Rows[0][0].ToString();
                string enames = dt2.Rows[0][1].ToString();
                string apercfs = apercf.ToString();
                string basesals = basesal.ToString();
                string incsals = incsal.ToString();
                string netsals = netsal.ToString();

                string query6 = "Insert into [PayTable] (Id,month,eid,ename,aperc,base,inc,net) values ('" + ids + "','" + month.Text + "','" + eids + "', '" + enames + "', '" + apercfs + "','" + basesals + "','" + incsals + "','" + netsals + "') ";
                SqlCommand com6 = new SqlCommand(query6, con);
                com6.ExecuteNonQuery();

            }
            l404.Text = "Payroll generated successfully";




        }
        string query7 = "select Id,ename,aperc,base,inc,net from [PayTable] where month='" + month.Text + "'";
        SqlCommand com7 = new SqlCommand(query7, con);
        SqlDataAdapter sda7 = new SqlDataAdapter();
        sda7.SelectCommand = com7;
        DataTable dbdataset7 = new DataTable();
        sda7.Fill(dbdataset7);
        GridView1.DataSource = dbdataset7;
        GridView1.DataBind();
        con.Close();
    }

    public void genserial()
    {

        string query = "select isnull(max(cast(Id as int)),0)+1 from [PayTable]";
        SqlDataAdapter sda1 = new SqlDataAdapter(query, con);
        DataTable dt = new DataTable();
        sda1.Fill(dt);
        ids = dt.Rows[0][0].ToString();

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Employee Payroll.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        string query = "delete from [PayTable]  where month='" + month.Text + "' ";
        SqlCommand com = new SqlCommand(query, con);
        con.Open();
        com.ExecuteNonQuery();
        con.Close();
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        ClientScript.RegisterStartupScript(typeof(Page), "closePage", "window.close();", true);
    }
}