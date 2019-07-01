using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    private  static List<List<string>> schoolList;
    public static List<List<string>> SchoolList
    {
        get
        {
            return schoolList;
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        Session["school"] = null;
        if (!Page.IsPostBack)
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = false;
            panelOutsideBranch.Visible = false;
            panelOurBraches.Visible = false;
            radioChoice.SelectedIndex = -1;
            radios.SelectedIndex = -1;
        }
        //schoolList2 = schoolList;
    }
    protected void radios_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblMsg.Text = "";
        if(radios.SelectedIndex == 0)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
            Panel3.Visible = false;
        }
        else if(radios.SelectedIndex == 1)
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
            Panel3.Visible = false;
            PanelSearchNameResults.Visible = false;
            dropSchoolLevels.SelectedIndex = 0;
        }
        else if(radios.SelectedIndex == 2)
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = true;
            PanelSearchLevelResults.Visible = false;
        }
    }
    protected void radioChoice_SelectedIndexChanged(object sender, EventArgs e)
    {
        if(radioChoice.SelectedIndex == 0)
        {
            panelOurBraches.Visible = true;
            panelOutsideBranch.Visible = false;
        }
        else
        {
            panelOutsideBranch.Visible = true;
            panelOurBraches.Visible = false;

        }
    }
    protected void btnSearchName_Click(object sender, EventArgs e)
    {
        radioSchoolNameResults.Items.Clear();
        lblMsg.Text = "";
        string name = txtName.Text.Trim();
        if(name != "")
        {
            School s = new School();
            DataSet ds =  s.GetSchoolByName(name);
            if(ds != null)
            {
                if (ds.Tables[0].Rows.Count > 0)
                {
                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    {
                        radioSchoolNameResults.Items.Add(ds.Tables[0].Rows[i][1].ToString());
                    }
                    PanelSearchNameResults.Visible = true;
                    btnReserve.Visible = true;
                }
                else
                {
                    PanelSearchNameResults.Visible = false;
                    btnReserve.Visible = false;
                    lblMsg.Text = "No Result Found";
                }
            }
        }
        else
        {
            lblMsg.Text = "Please, Enter School Name";
        }
    }
    protected void btnReserve_Click(object sender, EventArgs e)
    {
        if (radioSchoolNameResults.SelectedIndex != -1)
        {
            Session.Add("school", radioSchoolNameResults.SelectedItem.Text);
            Response.Redirect("Reservation.aspx");
        }
        else
        {
            lblMsg.Text = "No Such School Selected";
        }
    }
    protected void btnSearchLevel_Click(object sender, EventArgs e)
    {
        radioSchoolLevelResults.Items.Clear();
        PanelSearchLevelResults.Visible = false;
        if (dropSchoolLevels.SelectedIndex != 0)
        {
            string level = dropSchoolLevels.SelectedItem.Text;
            School s = new School();
            DataSet ds = s.GetSchoolByLevel(level);
            if (ds != null)
            {
                if (ds.Tables[0].Rows.Count > 0)
                {
                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    {
                        radioSchoolLevelResults.Items.Add(ds.Tables[0].Rows[i][1].ToString());
                    }
                    lblMsg.Text = "";
                    PanelSearchLevelResults.Visible = true;

                }
                else
                {
                    lblMsg.Text = "No Result Found";
                }
            }
        }
        else
        {
            lblMsg.Text = "Please, Select Education Level";
        }
    }
    protected void btnReserveLevel_Click(object sender, EventArgs e)
    {
        if(radioSchoolLevelResults.SelectedIndex != -1)
        {
            string school = radioSchoolLevelResults.SelectedItem.Text;
            Session.Add("school", school);
            Response.Redirect("Reservation.aspx");
        }
        else
        {
            lblMsg.Text = "No Such School Selected";
        }
    }
    protected void btnSearchDistance0_Click(object sender, EventArgs e)
    {
        Session.Add("school", dropBranches.SelectedItem.Text);
        Response.Redirect("Reservation.aspx");
    }
    protected void btnSearchDistance_Click(object sender, EventArgs e)
    {
        string l = Request.Form["lat"];
        string latitude = Request.Form["lat"];
        string longitude = Request.Form["lng"];
        double distance;
        bool isDistance = Double.TryParse(txtDistance.Text.Trim(),out distance);
        if (isDistance)
        {
            if(latitude != "" && longitude != "")
            {
                School s = new School();
                DataSet ds = s.GetSchools();
                var schoolsCount = 0;
                if (ds != null)
                {
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                        {
                            double lat = Convert.ToDouble(ds.Tables[0].Rows[i][6].ToString());
                            double lng = Convert.ToDouble(ds.Tables[0].Rows[i][7].ToString());
                            double d = getDistanceFromLatLonInKm(double.Parse(latitude), double.Parse(longitude), lat, lng);
                            int intd = Convert.ToInt32(d);
                            int intdistance = Convert.ToInt32(distance);
                            if (intd <= intdistance)
                            {
                                string name = ds.Tables[0].Rows[i][1].ToString();
                                string address = ds.Tables[0].Rows[i][2].ToString();
                                string level = ds.Tables[0].Rows[i][3].ToString();
                                string email = ds.Tables[0].Rows[i][4].ToString();
                                string latx = ds.Tables[0].Rows[i][6].ToString();
                                string lngx = ds.Tables[0].Rows[i][7].ToString();
                                var param = "'" + name + "','" + address + "','" + level + "','"+ email + "','" + latx + "','"+lngx+"'";
                                ScriptManager.RegisterClientScriptBlock(this, GetType(),i.ToString(), "DisplayMarkers("+param+");", true);
                                schoolsCount++;
                            }
                        }
                        lblMsg2.Text = "("+schoolsCount + ") Schools Found";
                    }
                    else
                    {
                        lblMsg2.Text = "No Result Found";
                    }
                }
            }
            else
            {
                lblMsg2.Text = "Right Click On The Map";
            }
        }else
        {
            lblMsg2.Text = "Enter Valid Distance";
        }
    }
    private double RadianToDegree(double angle)
    {
        return angle * (180.0 / Math.PI);
    }
    private double DegreeToRadian(double angle)
    {
        return Math.PI * angle / 180.0;
    }
    private double getDistanceFromLatLonInKm(double lat1, double lon1, double lat2, double lon2)
    {
        double R = 6371; // Radius of the earth in km
        double dLat = DegreeToRadian(lat2 - lat1);  // deg2rad below
        double dLon = DegreeToRadian(lon2 - lon1);
        double a =
          Math.Sin(dLat / 2) * Math.Sin(dLat / 2) +
          Math.Cos(DegreeToRadian(lat1)) * Math.Cos(DegreeToRadian(lat2)) *
          Math.Sin(dLon / 2) * Math.Sin(dLon / 2)
          ;
        double c = 2 * Math.Atan2(Math.Sqrt(a), Math.Sqrt(1 - a));
        double d = R * c; // Distance in km
        return d;
    }
    protected void btnClearResults_Click(object sender, EventArgs e)
    {
        ScriptManager.RegisterClientScriptBlock(this, GetType(), "delete2", "DeleteMarkers2();", true);
        lblMsg2.Text = "";
    }
}