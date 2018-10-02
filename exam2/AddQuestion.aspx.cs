using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Windows.Forms;

namespace exam2
{
    public partial class AddQuestion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["current_user"] == null)

            {
                Response.Redirect("Adminlogin.aspx");
            }
        }

       

     
        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Server.Transfer("AddQuestion.aspx");

        }

        protected void txtQsnDesc_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ddlOptions_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void opt2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void opt3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void opt4_TextChanged(object sender, EventArgs e)
        {

        }

        protected void rbtnOpt1_CheckedChanged(object sender, EventArgs e)
        {
            
        }

        protected void rbtnOpt2_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void rbtnOpt3_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void rbtnOpt4_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=efbha.database.windows.net;Initial Catalog=efbdatabase;Integrated Security=False;User ID=hisubh;Password=nathcorp!1;Connect Timeout=15;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            string question = txtQsn.Text;
            string area = areaddl.SelectedValue;
            string option1 = opt1.Text;
            string option2 = opt2.Text;
            string option3 = opt3.Text;
            string option4 = opt4.Text;
            int diff = diffddl.SelectedIndex;
            string subarea = subareaddl.SelectedValue;
            char ans;

            if (rbtnOpt1.Checked)
                ans = 'A';
            else if (rbtnOpt2.Checked)
                ans = 'B';
            else if (rbtnOpt3.Checked)
                ans = 'C';
            else
                ans = 'D';
               
        
        string querystring = "insert into Questions(question,area,option_A,option_B,option_C,option_D,difficulty,ans) values ('" + question + "','"+area+"','"+option1+ "','" + option2 + "','" + option3 + "','" + option4 + "',"+ diff +",'"+ ans +"')";
            
            con.Open();
            SqlCommand cmd = new SqlCommand(querystring, con);
      

            cmd.ExecuteNonQuery();
            MessageBox.Show("Added Successfully!");               
            con.Close();
        }

        protected void viewquestn_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewQuestions.aspx");
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("NCATHome.aspx");
        }

        protected void manageuser_Click(object sender, EventArgs e)
        {
            Response.Redirect("Manageuser.aspx");
        }
    }
}