<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="nevadaacademy1.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hashiram Institution</title>
    <style>
    body
    {
    background-color:White;
    background-image:url('images/img20.jpg');
    background-repeat:no-repeat;
    background-attachment:fixed;
   
   
    font-family:Arial;
    font-weight:bold;
    }
    div#div1
    {
        background-color:midnightblue
    }
    td
    {
        padding-top:20px
    }
        header {
            padding: 8px;
            width: 80%;
            background-color: #4b6c9e;
            color: White;
        }
        footer {
            position:fixed;
            width: 20%;
            height: 1em;
            padding: 8px;
            margin-top: -2em;
            background-color: LightGray;
            text-align: Left;
        }
     </style>
    <style>
.myButton {
	box-shadow:inset 0px 1px 0px 0px #97c4fe;
	background:#0066A2;
	background-color:#00fff;
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
    <script type="text/javascript">
        function ShowAlert()
        {
            alert("Hello World!!!");
            return false;
        }
</script>
</head>
<body>
    <h1><center>Welcome to HARSHIRAMA INSTITUTIONS Parent Portal</center><form id="form1" runat="server">
        <asp:Image ID="Image2" runat="server" />
        </h1>
    <h4>
        <center>
            <asp:Image ID="Image1" runat="server" />
        </center></h4>
        <center>
            <div>

                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Username
                    <asp:TextBox ID="username" runat="server"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username" ErrorMessage="Username is required" Font-Bold="True" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Password
                    <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="password" ErrorMessage="Password is required" Font-Bold="True" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                <br />
                <br />
                <br />
                        <asp:Button ID="Button1" runat="server" Text="Parent Login" Width="200px" Font-Bold="True" OnClick="Button1_Click" CssClass="myButton" />
                <asp:Button ID="Button2" runat="server" Text="Teacher Login" Width="200px" Font-Bold="True" OnClick="Button2_Click" CssClass="myButton" />
                       
                <br />
                <br />
                <asp:Label ID="errorlabel" runat="server" Font-Bold="True" ForeColor="#CC3300" Text="Label"></asp:Label>
              
              
                
        </div>
            
            </center>
        
    </form>
</body>
</html>
