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
    public partial class ViewQuestions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)

        {
            if (Session["current_user"] == null)

            {
                Response.Redirect("Adminlogin.aspx");
            }

            SqlConnection con = new SqlConnection("Data Source=efbha.database.windows.net;Initial Catalog=efbdatabase;Integrated Security=False;User ID=hisubh;Password=nathcorp!1;Connect Timeout=15;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            string sql = "select Question_id,question,option_A,option_B,option_C,option_D,ans from Questions";
            SqlCommand cmd = new SqlCommand(sql, con);
            con.Open();

            SqlDataReader reader = cmd.ExecuteReader();

            GridView1.DataSource = reader;
            GridView1.DataBind();

            con.Close();

        }

        protected void Edi_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Edit.aspx");
        }
    }
}