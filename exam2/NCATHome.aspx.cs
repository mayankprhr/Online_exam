using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace exam2
{
    public partial class NCATHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void userbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserLogin.aspx");
        }

        protected void adminbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminLogin.aspx");
        }
    }
}