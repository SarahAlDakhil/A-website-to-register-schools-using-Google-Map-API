<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Reservation.aspx.cs" Inherits="Reservation" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en-US">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Reservation</title>
    <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="js/karma.js"></script>
    <link href="style.css" rel="stylesheet" type="text/css" />
    <link href="css/karma-royal-blue.css" rel="stylesheet" type="text/css" />
    <link href="css/ucStyle.css" rel="stylesheet" />
    <link rel="shortcut icon" href="#" />
    <style type="text/css">
        .auto-style1 {
            width: 342px;
        }

        .auto-style2 {
            width: 342px;
            height: 23px;
        }

        #gmap {
            height: 600px;
            width: 60%;
        }

        .auto-style3 {
            color: #800000;
            font-size: x-large;
        }

        .auto-style4 {
            left: 0px;
            top: -1px;
        }

        .auto-style7 {
            height: 23px;
        }

        .auto-style8 {
            width: 214px;
        }

        .auto-style9 {
            width: 214px;
            height: 23px;
        }

        .auto-style10 {
            color: #000000;
        }

        .auto-style11 {
            width: 599px;
            align-content: center;
            padding: 40px;
            background-color: #FDFDFD;
            margin: 0 auto 10px;
            border-radius: 2px; /* box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3); */
            ;
            overflow: hidden;
        }

        .auto-style12 {
            color: #800000;
        }

        .auto-style13 {
            color: #000000;
            font-size: small;
        }
        .auto-style14 {
            color: #FFFFFF;
        }
    </style>
    <%-- <script>
        alert(localStorage.getItem("school"));
    </script>--%>
</head>
<body>
    <form id="form1" runat="server">
        <div id="wrapper">
            <div id="header">
                <div class="top-block">
                    <div class="top-holder">
                    </div>
                    <!-- end top-holder -->
                </div>
                <!-- end top-block -->
                <div class="header-holder">
                    <div class="rays">
                        <div class="header-area">
                            <a href="javascript:void();" class="logo">
                                <img src="images/karma-royal-blue/RESERVATION-SCHOOL_LOGO.jpg" alt="Learning logo" width="140" height="140" />
                            </a>
                            <h1>
                                <span class="auto-style14">&nbsp;&nbsp;&nbsp; School Support Services</span>
                            </h1>
                            <ul id="menu-main-nav">
                                <li class="current_page_item">
                                    <a href="Home.aspx"><span><strong>Home</strong></span></a>
                                </li>
                                <li>
                                    <a href="Join.aspx"><span><strong>Join us</strong></span></a>
                                </li>
                                <li>
                                    <a href="Login.aspx"><span><strong>Log in</strong></span></a>
                                </li>
                            </ul>
                            <h1>
                                <span class="auto-style14">&nbsp;&nbsp;&nbsp; Learning International School</span><br /><br />
                                <span class="auto-style14">&nbsp;&nbsp;&nbsp; School Reservation Service</span>
                            </h1>
                        </div>
                        <!-- header-area -->
                    </div>
                    <!-- end rays -->
                </div>
                <!-- end header-holder -->
            </div>
            <!-- end header -->
            <div id="main" class="auto-style4">
                <div class="main-area">
                    <div class="main-holder">
                        <div>
                            <div class="auto-style11" style="border: 2px solid #808080">

                                <h1 class="centering">&nbsp;<center class="auto-style3">Reservation For Schools</center>
                                </h1>
                                <br />
                                <asp:ScriptManager ID="ScriptManager2" runat="server">
                                </asp:ScriptManager>
                                <br />
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                    <ContentTemplate>
                                        <table style="width: 100%;">
                                            <tr>
                                                <td class="auto-style9">
                                                    <asp:Label ID="Label7" runat="server" CssClass="auto-style10" Font-Bold="True" Font-Size="11pt" Text="Student Name"></asp:Label>
                                                </td>
                                                <td class="auto-style7">
                                                    <asp:TextBox ID="txtStudentName" runat="server" Height="30px" Width="100%" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style9">
                                                    <asp:Label ID="Label1" runat="server" CssClass="auto-style10" Font-Bold="True" Font-Size="11pt" Text="School Name"></asp:Label>
                                                </td>
                                                <td class="auto-style7">
                                                    <asp:TextBox ID="txtSchoolName" runat="server" Height="30px" Width="100%" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style8">
                                                    <asp:Label ID="Label2" runat="server" CssClass="auto-style10" Font-Bold="True" Font-Size="11pt" Text="Gender"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:CheckBoxList ID="checkGender" runat="server" CssClass="auto-style13" Font-Bold="True" RepeatDirection="Horizontal" Width="100%" Height="26px">
                                                        <asp:ListItem onclick="UncheckOthers(this)">Male</asp:ListItem>
                                                        <asp:ListItem onclick="UncheckOthers(this)">Female</asp:ListItem>
                                                    </asp:CheckBoxList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style9">
                                                    <asp:Label ID="Label3" runat="server" CssClass="auto-style10" Font-Bold="True" Font-Size="11pt" Text="Education Level"></asp:Label>
                                                </td>
                                                <td class="auto-style7">
                                                    <asp:DropDownList ID="dropSchoolLevels" runat="server" AutoPostBack="True" Font-Bold="True" Font-Size="Small" Height="30px" Width="100%" OnSelectedIndexChanged="dropSchoolLevels_SelectedIndexChanged">
                                                        <asp:ListItem>&lt;-- select --&gt;</asp:ListItem>
                                                        <asp:ListItem>Primary</asp:ListItem>
                                                        <asp:ListItem>Secondary</asp:ListItem>
                                                        <asp:ListItem>High</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style9">
                                                    <asp:Label ID="Label4" runat="server" CssClass="auto-style10" Font-Bold="True" Font-Size="11pt" Text="Home Address"></asp:Label>
                                                </td>
                                                <td class="auto-style7">
                                                    <asp:TextBox ID="txtAddress" runat="server" Height="30px" Width="100%" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style9">
                                                    <asp:Label ID="Label5" runat="server" CssClass="auto-style10" Font-Bold="True" Font-Size="11pt" Text="Date Of Birth"></asp:Label>
                                                </td>
                                                <td class="auto-style7">
                                                    <asp:TextBox ID="txtDateOfBirth" runat="server" Height="30px" Width="100%" />
                                                    <ajaxToolkit:CalendarExtender ID="txtDateOfBirth_CalendarExtender" runat="server" BehaviorID="txtDateOfBirth_CalendarExtender" TargetControlID="txtDateOfBirth" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style9">
                                                    <asp:Label ID="Label6" runat="server" CssClass="auto-style10" Font-Bold="True" Font-Size="11pt" Text="Grade In School Next Year"></asp:Label>
                                                </td>
                                                <td class="auto-style7">
                                                    <asp:DropDownList ID="dropGrades" runat="server" AutoPostBack="True" Font-Bold="True" Font-Size="Small" Height="30px" Width="100%">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style9"></td>
                                                <td class="auto-style7"></td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style8">&nbsp;</td>
                                                <td>
                                                    <asp:Button ID="btnConfirmReservation" runat="server" class="login login-submit" Height="30px" OnClick="btnConfirmReservation_Click" Text="Confirm Reservation" Width="195px" />
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:Button ID="btnClear" runat="server" class="login login-submit" Height="30px" OnClick="btnClear_Click" Text="Clear" Width="152px" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style9"></td>
                                                <td class="auto-style7"></td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <asp:Label ID="lblMsg" runat="server" CssClass="auto-style12" Font-Bold="True" Font-Size="12pt"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                                <br />
                            </div>
                        </div>
                    </div>
                </div>
                <div id="footer_bottom">
                    <div class="info">
                        <div id="foot_left">
                            <p style="font-weight:bold; font-size:14px">Copyright &copy; 2017 School Support Services. All rights reserved.</p>
                            <p>&nbsp;</p>
                        </div>
                        <div id="foot_right">
                            <div class="top-footer"><a href="#" class="link-top">top</a></div>
                        </div>
                    </div>
                </div>
                <script type="text/javascript" src="js/jquery.cycle.all.min.js"></script>
            </div>
        </div>
        <script type="text/javascript" src="js/jquery-2-slider.js"></script>
        <script type="text/javascript" src="js/testimonial-slider.js"></script>
        <script type="text/javascript">
            if (TTjquery.browser.msie) { TTjquery(window).load(function () { TTjquery('.big-banner #main .main-area').css("padding-top", "118px"); }); } else { }
        </script>
        <script>
            function UncheckOthers(objchkbox) {
                //Get the parent control of checkbox which is the checkbox list
                var objchkList = objchkbox.parentNode.parentNode.parentNode;
                //Get the checkbox controls in checkboxlist
                var chkboxControls = objchkList.getElementsByTagName("input");
                //Loop through each check box controls
                for (var i = 0; i < chkboxControls.length; i++) {
                    //Check the current checkbox is not the one user selected
                    if (chkboxControls[i] != objchkbox && objchkbox.checked) {
                        //Uncheck all other checkboxes
                        chkboxControls[i].checked = false;
                    }
                }
            }
        </script>
        <script>
            if (localStorage.getItem("school") !== null) {
                document.getElementById('<%=txtSchoolName.ClientID %>').value = localStorage.getItem("school").toString();
                localStorage.clear();
            }
        </script>
    </form>

</body>
</html>
