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
    public partial class Update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            //Set lbl_email to session
            else
            {
                lbl_email.Text = (string)Session["User"];
            }

            lbl_email.Text = (string)Session["User"];
            //Set text box visibility to false
            if (!IsPostBack)
            {
                txt_fname.Visible = false;
                txt_lname.Visible = false;
                txt_Address.Visible = false;
                txt_password.Visible = false;
                txt_confirm_password.Visible = false;
                txt_Zip.Visible = false;
                txt_State.Visible = false;
            }

            //Set up our objects (connection, command, and datareader

            SqlConnection con = new SqlConnection(SqlDataSource1.ConnectionString);

            SqlCommand cmdSelect = new SqlCommand(SqlDataSource1.SelectCommand);

            //Configure command with connection and add paramerter value

            cmdSelect.Parameters.AddWithValue("@Email", lbl_email.Text.Trim());

            cmdSelect.Parameters.AddWithValue("@Address", txt_Address.Text.Trim());

            cmdSelect.Parameters.AddWithValue("@City", txt_City.Text.Trim());

            cmdSelect.Parameters.AddWithValue("@State", txt_State.Text.Trim());

            cmdSelect.Parameters.AddWithValue("@Zip", txt_Zip.Text.Trim());

            cmdSelect.Parameters.AddWithValue("@FirstName", txt_lname.Text.Trim());
            
            cmdSelect.Parameters.AddWithValue("@LastName", txt_lname.Text.Trim());

            cmdSelect.Parameters.AddWithValue("@Pass", txt_password.Text.Trim());

            cmdSelect.Connection = con;

            SqlDataReader drDataReader;

            //Open our connection

            con.Open();

            //Execute datareader

            drDataReader = cmdSelect.ExecuteReader(CommandBehavior.CloseConnection);

            //While loop to fill controls on page

            while (drDataReader.Read())
            {

                lbl_email.Text = drDataReader.GetString(0).Trim();
                lbl_Address.Text = drDataReader.GetString(1).Trim();
                lbl_City.Text = drDataReader.GetString(2).Trim();
                lbl_state.Text = drDataReader.GetString(3).Trim();
                lbl_zip.Text = drDataReader.GetInt32(4).ToString();
                lbl_fname.Text = drDataReader.GetString(5).Trim();
                lbl_lname.Text = drDataReader.GetString(6).ToString();
                lbl_password.Text = drDataReader.GetString(7).ToString();

            }

            //Close connection

            con.Close();

        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
            //Set up our objects (connection, command)

            SqlConnection conUp = new SqlConnection(SqlDataSource2.ConnectionString);

            SqlCommand cmdUpdate = new SqlCommand(SqlDataSource2.UpdateCommand);

            //Configure command with connection and add paramerter value. 

            cmdUpdate.Connection = conUp;

            //Load appropriate parameter values Use if statements to determine
            //whether to use 
            cmdUpdate.Parameters.AddWithValue("@Email", lbl_email.Text.Trim());

            if (cb_password.Checked == true)
            {
                cmdUpdate.Parameters.AddWithValue("@Password", txt_password.Text.Trim());
            }
            else
            {
                cmdUpdate.Parameters.AddWithValue("@Password", lbl_password.Text.Trim());
            }

            if (cb_fname.Checked == true)
            {
                cmdUpdate.Parameters.AddWithValue("@FirstName", txt_fname.Text.Trim());
            }
            else
            {
                cmdUpdate.Parameters.AddWithValue("@FirstName", lbl_fname.Text.Trim());
            }

            if (cb_lname.Checked == true)
            {
                cmdUpdate.Parameters.AddWithValue("@LastName", txt_lname.Text.Trim());
            }
            else
            {
                cmdUpdate.Parameters.AddWithValue("@LastName", lbl_lname.Text.Trim());
            }

            if (cb_Zip.Checked == true)
            {
                cmdUpdate.Parameters.AddWithValue("@Zip", Int32.Parse(txt_Zip.Text.Trim()));
            }
            else
            {
                cmdUpdate.Parameters.AddWithValue("@Zip", lbl_zip.Text.Trim());
            }

            if (cb_Address.Checked == true)
            {
                cmdUpdate.Parameters.AddWithValue("@Address", txt_Address.Text.Trim());
            }
            else
            {
                cmdUpdate.Parameters.AddWithValue("@Address", lbl_Address.Text.Trim());
            }

            if (cb_City.Checked == true)
            {
                cmdUpdate.Parameters.AddWithValue("@City", txt_City.Text.Trim());
            }
            else
            {
                cmdUpdate.Parameters.AddWithValue("@City", lbl_City.Text.Trim());
            }

            if (cb_State.Checked == true)
            {
                cmdUpdate.Parameters.AddWithValue("@State", txt_State.Text.Trim());
            }
            else
            {
                cmdUpdate.Parameters.AddWithValue("@State", lbl_state.Text.Trim());
            }


            //Open our connection

            conUp.Open();

            //Execute nonquery

            cmdUpdate.ExecuteNonQuery();

            //Close connection

            conUp.Close();

            //Redirect to self

            Response.Redirect("Update.aspx");
        }

        protected void cb_fname_CheckedChanged(object sender, EventArgs e)
        {
            //Tell app what to show if checkbox is not checked
            if (cb_fname.Checked == false)
            {
                txt_fname.Visible = false;
            }
            //Tell app what to do if the checkbox is checked
            else
            {
                txt_fname.Visible = true;
            }
        }

        protected void cb_lname_CheckedChanged(object sender, EventArgs e)
        {
            //Tell app what to show if checkbox is not checked
            if (cb_lname.Checked == false)
            {
                txt_lname.Visible = false;
            }
            //Tell app what to do if the checkbox is checked
            else
            {
                txt_lname.Visible = true;
            }
        }

        protected void cb_password_CheckedChanged(object sender, EventArgs e)
        {
            //Tell app what to show if checkbox is not checked
            if (cb_password.Checked == false)
            {
                txt_password.Visible = false;
                txt_confirm_password.Visible = false;
            }
            //Tell app what to do if the checkbox is checked
            else
            {
                txt_password.Visible = true;
                txt_confirm_password.Visible = true;
            }
        }

        protected void cb_Zip_CheckedChanged(object sender, EventArgs e)
        {
            if (cb_Zip.Checked == false)
            {
                txt_Zip.Visible = false;
            }
            //Tell app what to do if the checkbox is checked
            else
            {
                txt_Zip.Visible = true;
            }
        }
        protected void cb_State_CheckedChanged(object sender, EventArgs e)
        {
            if (cb_State.Checked == false)
            {
                txt_State.Visible = false;
            }
            //Tell app what to do if the checkbox is checked
            else
            {
                txt_State.Visible = true;
            }
        }
        protected void cb_Address_CheckedChanged(object sender, EventArgs e)
        {
            if (cb_Address.Checked == false)
            {
                txt_Address.Visible = false;
            }
            //Tell app what to do if the checkbox is checked
            else
            {
                txt_Address.Visible = true;
            }
        }
        protected void cb_City_CheckedChanged(object sender, EventArgs e)
        {
            if (cb_City.Checked == false)
            {
                txt_City.Visible = false;
            }
            //Tell app what to do if the checkbox is checked
            else
            {
                txt_City.Visible = true;
            }
        }

        protected void txt_Address_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txt_City_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txt_State_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txt_Zip_TextChanged(object sender, EventArgs e)
        {

        }
    }
}