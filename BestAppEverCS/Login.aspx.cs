using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    //On "Page Load" code:
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void butOK_Click(object sender, EventArgs e)
    {
        if (txtUsername.Text == "m")
        {
            if (txtPassword.Text == "m")
            {
                //then do this:
                Response.Redirect("Orders.aspx");
            }
            else
            {
                lblError.Text = "try again.";
            }
        }
        else
        {
            //blank the label
            lblError.Text = "";
        }
    }
}