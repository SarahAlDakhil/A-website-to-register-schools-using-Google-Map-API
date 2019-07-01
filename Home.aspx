<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" EnableEventValidation="false" ValidateRequest="false" %>

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

        .auto-style5 {
            font-size: small;
            color: #000000;
        }

        .auto-style7 {
            font-weight: bold;
            font-size: medium;
            color: #000000;
        }

        .auto-style10 {
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
                            <h1 class="auto-style10">
                                &nbsp;&nbsp;&nbsp; School Support Services
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
                                <span class="auto-style10">&nbsp;&nbsp;&nbsp; Leearning International School</span><br /><br />
                                <span class="auto-style10">&nbsp;&nbsp;&nbsp; School Reservation Service</span>
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
                            <div class="report" style="border: 2px solid #808080">

                                <h1 class="centering">
                                    <center class="auto-style3">School Reservation / Transfer to Schools of our branches </center>
                                    &nbsp;</h1>
                                <br />
                                <%--<asp:UpdatePanel ID="UpdatePanel2" runat="server">--%><%--<ContentTemplate>--%>
                                <asp:ScriptManager ID="ScriptManager2" runat="server">
                                </asp:ScriptManager>
                                <asp:RadioButtonList ID="radioChoice" runat="server" AutoPostBack="True" CssClass="auto-style7" OnSelectedIndexChanged="radioChoice_SelectedIndexChanged">
                                    <asp:ListItem>Transfer to a branch of our schools</asp:ListItem>
                                    <asp:ListItem>Reserve a new school outside our school</asp:ListItem>
                                </asp:RadioButtonList>
                                <br />
                                <asp:Panel ID="panelOurBraches" runat="server">
                                    <h2 class="auto-style5">Please, Select Branch :</h2>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:DropDownList ID="dropBranches" runat="server" Font-Bold="True" Font-Size="Small" Height="30px">
                                                <asp:ListItem>Learning International Schools - North Riyadh Branch</asp:ListItem>
                                                <asp:ListItem>Learning International Schools - South Riyadh Branch</asp:ListItem>
                                                <asp:ListItem>Learning International Schools - East Riyadh Branch</asp:ListItem>
                                                <asp:ListItem>Learning International Schools - West Riyadh Branch</asp:ListItem>
                                            </asp:DropDownList>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btnTransfer" runat="server" class="login login-submit" Height="30px" OnClick="btnSearchDistance0_Click" Text="Transfer" Width="153px" />
                                    <br />
                                </asp:Panel>
                                <br />
                                <asp:Panel ID="panelOutsideBranch" runat="server">
                                    <h2 class="auto-style5">Please, Select Search Criteria</h2>
                                    <%--<asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                <ContentTemplate>--%>
                                    <div class="radios" dir="ltr" style="text-align: left">
                                        <asp:RadioButtonList ID="radios" runat="server" AutoPostBack="True" CssClass="auto-style8" OnSelectedIndexChanged="radios_SelectedIndexChanged" RepeatDirection="Horizontal" Width="50%">
                                            <asp:ListItem Selected="True">Location</asp:ListItem>
                                            <asp:ListItem>Educational Level</asp:ListItem>
                                            <asp:ListItem>School Name</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </div>
                                    <br />

                                    <asp:Panel ID="Panel1" runat="server">
                                        <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                            <ContentTemplate>
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:TextBox ID="txtDistance" runat="server" Height="30px" placeholder="Distance In KM*" Width="25%"></asp:TextBox>
                                                &nbsp;&nbsp;
                                                        <asp:Button ID="btnSearchDistance0" runat="server" class="login login-submit" Height="30px" Text="Search" Width="153px" OnClick="btnSearchDistance_Click" />
                                                &nbsp;
                                                <asp:Button ID="btnClearResults" runat="server" class="login login-submit" Height="30px" Text="Clear Results" Width="153px" OnClick="btnClearResults_Click"/>
                                                <br />
                                                <br />
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:Label ID="lblMsg2" runat="server" CssClass="auto-style12" Font-Bold="True" Font-Size="12pt" Style="color: #800000"></asp:Label>
                                                <br />
                                                <asp:Label ID="Label3" runat="server" CssClass="auto-style10" Font-Bold="True" Font-Size="11pt" Style="color: #FF0000" Text="Location [Right Click On Map] *"></asp:Label>
                                                <input id="lat" name="lat" type="hidden" value="" />
                                                <input id="lng" name="lng" type="hidden" value="" />
                                                <br />
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                        <asp:Panel ID="panelMap" runat="server">
                                            <div id="gmap" class="map centering">
                                            </div>
                                        </asp:Panel>
                                        <br />
                                    </asp:Panel>
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                        <ContentTemplate>
                                            <asp:Panel ID="Panel2" runat="server">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <asp:DropDownList ID="dropSchoolLevels" runat="server" Font-Bold="True" Font-Size="Small" Height="30px" Width="25%">
                                                            <asp:ListItem>&lt;-- select --&gt;</asp:ListItem>
                                                            <asp:ListItem>Primary</asp:ListItem>
                                                            <asp:ListItem>Secondary</asp:ListItem>
                                                            <asp:ListItem>High</asp:ListItem>
                                                        </asp:DropDownList>
                                                &nbsp;&nbsp;
                                                        <asp:Button ID="btnSearchLevel" runat="server" class="login login-submit" Height="30px" Text="Search" Width="153px" OnClick="btnSearchLevel_Click" />
                                                <br />
                                                <asp:Panel ID="PanelSearchLevelResults" runat="server" CssClass="centering" Visible="False">
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <center>
                                                        <asp:RadioButtonList ID="radioSchoolLevelResults" runat="server" CssClass="auto-style9" Font-Bold="True" Font-Size="12pt" Height="23px" Width="130px">
                                                        </asp:RadioButtonList>
                                                    </center>
                                                    <br />
                                                    &nbsp;&nbsp;
                                                    <asp:Button ID="btnReserveLevel" runat="server" class="login login-submit" Height="30px" OnClick="btnReserveLevel_Click" Text="Reserve" Width="153px" />
                                                    <br />
                                                </asp:Panel>
                                            </asp:Panel>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                        <ContentTemplate>
                                            <asp:Panel ID="Panel3" runat="server">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <asp:TextBox ID="txtName" runat="server" Height="30px" placeholder="School Name*" Width="25%"></asp:TextBox>
                                                &nbsp;&nbsp;
                                                        <asp:Button ID="btnSearchName" runat="server" class="login login-submit" Height="30px" Text="Search" Width="153px" OnClick="btnSearchName_Click" />
                                            </asp:Panel>
                                            <asp:Panel ID="PanelSearchNameResults" runat="server" Visible="False" CssClass="centering">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <center>
                                        <asp:RadioButtonList ID="radioSchoolNameResults" runat="server" CssClass="auto-style9" Font-Bold="True" Font-Size="12pt" Height="23px" Width="130px">
                                        </asp:RadioButtonList>
                                        </center>
                                                <br />
                                                &nbsp;&nbsp;
                                        <asp:Button ID="btnReserve" runat="server" class="login login-submit" Height="30px" OnClick="btnReserve_Click" Text="Reserve" Width="153px" />
                                                <br />
                                            </asp:Panel>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Label ID="lblMsg" runat="server" CssClass="auto-style12" Font-Bold="True" Font-Size="12pt" Style="color: #800000"></asp:Label>

                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </asp:Panel>
                                <%-- </ContentTemplate>
                                </asp:UpdatePanel>--%>
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
            var markers = [];
            var markers2 = [];
            var map;
            var schools = [];
            function initMap() {
                var riyadh = new google.maps.LatLng(24.774265, 46.738586);
                var myOptions = {
                    zoom: 8,
                    center: riyadh
                }
                map = new google.maps.Map(document.getElementById("gmap"), myOptions);
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
            function DisplayMarkers(name,address,level,email,lat,lng) {
                //alert(name + " " + address + " " + level + " " + email + " " + lat + " " + lng);
                var image = "images/karma-royal-blue/marker2.png";
                //alert(image)
                var marker = new google.maps.Marker({
                    position: { lat: parseFloat(lat), lng: parseFloat(lng)},
                    map: map,
                    icon: image,
                    animation: google.maps.Animation.DROP
                });
                var obj = {
                    name: name,
                    address: address,
                    level: level,
                    email: email,
                    lat: lat,
                    lng: lng
                };
                schools.push(obj);

                var schoolInfo = '<div class="myInfo">' +
                                    '<b>Name: </b>' + name +'<br />'+
                                    '<b>Level: </b>' + level + '<br />' +
                                    '<b>Email: </b>' + email + '<br />' +
                                    '<b>Address: </b>' + address +'<br />'+
                                    '</div>';
                var contentWindowDiv = document.createElement("div");
                contentWindowDiv.innerHTML = schoolInfo;
                var infowindow = new google.maps.InfoWindow({
                    content: contentWindowDiv
                });
                google.maps.event.addListener(marker, 'mouseover', function (event) {
                    infowindow.open(map, marker);
                });
                google.maps.event.addListener(marker, 'mouseout', function (event) {
                    infowindow.close();
                });
                google.maps.event.addListener(marker, 'click', function (event) {
                    localStorage.setItem("school", name);
                    window.location.replace("Reservation.aspx");
                });
                markers2.push(marker);
            }
           
            function DeleteMarkers2() {
                //Loop through all the markers and remove
                for (var i = 0; i < markers2.length; i++) {
                    markers2[i].setMap(null);
                }
                markers2 = [];
                for (var i = 0; i < markers.length; i++) {
                    markers[i].setMap(null);
                }
                markers = [];
            }
        </script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBLoSW1tSh5q83m0SyCjmpJMWyni_fmLrk&callback=initMap">
        </script>
    </form>
</body>
</html>
