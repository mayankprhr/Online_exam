using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

//A transport-level error has occurred when receiving results from the server. (provider: TCP Provider, error: 0 - The semaphore timeout period has expired.)
//select top 3 * from questions where area='gen' order by newid()


namespace exam2
{
    public partial class Tech : System.Web.UI.Page
    {
        int score = 0;

       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["current_user"] == null)

            {
                Response.Redirect("Userlogin.aspx");
            }

            using (SqlConnection usercon = new SqlConnection("Data Source = efbha.database.windows.net; Initial Catalog = efbdatabase; Integrated Security = False; User ID = hisubh; Password = nathcorp!1"))
            {
                usercon.Open();
                string struser = "select * from USerlogin WHERE username='" + Session["current_user"] + "'";
                SqlCommand usercom = new SqlCommand(struser, usercon);
                SqlDataReader user = usercom.ExecuteReader();
                user.Read();
                Label3.Text = user["username"].ToString();
            }
            //string userquery = "Select username from Userlogin";
            //SqlCommand usercom = new SqlCommand(userquery, usercon);
            //usercon.Open();

            //Label3.Text = user["username"].ToString();

            if (!IsPostBack)
            {

                int count = 1;
                using (SqlConnection con = new SqlConnection("Data Source=efbha.database.windows.net;Initial Catalog=efbdatabase;Integrated Security=False;User ID=hisubh;Password=nathcorp!1")) { 
                    string query = "Select * from Questions where Question_id = " + count + "";
                    SqlCommand sqlcmd = new SqlCommand(query, con);
                    con.Open();
                    SqlDataReader dr1 = sqlcmd.ExecuteReader();
                    if (dr1.Read())
                    {
                        Label2.Text = dr1["question_id"].ToString();

                        Label1.Text = dr1["question"].ToString();
                        RadioButton1.Text = dr1["option_A"].ToString();
                        RadioButton2.Text = dr1["option_B"].ToString();
                        RadioButton3.Text = dr1["option_C"].ToString();
                        RadioButton4.Text = dr1["option_D"].ToString();
                    }
                    RadioButton1.Checked = false;
                    RadioButton2.Checked = false;
                    RadioButton3.Checked = false;
                    RadioButton4.Checked = false;

                }


                if (!SM1.IsInAsyncPostBack)
                    Session["timeout"] = DateTime.Now.AddSeconds(1800).ToString();
            }
        }

        //    if (RadioButton1 != null)
        //    {
        //        if (RadioButton1.Checked)
        //        {
        //            HiddenField hf = (HiddenField)FindControl("HiddenField1");
        //            if (hf != null)
        //            {
        //                ViewState["Clicks"] = hf.Value;
        //            }
        //        }
        //    }
        //    else if (RadioButton2 != null)
        //    {
        //        if (RadioButton2.Checked)
        //        {
        //            HiddenField hf = (HiddenField)FindControl("HiddenField1");
        //            if (hf != null)
        //            {
        //                ViewState["Clicks"] = hf.Value;
        //            }
        //        }
        //    }
        //    else if (RadioButton3 != null)
        //    {
        //        if (RadioButton3.Checked)
        //        {
        //            HiddenField hf = (HiddenField)FindControl("HiddenField1");
        //            if (hf != null)
        //            {
        //                ViewState["Clicks"] = hf.Value;
        //            }
        //        }
        //    }
        //    else if (RadioButton4 != null)
        //    {
        //        if (RadioButton4.Checked)
        //        {
        //            HiddenField hf = (HiddenField)FindControl("HiddenField1");
        //            if (hf != null)
        //            {
        //                ViewState["Clicks"] = hf.Value;
        //            }
        //        }
        //    }
        //    else
        //    {; ; }

        //}


        protected void Next_Click(object sender, EventArgs e)
        {
            //SqlConnection usercon = new SqlConnection("Data Source = efbha.database.windows.net; Initial Catalog = efbdatabase; Integrated Security = False; User ID = hisubh; Password = nathcorp!1; Connect Timeout = 15; Encrypt = False; TrustServerCertificate = True; ApplicationIntent = ReadWrite; MultiSubnetFailover = False");

            int prevques = int.Parse(Label2.Text);
            int count = prevques + 1;

            if (count > 15)
            {
                Response.Redirect("Result.aspx");
            }
            SqlConnection usercon1 = new SqlConnection("Data Source = efbha.database.windows.net; Initial Catalog = efbdatabase; Integrated Security = False; User ID = hisubh; Password = nathcorp!1; Connect Timeout = 15; Encrypt = False; TrustServerCertificate = True; ApplicationIntent = ReadWrite; MultiSubnetFailover = False");
            usercon1.Open();
            string struser1 = "select * from USerlogin";
            SqlCommand usercom1 = new SqlCommand(struser1, usercon1);
            SqlDataReader user = usercom1.ExecuteReader();
            user.Read();
            Label3.Text = user["username"].ToString();

            SqlConnection con1 = new SqlConnection("Data Source=efbha.database.windows.net;Initial Catalog=efbdatabase;Integrated Security=False;User ID=hisubh;Password=nathcorp!1;Connect Timeout=15;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");

            string query1 = "Select * from Questions where Question_id = " + count + "";
            SqlCommand sqlcmd1 = new SqlCommand(query1, con1);
            con1.Open();
            SqlDataReader dr1 = sqlcmd1.ExecuteReader();
            if (dr1.Read())
            {
                Label2.Text = dr1["question_id"].ToString();
                Label1.Text = dr1["question"].ToString();
                RadioButton1.Text = dr1["option_A"].ToString();
                RadioButton2.Text = dr1["option_B"].ToString();
                RadioButton3.Text = dr1["option_C"].ToString();
                RadioButton4.Text = dr1["option_D"].ToString();

            }
            RadioButton1.Checked = false;
            RadioButton2.Checked = false;
            RadioButton3.Checked = false;
            RadioButton4.Checked = false;

        }
        

        protected void Submit_Click(object sender, EventArgs e)
        {
            int prevques = int.Parse(Label2.Text);

            string hf = "";

            if (RadioButton1.Checked)
            {
                hf = "A";
            }
            else if (RadioButton2.Checked)
            {
                hf = "B";
            }
            else if (RadioButton3.Checked)
            {
                hf = "C";
            }
            else if (RadioButton4.Checked)
            {
                hf = "D";
            }
            else
            {
                hf = "";
            }

            SqlConnection con6 = new SqlConnection("Data Source=efbha.database.windows.net;Initial Catalog=efbdatabase;Integrated Security=False;User ID=hisubh;Password=nathcorp!1");

            string query6 = "Select * from Questions where Question_id = " +prevques + "";
            SqlCommand sqlcmd6 = new SqlCommand(query6, con6);
            con6.Open();
            
            string correctans = "";
            SqlDataReader dr6 = sqlcmd6.ExecuteReader();
            if (dr6.Read())
            {
                correctans = dr6["ans"].ToString();
                
            }


            if (correctans == hf)
            {
                SqlConnection con4 = new SqlConnection("Data Source=efbha.database.windows.net;Initial Catalog=efbdatabase;Integrated Security=False;User ID=hisubh;Password=nathcorp!1");
                con4.Open();
                string updatescore = "Select * from Userlogin WHERE username='" + Session["current_user"] + "'";

                SqlCommand sqlcmd4 = new SqlCommand(updatescore, con4);
                 SqlDataReader dr5 = sqlcmd4.ExecuteReader();
                if (dr5.Read())
                {
                    score = int.Parse(dr5["markstech"].ToString());
                        
                }

                SqlConnection con5 = new SqlConnection("Data Source=efbha.database.windows.net;Initial Catalog=efbdatabase;Integrated Security=False;User ID=hisubh;Password=nathcorp!1");
                con5.Open();
                updatescore = "Update Userlogin set markstech = "+(score+4)+ " WHERE username='" + Session["current_user"] + "'";
                SqlCommand sqlcmd5 = new SqlCommand(updatescore, con5);
                dr5 = sqlcmd5.ExecuteReader();
            }
            else
            {
                SqlConnection con7 = new SqlConnection("Data Source=efbha.database.windows.net;Initial Catalog=efbdatabase;Integrated Security=False;User ID=hisubh;Password=nathcorp!1");
                con7.Open();
                string updatescore2 = "Select * from Userlogin WHERE username='" + Session["current_user"] + "'";

                SqlCommand sqlcmd7 = new SqlCommand(updatescore2, con7);
                SqlDataReader dr7 = sqlcmd7.ExecuteReader();
                if (dr7.Read())
                {
                    score = int.Parse(dr7["markstech"].ToString());

                }

                SqlConnection con8 = new SqlConnection("Data Source=efbha.database.windows.net;Initial Catalog=efbdatabase;Integrated Security=False;User ID=hisubh;Password=nathcorp!1");
                con8.Open();
                updatescore2 = "Update Userlogin set markstech = " + (score - 1) + " WHERE username='" + Session["current_user"] + "'";
                SqlCommand sqlcmd8 = new SqlCommand(updatescore2, con8);
                dr7 = sqlcmd8.ExecuteReader();
            }
            

            RadioButton1.Checked = false;
            RadioButton2.Checked = false;
            RadioButton3.Checked = false;
            RadioButton4.Checked = false;
            int count = prevques + 1;

            if (count > 15)
            {
                Response.Redirect("Result.aspx");
            }

            SqlConnection usercon2 = new SqlConnection("Data Source = efbha.database.windows.net; Initial Catalog = efbdatabase; Integrated Security = False; User ID = hisubh; Password = nathcorp!1; Connect Timeout = 15; Encrypt = False; TrustServerCertificate = True; ApplicationIntent = ReadWrite; MultiSubnetFailover = False");
            usercon2.Open();
            string struser2 = "select * from Userlogin WHERE username='"+Session["current_user"]+"'";
            SqlCommand usercom2 = new SqlCommand(struser2, usercon2);
            SqlDataReader user = usercom2.ExecuteReader();
            user.Read();
            Label3.Text = user["username"].ToString();

            using (SqlConnection con3 = new SqlConnection("Data Source=efbha.database.windows.net;Initial Catalog=efbdatabase;Integrated Security=False;User ID=hisubh;Password=nathcorp!1"))
            {

                string query3 = "Select * from Questions where Question_id = " + count + "order by newid()";
                SqlCommand sqlcmd3 = new SqlCommand(query3, con3);
                con3.Open();
                string area = "";

                SqlDataReader dr1 = sqlcmd3.ExecuteReader();
                if (dr1.Read())
                {
                    Label2.Text = dr1["question_id"].ToString();
                    Label1.Text = dr1["question"].ToString();
                    RadioButton1.Text = dr1["option_A"].ToString();
                    RadioButton2.Text = dr1["option_B"].ToString();
                    RadioButton3.Text = dr1["option_C"].ToString();
                    RadioButton4.Text = dr1["option_D"].ToString();

                }

            }
            //int i = Convert.ToInt32(Label2.Text);
            //alreadyAnswered(i);
            //NextQuestion();
        }

        protected void timer1_tick(object sender, EventArgs e)
        {
            if (0 > DateTime.Compare(DateTime.Now,
            DateTime.Parse(Session["timeout"].ToString())))
            {
                int a = (Int32)DateTime.Parse(Session["timeout"].ToString()).Subtract(DateTime.Now).TotalSeconds;


                TimeSpan span = TimeSpan.FromSeconds(a);
                string timeleft = span.ToString(@"hh\:mm\:ss");
                lblTimer.Text = timeleft;
                //double.Parse("52.8725945", System.Globalization.CultureInfo.InvariantCulture);
            }

            else
            {
                Response.Redirect("Result.aspx");
            }
        }

        protected void finishbtn_Click(object sender, EventArgs e)
        {
            int prevques = int.Parse(Label2.Text);

            string hf1 = "";

            if (RadioButton1.Checked)
            {
                hf1 = "A";
            }
            else if (RadioButton2.Checked)
            {
                hf1 = "B";
            }
            else if (RadioButton3.Checked)
            {
                hf1 = "C";
            }
            else if (RadioButton4.Checked)
            {
                hf1 = "D";
            }
            else
            {
                hf1 = "";
            }

            SqlConnection con61 = new SqlConnection("Data Source=efbha.database.windows.net;Initial Catalog=efbdatabase;Integrated Security=False;User ID=hisubh;Password=nathcorp!1");

            string query61 = "Select * from Questions where Question_id = " + prevques + "";
            SqlCommand sqlcmd61 = new SqlCommand(query61, con61);
            con61.Open();

            string correctans1 = "";
            SqlDataReader dr61 = sqlcmd61.ExecuteReader();
            if (dr61.Read())
            {
                correctans1 = dr61["ans"].ToString();

            }


            if (correctans1 == hf1)
            {
                SqlConnection con41 = new SqlConnection("Data Source=efbha.database.windows.net;Initial Catalog=efbdatabase;Integrated Security=False;User ID=hisubh;Password=nathcorp!1");
                con41.Open();
                string updatescore1 = "Select * from Userlogin WHERE username='" + Session["current_user"] + "'";

                SqlCommand sqlcmd41 = new SqlCommand(updatescore1, con41);
                SqlDataReader dr51 = sqlcmd41.ExecuteReader();
                if (dr51.Read())
                {
                    score = int.Parse(dr51["markstech"].ToString());

                }

                SqlConnection con51 = new SqlConnection("Data Source=efbha.database.windows.net;Initial Catalog=efbdatabase;Integrated Security=False;User ID=hisubh;Password=nathcorp!1;");
                con51.Open();
                updatescore1 = "Update Userlogin set markstech = " + (score + 4) + " WHERE username='" + Session["current_user"] + "'";
                SqlCommand sqlcmd51 = new SqlCommand(updatescore1, con51);
                dr51 = sqlcmd51.ExecuteReader();
            }
            else if (correctans1 == null)
            {
                SqlConnection con71 = new SqlConnection("Data Source=efbha.database.windows.net;Initial Catalog=efbdatabase;Integrated Security=False;User ID=hisubh;Password=nathcorp!1");
                con71.Open();
                string updatescore21 = "Select * from Userlogin WHERE username='" + Session["current_user"] + "'";

                SqlCommand sqlcmd71 = new SqlCommand(updatescore21, con71);
                SqlDataReader dr71 = sqlcmd71.ExecuteReader();
                if (dr71.Read())
                {
                    score = int.Parse(dr71["markstech"].ToString());

                }

                SqlConnection con81 = new SqlConnection("Data Source=efbha.database.windows.net;Initial Catalog=efbdatabase;Integrated Security=False;User ID=hisubh;Password=nathcorp!1");
                con81.Open();
                updatescore21 = "Update Userlogin set markstech = " + (score) + " WHERE username='" + Session["current_user"] + "'";
                SqlCommand sqlcmd81 = new SqlCommand(updatescore21, con81);
                dr71 = sqlcmd81.ExecuteReader();
            }
            else {
                SqlConnection con711 = new SqlConnection("Data Source=efbha.database.windows.net;Initial Catalog=efbdatabase;Integrated Security=False;User ID=hisubh;Password=nathcorp!1");
                con711.Open();
                string updatescore211 = "Select * from Userlogin WHERE username='" + Session["current_user"] + "'";

                SqlCommand sqlcmd711 = new SqlCommand(updatescore211, con711);
                SqlDataReader dr711 = sqlcmd711.ExecuteReader();
                if (dr711.Read())
                {
                    score = int.Parse(dr711["markstech"].ToString());

                }

                using (SqlConnection con811 = new SqlConnection("Data Source=efbha.database.windows.net;Initial Catalog=efbdatabase;Integrated Security=False;User ID=hisubh;Password=nathcorp!1")) { 
                    con811.Open();
                updatescore211 = "Update Userlogin set markstech = " + (score) + " WHERE username='" + Session["current_user"] + "'";
                SqlCommand sqlcmd811 = new SqlCommand(updatescore211, con811);
                dr711 = sqlcmd811.ExecuteReader();
                }
            }

            Response.Redirect("Result.aspx");
        }


        //private void NextQuestion()
        //{
        //    Previous.Enabled = true;
        //    // CheckResult();//Checking result





        //    if (ViewState["clicks"] != null) //For getting next question 
        //    {

        //        Countt = (int)ViewState["clicks"] + 1;
        //    }

        //    ViewState["clicks"] = Countt;

        //}



        //private void alreadyAnswered(int id)
        //{
        //    List<int> list = ((List<int>)ViewState["Qid"]);


        //    if (list.Contains(id))
        //    {
        //        MessageBox.Show("answered");
        //    }
        //    else
        //    {
        //        list.Add(id);
        //        ViewState["Qid"] = list;

        //    }


        //}

    }
}


    //if (RadioButton1 != null)
    //{
    //    if (RadioButton1.Checked)
    //    {
    //        HiddenField hf = (HiddenField)GridView1.Rows[i]
    //                        .Cells[0].FindControl("HiddenField1");
    //        if (hf != null)
    //        {
    //            ViewState["SelectedContact"] = hf.Value;
    //        }
    //    }
    //}
    //else if (RadioButton2 != null)
    //{
    //    if (RadioButton2.Checked)
    //    {
    //        HiddenField hf = (HiddenField)FindControl("HiddenField1");
    //        if (hf != null)
    //        {
    //            ViewState["SelectedContact"] = hf.Value;
    //        }
    //    }
    //}
    //else if (RadioButton3 != null)
    //{
    //    if (RadioButton3.Checked)
    //    {
    //        HiddenField hf = (HiddenField)FindControl("HiddenField1");
    //        if (hf != null)
    //        {
    //            ViewState["SelectedContact"] = hf.Value;
    //        }
    //    }
    //}
    //else if (RadioButton4 != null)
    //{
    //    if (RadioButton4.Checked)
    //    {
    //        HiddenField hf = (HiddenField)FindControl("HiddenField1");
    //        if (hf != null)
    //        {
    //            ViewState["SelectedContact"] = hf.Value;
    //        }
    //    }
    //}
    //else
    //{; ; }
    //        }
    //    }
    //}
    