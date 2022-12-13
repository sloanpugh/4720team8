using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.NetworkInformation;

namespace Team8
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {


            //declaring a SQLConnection and setting its connection string to the SQLdatasource

            SqlConnection con = new SqlConnection(SqlDataSource1.ConnectionString);


            //declaring the SQLCommand and telling it which command to use from the SQLDatasource

            SqlCommand cmdInsert = new SqlCommand(SqlDataSource1.InsertCommand);


            //connection given to SQLCommand


            cmdInsert.Connection = con;


            //listing the parameters used by the SQLCommand

            cmdInsert.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());

            cmdInsert.Parameters.AddWithValue("@Address", txtAddress.Text.Trim());

            cmdInsert.Parameters.AddWithValue("@City", txtCity.Text.Trim());

            cmdInsert.Parameters.AddWithValue("@State", txtState.Text.Trim());

            cmdInsert.Parameters.AddWithValue("@Zip", txtZip.Text.Trim());

            cmdInsert.Parameters.AddWithValue("@FirstName", txtFName.Text.Trim());

            cmdInsert.Parameters.AddWithValue("@LastName", txtLName.Text.Trim());

            cmdInsert.Parameters.AddWithValue("@Password", txtPass.Text.Trim());


            //Opening the connection

            con.Open();

            //Executing the insert command by executing a non-query

            cmdInsert.ExecuteNonQuery();

            //Closing the connection

            con.Close();

            //Redirecting to a page to let them know their account was created.

            Response.Redirect("RegConfirmation.aspx");


        }
    }
}
