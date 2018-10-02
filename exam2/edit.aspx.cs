using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Configuration;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace exam2
{
    public partial class edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection con = new SqlConnection("Data Source=efbha.database.windows.net;Initial Catalog=efbdatabase;Integrated Security=False;User ID=hisubh;Password=nathcorp!1;Connect Timeout=15;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
                con.Open();
                SqlDataReader dr = null;
                SqlCommand cmd = new SqlCommand("select * from Questions where question_id='" + Session["current_user"] + "'", con);

                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = (dr["question_id"].ToString());
                    txtQsn.Text = (dr["question"].ToString());
                    opt1.Text = (dr["option_A"].ToString());
                    opt2.Text = (dr["option_B"].ToString());
                    opt3.Text = (dr["option_C"].ToString());
                    opt4.Text = (dr["option_D"].ToString());
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=efbha.database.windows.net;Initial Catalog=efbdatabase;Integrated Security=False;User ID=hisubh;Password=nathcorp!1;Connect Timeout=15;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            string question = txtQsn.Text;
          //  string area = areaddl.SelectedValue;
            string option1 = opt1.Text;
            string option2 = opt2.Text;
            string option3 = opt3.Text;
            string option4 = opt4.Text;
            //int diff = diffddl.SelectedIndex;
            // string subarea = subareaddl.SelectedValue;


 //           "Update Questions set question='" + ques.Text + "',option_A='" + optA.Text + "'option_B='" + optB.Text + "',option_C='" + optC.Text + "',option_D='" + optD.Text + "',ans='" + ans.Text + "' where question_id=" + Convert.ToInt32(id.Text)",
            string querystring = "update Questions set question'" + question + "',option_A'" + question + "',option_B'" + question + "',option_C'" + question + "',option_D'" + question + "' where question_id=" +Label1.Text+"";

            con.Open();
            SqlCommand cmd = new SqlCommand(querystring, con);


            cmd.ExecuteNonQuery();
            MessageBox.Show("Updated Successfully!");
            con.Close();
        }




    }
}