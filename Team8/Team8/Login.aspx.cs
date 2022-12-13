using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Team8
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            {

                /* This event takes string input from the text boxes and begins the validation process. 
                 * It checks whether the values correlate to eachother, if they are correct, and makes sure
                 * that the necessary information is entered.
                */


                //Create variables to store User ID and Password
                string UserID = "";
                string Password = "";
                string Name = "";

                //Declaring connection from SQLDataSource
                SqlConnection con = new SqlConnection(SqlDataSource1.ConnectionString);

                //Declaring SQL that I want to use from the SQLDataSource
                SqlCommand cmdSelect = new SqlCommand(SqlDataSource1.SelectCommand);

                //Indicate Parameters
                cmdSelect.Parameters.AddWithValue("@Email", txtUser.Text.Trim());

                //Connection to run on
                cmdSelect.Connection = con;

                //Data reader to hold results
                SqlDataReader drReader;

                //Open database connection
                con.Open();

                //Execute reader and set command behavior to close connection
                drReader = cmdSelect.ExecuteReader(CommandBehavior.CloseConnection);

                //Declare a while loop to get strings from result set
                while (drReader.Read())
                {
                    UserID = drReader.GetString(0).Trim();
                    Password = drReader.GetString(7).Trim();
                    Name = drReader.GetString(5).Trim() + " " +
                    drReader.GetString(6).Trim();
                }

                //Close connection
                con.Close();

                //Logical test to see if credentials match
                if (txtUser.Text == UserID && txtPass.Text == Password)
                {
                    //Executes if true. But first, session variable.
                    Session["User"] = UserID;

                    //Then send user to success page
                    Response.Redirect("LoginSuccess.aspx");
                }

                else //If credentials entered do not meet the requirements to login successfully
                {
                    //Display error message
                    lblError.Text = "Incorrect User Name or Password";
                }
            }
        }
    }
}