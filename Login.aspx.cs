using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string email = txtEmail.Text.Trim();
        string password = txtPassword.Text.Trim();
        School.Email = email;
        string dbPassword = "";
        if (email.Length > 0 && password.Length > 0)
        {
            DataSet ds = new School().CheckInfo(email);
            if (ds != null)
            {
                if(ds.Tables[0].Rows.Count != 0)
                {
                    dbPassword =  ds.Tables[0].Rows[0][5].ToString();
                    if(password == dbPassword)
                    {
                        Session["schoolName"] = ds.Tables[0].Rows[0][1].ToString();
                        Response.Redirect("CPanel.aspx");
                    }
                    else
                    {
                        lblMsg.Text = "Incorrect Password !";
                    }
                }
                else
                {
                    lblMsg.Text = "Email Not Found";
                }
            }
            else
            {
                lblMsg.Text = "Database Error !.Please, Try Again";
            }
        } 
    }
}