using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Join : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblMsg.Text = "";
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }

    protected void btnConfirmReservation_Click(object sender, EventArgs e)
    {
        string schoolName = txtSchoolName.Text.Trim();
        string adderss = txtAddress.Text.Trim();
        string level = checkLevel.SelectedValue;
        string email = txtEmail.Text.Trim();
        string password = txtPassword.Text.Trim();
        string latitude = Request.Form["lat"];
        string longitude = Request.Form["lng"];
        bool isEmail = IsValidEmail(email);
        if(schoolName != "" && adderss != "" && level != "" && isEmail && password != "" && latitude != "" && longitude != "")
        {
            // store data data in DB
            School s = new School();
            School.SchoolName = schoolName;
            School.Address = adderss;
            School.Email = email;
            School.Password = password;
            School.Level = level;
            School.Latitude = latitude;
            School.Longitude = longitude;
            object obj = s.Register();
            if (obj != null)
                lblMsg.Text = "Congratulations You have been registered, you can login using your email and password";
            else
                lblMsg.Text = "An Error occurred during saving data, please try agian";
        }
        else
        {
            if (!isEmail)
                lblMsg.Text = "Invalid Email Address";
            else
                lblMsg.Text = "Some Invalid Fields !";
        }
    }
    bool IsValidEmail(string email)
    {
        try
        {
            var addr = new System.Net.Mail.MailAddress(email);
            return addr.Address == email;
        }
        catch
        {
            return false;
        }
    }
}