<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="deleteprofile.aspx.cs" Inherits="nevadaacademy1.deleteprofile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
     
     body
    {
    background-color:white;
    font-family:Arial;
    font-weight:bold;
    background-image:url('images/img2.jpg');
    background-repeat:no-repeat;
    background-attachment:fixed;
    }
    div#div1
    {
        background-color:white
    }
        table {
            text-align: center;
        }

        th {
            background-color: #3d94f6;
            color:black
        }

        th, td {
            padding-left: 10px;
            padding-right: 10px;
        }
       .topnav {
  background-color: #edf0f2;
  overflow: hidden;
}
.topnav a {
  background: #deac6a;
	color: #1c1c1b;
	height: 48px;
	padding-left: 18px;
	border-radius: 10px;
}

.topnav a:hover {
  background-color: #FFFFFF;
  color: #3d94f6;
}


.topnav a.active {
  background-color: #04AA6D;
  color: white;
}


.topnav .icon {
  display: none;
}
.myButton {
	box-shadow:inset 0px 1px 0px 0px #97c4fe;
	background:#0066A2;
	background-color:#6adcde;
	border-radius:6px;
	border:1px solid #337fed;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:15px;
	font-weight:bold;
	padding:6px 24px;
	text-decoration:none;
	text-shadow:0px 1px 0px #1570cd;
}
.myButton:hover {
	background:linear-gradient(to bottom, #1e62d0 5%, #3d94f6 100%);
	background-color:#1e62d0;
}
.myButton:active {
	position:relative;
	top:1px;
}

    </style>
</head>
<body>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <div class="topnav" id="myTopnav">
        <a href="ViewResults.aspx">Edit Profile</a>
        <a href="editprofile.aspx">Delete Profile</a>
        <a href="Logout.aspx">Logout</a>
        </div>
    <div id="div1"><h1>Delete Parent Profile</h1></div>

    <form id="form2" runat="server">
        <div>
            <h3>
            You may chose to delete your profile once your kids completed graduation or you chose to move your kids to another school. 
            Once account gets deleted, you cannot access the site again!!</h3>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="confirm" runat="server" OnClick="confirm_Click" Text="Confirm Delete Account by pressing this button" CssClass="myButton" />
                &nbsp;</p>
        </div>
    </form>
</body>
</html>

