using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Reservation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        lblMsg.Text = "";
        if (Session["school"] != null)
        {
            txtSchoolName.Text = Session["school"].ToString();
        }
        //else
        //{
        //    Response.Redirect("Home.aspx");
        //}
    }
    protected void btnConfirmReservation_Click(object sender, EventArgs e){
        string s,schoolName, gender, level, address, birth, grade;
        s = txtStudentName.Text.Trim();
        schoolName = txtSchoolName.Text.Trim();
        gender = checkGender.SelectedValue;
        address = txtAddress.Text.Trim();
        birth = txtDateOfBirth.Text.Trim();
        grade = dropGrades.Text;
        level = dropSchoolLevels.SelectedValue;
        bool isSelected = isGenderChecked();
        if ( s == "" || schoolName == ""||  !isSelected || address == "" || birth == "" || grade == "" || dropSchoolLevels.SelectedIndex == 0){
            lblMsg.Text = "Some Fields Are Required";
        }
        else{
            //DateTime d = new DateTime();
            //bool isDate = DateTime.TryParse(txtDateOfBirth.Text.Trim(), out d);
            //if (!isDate){
            //    lblMsg.Text = "Invalid Date";
            //}
            //else{
                ServiceReference1.WebService1SoapClient client = new ServiceReference1.WebService1SoapClient();
                object o = client.MakeReservation(schoolName, s, gender, address, level, birth, grade);
                //Student s = new Student();
                //Student.SchoolName = schoolName;
                //Student.StudentName = studentName;
                //Student.Gender = gender;
                //Student.Address = address;
                //Student.Level = level;
                //Student.Birthdate = birth;
                //Student.Grade = dropGrades.SelectedItem.Text;
                //object obj = s.Reserve();
                if(o != null)
                    lblMsg.Text = "You are now booked this school, this is a primitive reservation you must have to go to school to complete the registration process "
                          + "<br />Note: You must print this message(page) before going to the school";
           // }
        }
    }
    private bool isGenderChecked()
    {
        for (int i = 0; i < checkGender.Items.Count; i++)
        {
            if (checkGender.Items[i].Selected)
                return true;
        }
        return false;
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtStudentName.Text = "";
        checkGender.SelectedIndex = -1;
        dropSchoolLevels.SelectedIndex = 0;
        txtAddress.Text = "";
        txtDateOfBirth.Text = "";
        dropGrades.Items.Clear();
    }
    protected void dropSchoolLevels_SelectedIndexChanged(object sender, EventArgs e)
    {
        if(dropSchoolLevels.SelectedIndex == 0)
        {
            dropGrades.Items.Clear();
        }else if(dropSchoolLevels.SelectedIndex == 1)
        {
            dropGrades.Items.Clear();
            dropGrades.Items.Add("First Level");
            dropGrades.Items.Add("Second Level");
            dropGrades.Items.Add("Third Level");
            dropGrades.Items.Add("Fourth Level");
            dropGrades.Items.Add("Fifth Level");
            dropGrades.Items.Add("Sixth Level");

        }
        else
        {
            dropGrades.Items.Clear();
            dropGrades.Items.Add("First Level");
            dropGrades.Items.Add("Second Level");
            dropGrades.Items.Add("Third Level");
        }
    }
}