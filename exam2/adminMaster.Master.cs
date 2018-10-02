using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace exam2
{
    public partial class adminMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addquestn_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddQuestion.aspx");
        }

        protected void viewquestn_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewQuestions.aspx");
        }

        protected void viewrslt_Click(object sender, EventArgs e)
        {
            Response.Redirect("Manageuser.aspx");
        }

        protected void manageuser_Click(object sender, EventArgs e)
        {
            Response.Redirect("Manageuser.aspx");
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("NCATHome.aspx");
        }
    }
}