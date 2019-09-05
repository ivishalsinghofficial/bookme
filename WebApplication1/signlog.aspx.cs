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
    

    public partial class signlog : System.Web.UI.Page
    {
        public static String otps;
       
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String user = TextBox1.Text;
            String passer = TextBox2.Text;

            String signm = ConfigurationManager.ConnectionStrings["signlogconnection"].ConnectionString;
            SqlConnection signlogs = new SqlConnection(signm);
            signlogs.Open();
            String passretrieve  = "Select pass from dbo.signlog where uname=@uname";
            SqlCommand cmd2 = new SqlCommand(passretrieve, signlogs);
            cmd2.Parameters.AddWithValue("@uname",user);
            String passes = (String)cmd2.ExecuteScalar();
            if (passer == passes)
            {
                Response.Redirect("homepage.aspx");
            }
            else
            {
                Label9.Text = "Register First!";
            }
            signlogs.Close();
        }

      

        public void Button3_Click(object sender, EventArgs e)
        {
            Random otp = new Random();
            otps = otp.Next(11111, 99999).ToString();
            Session.Add("otp", otps);
            Label8.Text = otps;


            String Mobile = "your number";
            String Password = "your password"; 


            String Msg = "Your One Time Password is:- " + otps;



            String to = TextBox5.Text;
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

            //verify
            
            
        }
        public void Button2_Click(object sender, EventArgs e)
        {
            String sign = ConfigurationManager.ConnectionStrings["signlogconnection"].ConnectionString;
            SqlConnection signlog = new SqlConnection(sign);
            signlog.Open();
            String verify = TextBox6.Text.ToString();
            
            if (verify == otps)
            {
                String uname = TextBox3.Text; ;
                String pass = TextBox4.Text;
                String phone = TextBox5.Text;
                String query = "insert into dbo.signlog values(@uname,@pass,@phone)";
                SqlCommand cmd = new SqlCommand(query, signlog);
                cmd.Parameters.AddWithValue("@uname",uname);
                cmd.Parameters.AddWithValue("@pass",pass);
                cmd.Parameters.AddWithValue("@phone",phone);
                cmd.ExecuteNonQuery();
                signlog.Close();

                Response.Redirect("homepage.aspx");
            }
            else
            {
                Label7.Text = "Error";
                
            }




        }
    }
}