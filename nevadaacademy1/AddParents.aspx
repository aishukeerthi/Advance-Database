<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddParents.aspx.cs" Inherits="nevadaacademy1.AddParents" %>

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
            color:white
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
<body style="height: 900px; width: 900px" >
    <form id="form1" runat="server">

    <rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 
    <div class="topnav" id="myTopnav">
       
        <a href="AddResults.aspx">Add Results</a>
        <a href="AddStudents.aspx">Add Students</a>
        <a href="Logout.aspx">Logout</a>
        </div>
   
     <div id="div1"><h1><center>Add Parent</center></h1></div>
    
        <div>  
            <table class="auto-style1">  
                 <tr>  
                    
                    <td> Parent UserID</td>  
                    <td>  
                        <asp:TextBox ID="UserID" runat="server" ></asp:TextBox></td>
                     <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserID" ErrorMessage="UserID is required" Font-Bold="True" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                    </td>    </tr>
                <tr>  
                    
                    <td> Parent First Name</td>  
                    <td>  
                        <asp:TextBox ID="PFN" runat="server" ></asp:TextBox>  </td><td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PFN" ErrorMessage="FirstName is required" Font-Bold="True" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                    </td>    </tr>
                <tr>  
                    <td> Parent Middle Name</td>  
                    <td>  
                        <asp:TextBox ID="PMN" runat="server" ></asp:TextBox> </td><td> 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="PMN" ErrorMessage="Middle is required, mark X if not available" Font-Bold="True" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                    </td>    </tr>
                <tr>  

                    <td> Parent Last Name</td>  
                    <td>  
                        <asp:TextBox ID="PLN" runat="server" ></asp:TextBox>  </td><td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="PLN" ErrorMessage="Last Name is required" Font-Bold="True" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                    </td>    </tr>

                <tr>  
                    <td> Parent Email</td>  
                    <td>  
                        <asp:TextBox ID="Pemail" runat="server" ></asp:TextBox> </td><td> 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Pemail" ErrorMessage="email is required" Font-Bold="True" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                    </td>    </tr>
                 <tr>  
                    <td> Parent DOB</td>  
                    <td>  
                        <asp:TextBox ID="DOB" runat="server" ></asp:TextBox> </td><td>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="DOB" ErrorMessage="Date of Birth is required" Font-Bold="True" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                    </td>    </tr>
                <tr>  
                    <td>Parent Password</td>  
                    <td>  
                        <asp:TextBox ID="password" runat="server" ></asp:TextBox>  </td><td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="password" ErrorMessage="Password is required" Font-Bold="True" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                    </td>    </tr>
                   </table>

           <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Add Parent" Width="128px" CssClass="myButton" />
            
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            </div></form></body>

    </html>
