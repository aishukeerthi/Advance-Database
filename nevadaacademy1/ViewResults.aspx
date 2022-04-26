

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewResults.aspx.cs" Inherits="nevadaacademy1.ViewResults" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title><center>Student Report</center></title>
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
        background-color:white;
        background-image:url('images/img2.jpg');
        background-repeat:no-repeat;
        background-attachment:fixed;
    }
        table {
            text-align: center;
        }

        th {
            background-color: #3d94f6;
            color:white
        }

        th, td {
            padding-left: 10px;
            padding-right: 10px;
            border: 1px solid grey;
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
  background-color: #F2F2F2;
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
    <rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 
    <div class="topnav" id="myTopnav">
        <a href="editprofile.aspx">Edit Profile</a>
        <a href="deleteprofile.aspx">Delete Profile</a>
        <a href="Logout.aspx">Logout</a>
        </div>
     <form id="form1" runat="server">
     <div id="div1"><h1><center>Student Grade</center></h1></div>

    <br />
       <span style="color:black">  <asp:Literal ID="Literal2" runat="server" ></asp:Literal> </span>
         <br />
         <br />
         <br />
    <span style="color:darkblue"><asp:Literal ID="Literal1" runat="server"></asp:Literal> </span>
         <p>
             <asp:Literal ID="Literal3" runat="server"></asp:Literal>
         </p>
         <p>
<center>
             <asp:Button ID="Button1" runat="server" Font-Bold="True" Text="Back" OnClick="Button1_Click" CssClass="myButton" />
    
    </center>
         </p>
     </form>
    </body>
</html>
