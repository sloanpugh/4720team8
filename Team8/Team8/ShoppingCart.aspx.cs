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
    public partial class ShoppingCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void btn_CartSubmit_Click(object sender, EventArgs e)
        {
            lbl_Services.Text = "Thank you for taking interest in our services! A team member " +
                "will be reaching out to you shortly at " + Session["User"].ToString() + "." +
                "We appreciate you being apart of The World Fund!";
        }

        protected void cb_BSConsult_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void cb_ITConsult_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void cb_MSConsult_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void cb_MSServe_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}