<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddResults.aspx.cs" Inherits="nevadaacademy1.AddResults" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title><center></center></title>
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

<body>
    <form id="form1" runat="server">
        
        <rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 
    <div class="topnav" id="myTopnav">
        
        <a href="AddParents.aspx">Add Parents</a>
        <a href="AddStudents.aspx">Add Students</a>
        <a href="Logout.aspx">Logout</a></div>
        <div>
            <div id="div1"><h1><center>Add Results</center></h1></div>
            <table class="auto-style1">  
                  
                <tr>  
                    <td>Student_id</td>  
                     <td> 
                         <asp:DropDownList ID="studentslists" runat="server" Width="180px">
                         </asp:DropDownList>
                    </td>  
                </tr>  
                <tr>  
                    <td>Exam ID </td>  
                    <td>  
                        <asp:TextBox ID="Exam_id" runat="server"></asp:TextBox>  
                    </td>  
                </tr>  

                               
                <tr><td>Grade</td><td>
                        <asp:TextBox ID="Grade" runat="server"></asp:TextBox> </td></tr>
                <tr>
                    <td>  
                        Subject
                    </td> 
                      
                        <td>
                   
                        
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="180px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>   </tr>
                    <tr><td>Comments</td>  
                    <td>  
                        <asp:TextBox ID="Comments" runat="server"></asp:TextBox>  
                    </td>    </tr>
                   <tr> <td>Semester</td>  
                    <td>  
                        <asp:TextBox ID="Semester" runat="server"></asp:TextBox>  
                    </td>   </tr>
                   <tr> <td>Year</td> <td> <asp:TextBox ID="Year" runat="server"></asp:TextBox> </td></tr>
                                     
            </table>  
        </div>
            <br />
            <br />
        <p>
            <asp:Button ID="Button1" runat="server" Font-Bold="True" Text="Add Results" CssClass="myButton" OnClick="Button1_Click" />
           
        </p>
        <asp:Label ID="Label1" runat="server" Text="Data added Succesfully"></asp:Label>
    </form>
</body>
</html>
