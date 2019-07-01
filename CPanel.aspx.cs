using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CPanel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["schoolName"] != null)
            lblWelcome.Text += Session["schoolName"].ToString();
        else
            Response.Redirect("Login.aspx");
    }

    protected void LinkButtonLogOut_Click(object sender, EventArgs e)
    {
        Session["schoolName"] = null;
        Response.Redirect("Login.aspx");
    }
}