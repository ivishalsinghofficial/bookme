using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Configuration;
using System.Text;
using System.Net;
using System.IO;

namespace WebApplication1
{
    public partial class Book : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack) // If you not place this check then you will get the old values because GridView in Bind on every postback
            {
                GridView1.DataBind(); // Bind you grid here
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            String bookname = DropDownList1.SelectedValue;


            String con = ConfigurationManager.ConnectionStrings["BookmeConnectionString"].ConnectionString;
            SqlConnection conbm = new SqlConnection(con);
            conbm.Open();

            String check = "select Available_Counts from dbo.bookme where Book_Name = @bookname";
            SqlCommand cmd2 = new SqlCommand(check, conbm);
            cmd2.Parameters.AddWithValue("@bookname", bookname);
            int counts = Convert.ToInt32(cmd2.ExecuteScalar());
            try
            {
                if (counts == 0)
                {
                    Label4.Text = "Not Available";
                }
                else
                {

                    String query = "Update bookme set Available_Counts = Available_Counts - 1 where Book_Name = @bookname";
                    SqlCommand cmd = new SqlCommand(query, conbm);
                    cmd.Parameters.AddWithValue("@bookname", bookname);
                    cmd.ExecuteNonQuery();



                    String Mobile = "your number";
                    String Password = "your number";

                    String returndate = DateTime.Now.AddDays(7).ToLongDateString();
                    String Msg = "Thanks! Your book is booked! " + Environment.NewLine + " RETURN DATE:- " + returndate + "";



                    String to = TextBox2.Text;
                    String Key = "your key";
                    String Url = "https://smsapi.engineeringtgr.com/send/?Mobile=" + Mobile + "&Password=" + Password + "&Message=" + Msg + "&To=" + to + "&Key=" + Key + "";
                    ServicePointManager.ServerCertificateValidationCallback = delegate { return true; };
                    ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls | SecurityProtocolType.Tls11 | SecurityProtocolType.Tls12 | SecurityProtocolType.Ssl3;

                    HttpWebRequest request = (HttpWebRequest)WebRequest.Create(Url);
                    request.Method = "GET";
                    request.ContentType = "application/json";
                    request.ContentLength = 0;// DATA.Length;


                    try
                    {
                        WebResponse webResponse = request.GetResponse();
                        Stream webStream = webResponse.GetResponseStream();
                        StreamReader responseReader = new StreamReader(webStream);
                        string response = responseReader.ReadToEnd();
                        Console.Out.WriteLine(response);
                        responseReader.Close();
                    }
                    catch (Exception xe)
                    {
                        Console.Out.WriteLine("-----------------");
                        Console.Out.WriteLine(xe.Message);
                    }

                    Label4.Text = "Booked! Keep Reading!";
                }
            }
            catch (Exception msg) { Label4.Text = msg.ToString(); }
            conbm.Close();
        }
    }
}