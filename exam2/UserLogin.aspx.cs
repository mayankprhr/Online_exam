using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace exam2
{
    public partial class UserLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             }
        protected void Login_Click(object sender, EventArgs e)
        {
            //SqlConnection con = new SqlConnection("Data Source=efbha.database.windows.net;Initial Catalog=efbdatabase;Integrated Security=False;User ID=hisubh;Password=nathcorp!1;Connect Timeout=15;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            SqlConnection con = new SqlConnection("Data Source=efbha.database.windows.net;Initial Catalog=efbdatabase;Integrated Security=False;User ID=hisubh;Password=nathcorp!1;Connect Timeout=15;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            con.Open();
            try
            {
                string uid = Usertext.Text;
                string pass = UPassText.Text;
                Session["current_user"] = uid;
                string qry = "select * from password where  Password='" + pass + "'";
                SqlCommand cmd = new SqlCommand(qry, con);
                
                SqlDataReader sdr = cmd.ExecuteReader();
                
                if (sdr.HasRows)
                {

                    SqlConnection con1 = new SqlConnection("Data Source=efbha.database.windows.net;Initial Catalog=efbdatabase;Integrated Security=False;User ID=hisubh;Password=nathcorp!1;Connect Timeout=15;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
                    con1.Open();

                    string query = "insert into Userlogin values('"+uid+"',0,0,0,0) ";
                   SqlCommand cmd1 = new SqlCommand(query, con1);
                    cmd1.ExecuteNonQuery();
                    con1.Close();
                    Response.Redirect("StartExam.aspx");
                }
                else
                {
                    MessageBox.Show("Username or Password is not correct Try again..!!");
                }
            
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}