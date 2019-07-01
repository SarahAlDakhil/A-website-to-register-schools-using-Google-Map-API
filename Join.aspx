<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Join.aspx.cs" Inherits="Join" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en-US">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Join</title>
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
            width: 100%;
        }

        .auto-style3 {
            color: #800000;
            font-size: x-large;
        }

        .auto-style4 {
            left: 0px;
            top: -1px;
        }

        .auto-style10 {
            color: #000000;
        }

        .auto-style11 {
            width: 691px;
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
            width: 100%;
        }

        .auto-style21 {
            margin-left: 40px;
            width: 338px;
        }

        .auto-style22 {
            height: 23px;
            width: 338px;
        }

        .auto-style24 {
            width: 210px;
            height: 23px;
        }

        .auto-style25 {
            width: 210px;
        }

        .auto-style26 {
            height: 23px;
        }
        .auto-style27 {
            color: #FF0000;
        }
        .auto-style28 {
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
                                <span class="auto-style28">&nbsp;&nbsp;&nbsp; School Support Services</span>
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
                                <span class="auto-style28">&nbsp;&nbsp;&nbsp; Learning International School</span><br /><br />
                                <span class="auto-style28">&nbsp;&nbsp;&nbsp; School Reservation Service
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
                            <div class="auto-style11" style="border: 2px solid #808080">

                                <h1 class="centering">&nbsp;<center class="auto-style3">School Registration</center>
                                </h1>

                                <br />
                                <asp:ScriptManager ID="ScriptManager2" runat="server">
                                </asp:ScriptManager>
                                <br />
                                <table class="auto-style14">
                                    <tr>
                                        <td class="auto-style24">
                                            <asp:Label ID="Label1" runat="server" CssClass="auto-style10" Font-Bold="True" Font-Size="11pt" Text="School Name *"></asp:Label>
                                        </td>
                                        <td class="auto-style22">
                                            <asp:TextBox ID="txtSchoolName" runat="server" Height="30px" Width="100%" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style24">
                                            <asp:Label ID="Label4" runat="server" CssClass="auto-style10" Font-Bold="True" Font-Size="11pt" Text="Address *"></asp:Label>
                                        </td>
                                        <td class="auto-style22">
                                            <asp:TextBox ID="txtAddress" runat="server" Height="30px" Width="100%" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style25">
                                            <asp:Label ID="Label2" runat="server" CssClass="auto-style10" Font-Bold="True" Font-Size="11pt" Text="Supported Education Level *"></asp:Label>
                                        </td>
                                        <td class="auto-style21">
                                            <asp:CheckBoxList ID="checkLevel" runat="server" CssClass="auto-style13" Font-Bold="True" RepeatDirection="Horizontal" Width="100%">
                                                <asp:ListItem Value="Primary" onclick="UncheckOthers(this)">Primary</asp:ListItem>
                                                <asp:ListItem Value="Secondary" onclick="UncheckOthers(this)">Secondary</asp:ListItem>
                                                <asp:ListItem Value="High" onclick="UncheckOthers(this)">High</asp:ListItem>
                                            </asp:CheckBoxList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style24">&nbsp;</td>
                                        <td class="auto-style22">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style24">
                                            <asp:Label ID="Label5" runat="server" CssClass="auto-style10" Font-Bold="True" Font-Size="11pt" Text="Email *"></asp:Label>
                                        </td>
                                        <td class="auto-style22">
                                            <asp:TextBox ID="txtEmail" runat="server" Height="30px" Width="100%" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style24">
                                            <asp:Label ID="Label6" runat="server" CssClass="auto-style10" Font-Bold="True" Font-Size="11pt" Text="Password *"></asp:Label>
                                        </td>
                                        <td class="auto-style22">
                                            <asp:TextBox ID="txtPassword" runat="server" Height="30px" Width="100%" TextMode="Password" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style26" colspan="2">
                                            <asp:Label ID="Label3" runat="server" CssClass="auto-style27" Font-Bold="True" Font-Size="11pt" Text="Location [Right Click On Map] *"></asp:Label>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td colspan="2" dir="auto">
                                            <asp:Panel ID="panelMap" runat="server" Height="508px" Width="100%">
                                                <div id="gmap"></div>
                                            </asp:Panel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style24">&nbsp;</td>
                                        <td class="auto-style22">&nbsp;</td>
                                    </tr>

                                    <tr>
                                        <td class="auto-style24">&nbsp;</td>
                                        <td class="auto-style22">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style24"></td>
                                        <td class="auto-style22"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style24">&nbsp;</td>
                                        <td class="auto-style22">&nbsp;</td>
                                    </tr>

                                    <tr>
                                        <td class="auto-style26" colspan="2">
                                            <asp:Label ID="lblLat" runat="server" CssClass="auto-style10" Font-Bold="True" Font-Size="11pt" Text="Latitude:"></asp:Label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:Label ID="latVal" runat="server" CssClass="auto-style10" Font-Bold="True" Font-Size="11pt"></asp:Label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblLng" runat="server" CssClass="auto-style10" Font-Bold="True" Font-Size="11pt" Text="Longitude"></asp:Label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:Label ID="lngVal" runat="server" CssClass="auto-style10" Font-Bold="True" Font-Size="11pt"></asp:Label>
                                            <input type="hidden" value="" id="lat" name="lat" />
                                            <input type="hidden" value="" id="lng" name="lng" />
                                        </td>
                                    </tr>


                                    <tr>
                                        <td class="auto-style24">&nbsp;</td>
                                        <td class="auto-style22"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                        <ContentTemplate>
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                            <asp:Button ID="btnConfirmReservation" runat="server" class="login login-submit" Height="30px" Text="Confirm Registration" Width="195px" OnClick="btnConfirmReservation_Click" />
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:Button ID="btnCancel" runat="server" class="login login-submit" Height="30px" Text="Cancel" Width="135px" OnClick="btnCancel_Click" />

                                                            <br />
                                                            <br />
                                                            <br />
                                                            <asp:Label ID="lblMsg" runat="server" CssClass="auto-style12" Font-Bold="True" Font-Size="12pt"></asp:Label>
                                                        </ContentTemplate>
                                                    </asp:UpdatePanel>
                                        </td>
                                    </tr>
                                </table>

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
            var markers = [];
            function initMap() {
                var riyadh = new google.maps.LatLng(24.774265, 46.738586);
                var myOptions = {
                    zoom: 8,
                    center: riyadh
                }
                var map = new google.maps.Map(document.getElementById("gmap"), myOptions);

                //var contentWindowDiv = document.createElement("div");
                //contentWindowDiv.innerHTML = "My info window content";
                //var infowindow = new google.maps.InfoWindow({
                //    content: contentWindowDiv
                //});

                var panel = document.getElementById("panelMap");
                google.maps.event.addDomListener(panel, "contextmenu", function (e) {
                    e.preventDefault();
                    e.stopPropogation();
                });
                var image = "images/karma-royal-blue/marker.png";
                google.maps.event.addListener(map, "rightclick", function (event) {
                    // delete old markers
                    DeleteMarkers();
                    var lat = event.latLng.lat();
                    var lng = event.latLng.lng();
                    // populate yor box/field with lat, lng
                    //alert("Lat=" + lat + "; Lng=" + lng);
                    document.getElementById("latVal").innerText = lat;
                    document.getElementById("lngVal").innerText = lng;
                    document.getElementById("lat").value = lat;
                    document.getElementById("lng").value = lng;
                    var marker = new google.maps.Marker({
                        position: { lat: lat, lng: lng },
                        map: map,
                        icon: image,
                        animation: google.maps.Animation.DROP
                    });
                    markers.push(marker);
                });
                function DeleteMarkers() {
                    //Loop through all the markers and remove
                    for (var i = 0; i < markers.length; i++) {
                        markers[i].setMap(null);
                    }
                    markers = [];
                };
            }
        </script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBLoSW1tSh5q83m0SyCjmpJMWyni_fmLrk&callback=initMap" async defer></script>

    </form>
</body>
</html>
