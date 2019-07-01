<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CPanel.aspx.cs" Inherits="CPanel" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en-US">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Home</title>
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
            width: 90%;
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
            color: #FFFFFF;
        }
    </style>
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
                                <span class="auto-style7">&nbsp;&nbsp;&nbsp; SCHOOL SUPPORT SERVICES</span>
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
                                <li>
                                    <strong>
                                    <asp:LinkButton ID="LinkButtonLogOut" runat="server" OnClick="LinkButtonLogOut_Click" CssClass="auto-style7">
                                    <span>Log out</span>
                                    </asp:LinkButton>
                                    </strong>
                                </li>
                            </ul>
                            <h1>
                                <span class="auto-style7">&nbsp;&nbsp;&nbsp; Learning International School</span><br /><br />
                                <span class="auto-style7">&nbsp;&nbsp;&nbsp; School Reservation Service 
                            </span>
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
                            <div class="login-card">

                                <center class="auto-style3">
                                    <asp:Label ID="lblWelcome" runat="server" Text="Welcome "></asp:Label>
                                </center>

                            </div>
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
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
            </div>
            <script type="text/javascript" src="js/jquery.cycle.all.min.js"></script>
        </div>
        <script type="text/javascript" src="js/jquery-2-slider.js"></script>
        <script type="text/javascript" src="js/testimonial-slider.js"></script>
        <script type="text/javascript">
            if (TTjquery.browser.msie) { TTjquery(window).load(function () { TTjquery('.big-banner #main .main-area').css("padding-top", "118px"); }); } else { }
        </script>
    </form>
</body>
</html>
