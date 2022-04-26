<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adminview.aspx.cs" Inherits="nevadaacademy1.Adminview" %>

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
            text-align: center;
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
            border: 0.5px  Solid Grey;
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
     <form id="form2" runat="server">
     <div id="div1"><h1>Teacher Page</h1></div>

    <br />
          <h2>Teacher Details</h2>
          <p>
            First Name &nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server" ReadOnly="true"></asp:TextBox>
            
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp; <asp:Button ID="Button4" runat="server" Font-Bold="True" Text="Add Parent" OnClick="Button4_Click" CssClass="myButton" />

        </p>
         <p>
            Contact  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" ReadOnly="true"></asp:TextBox>
            
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" Font-Bold="True" Text="Add Results" OnClick="Button2_Click" CssClass="myButton" />
            
        </p>
         <p>
            User ID  &nbsp;&nbsp; &nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" ReadOnly="true"></asp:TextBox>
            
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    <asp:Button ID="Button3" runat="server" Font-Bold="True" Text="Add Student" OnClick="Button3_Click" CssClass="myButton" />
            
        </p>

         <asp:Literal ID="Literal2" runat="server"></asp:Literal>


         <asp:Literal ID="Literal3" runat="server"></asp:Literal>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <br />
    
         <br />
         <br />

         <br />
    
         <br />
             <asp:Button ID="Button1" runat="server" Font-Bold="True" Text="Logout" OnClick="Button1_Click" CssClass="myButton" />
    
         <br />
    
         <br />
         
         <br />
         <br />
    <asp:Literal ID="Literal4" runat="server"></asp:Literal>
         <p>
             &nbsp;</p>
         <p>
<center>

    </center>
         </p>
     </form>
    </body>
</html>
