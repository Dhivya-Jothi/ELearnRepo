<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ELearningPortal.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <div align="center">
	<h1 style="background-color:pink;">E-Learning Portal</h1>
	<h3><font color="blue">DJ - The Learning APP</font></h3>
	<h4><font color="orange">Login Form</font></h4>
</head>
<body>
 <form id="form1" runat="server">
  <table>
	   <tr>
            <td>User Name</td>
             <td><asp:TextBox runat="server" id="txtName"  placeholder="Enter the  name" /></td>
            </tr>
           <tr>
                <td>Password</td>
                <td><asp:TextBox runat="server" type="password" id="txtPassword"  placeholder="Enter the password"/></td>
            </tr>
  </table>
	  <asp:button runat="server" type="submit" value="Login" text="Login" OnClick="LoginPage_OnClick" ></asp:button>
	 <asp:button runat="server" type="submit" value="SignUp" text="SignUp" OnClick="SignUp_OnClick" ></asp:button>
 </form>
</body>
</html>