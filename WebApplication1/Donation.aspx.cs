using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication1
{
    public partial class Donation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.Visible = false;
            Button3.Visible = false;
            Button4.Visible = false;
            Label1.Visible = false;
            Label2.Visible = false;
            Label3.Visible = false;
            TextBox1.Visible = false;
            TextBox2.Visible = false;
            TextBox3.Visible = false;
            Button5.Visible = false;
            Label4.Visible = false;

            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Button2.Visible = false;
            Label1.Visible = true;
            Label2.Visible = true;
            Label3.Visible = true;
            Label4.Visible = true;
            TextBox1.Visible = true;
            TextBox2.Visible = true;
            TextBox3.Visible = true;
            Button4.Visible = true;
            Button5.Visible = true;
            Button1.Visible = false;


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            Button1.Visible = false;
            Button2.Visible = false;
            Button3.Visible = true;
            Button4.Visible = false;
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Donation.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Donation.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            //submit
            String bd = ConfigurationManager.ConnectionStrings["DonationBoxConnectionString"].ConnectionString;
            SqlConnection conbd = new SqlConnection(bd);
            conbd.Open();
            String libid = TextBox1.Text.ToString();
            String pname = TextBox2.Text.ToString();
            String bname = TextBox3.Text.ToString();
            String query1 = "Insert into donation_1 values(@libid, @pname, @bname)";
            SqlCommand cmd = new SqlCommand(query1, conbd);
            cmd.Parameters.AddWithValue("@libid",TextBox1.Text);
            cmd.Parameters.AddWithValue("@pname", TextBox2.Text);
            cmd.Parameters.AddWithValue("@bname", TextBox3.Text);
            cmd.ExecuteNonQuery();
            conbd.Close();
            Label4.Text = "Thanks Your Query is Submitted!";
            Button5.Visible = true;

        }
    }
}