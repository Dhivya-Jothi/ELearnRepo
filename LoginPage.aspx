<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="ELearningPortal.LoginPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<table>
		<tr>
			<td>User Name</td>
			<td>
				<asp:TextBox runat="server" ID="txtName" placeholder="Enter the  name" /></td>
		</tr>
		<tr>
			<td>Password</td>
			<td>
				<asp:TextBox runat="server" type="password" ID="txtPassword" placeholder="Enter the password" /></td>
		</tr>
	</table>
	<asp:Button runat="server" type="submit" value="Login" Text="Login" OnClick="LoginPage_OnClick"></asp:Button>
	<asp:Button runat="server" type="submit" value="SignUp" Text="SignUp" OnClick="SignUp_OnClick"></asp:Button>

</asp:Content>
