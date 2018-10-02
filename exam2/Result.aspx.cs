using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
namespace exam2
{
    public partial class Result : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection usercon = new SqlConnection("Data Source = efbha.database.windows.net; Initial Catalog = efbdatabase; Integrated Security = False; User ID = hisubh; Password = nathcorp!1; Connect Timeout = 15; Encrypt = False; TrustServerCertificate = True; ApplicationIntent = ReadWrite; MultiSubnetFailover = False"))
            {
                usercon.Open();
                string struser = "select * from USerlogin WHERE username='" + Session["current_user"] + "'";
                SqlCommand usercom = new SqlCommand(struser, usercon);
                SqlDataReader user = usercom.ExecuteReader();
                user.Read();

                uname.Text = user["username"].ToString();
                techscore.Text = user["markstech"].ToString();
                quantscore.Text = user["marksquant"].ToString();
                qualscore.Text = user["marksqual"].ToString();
            }
            SqlConnection usercon1 = new SqlConnection("Data Source = efbha.database.windows.net; Initial Catalog = efbdatabase; Integrated Security = False; User ID = hisubh; Password = nathcorp!1; Connect Timeout = 15; Encrypt = False; TrustServerCertificate = True; ApplicationIntent = ReadWrite; MultiSubnetFailover = False");
            usercon1.Open();
            int total = int.Parse(techscore.Text)+ int.Parse(quantscore.Text)+ int.Parse(qualscore.Text);
            string totalstring = total.ToString();
            totalstring = "update Userlogin set markstotal=('" + totalstring + "') where username='" + Session["current_user"] + "'";
            SqlCommand cmdd = new SqlCommand(totalstring,usercon1);
            cmdd.ExecuteNonQuery();
            usercon1.Close();

            SqlConnection con6 = new SqlConnection("Data Source=efbha.database.windows.net;Initial Catalog=efbdatabase;Integrated Security=False;User ID=hisubh;Password=nathcorp!1;Connect Timeout=15;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            con6.Open();
            string qry= "Select * from Userlogin WHERE username='" + Session["current_user"] + "'";
            SqlCommand cmd = new SqlCommand(qry,con6);
            SqlDataReader drr = cmd.ExecuteReader();
            drr.Read();
            totalscore.Text = drr["markstotal"].ToString();
            con6.Close();
            Session.Abandon();
        }

    }
}