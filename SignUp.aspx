<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="ELearningPortal.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <div align="center">
	<h1 style="background-color:pink;">E-Learning Portal</h1>
	<h3><font color="blue">DJ - The Learning APP</font></h3>

</head>
<body>
    <form id="form1" runat="server">
        <table>
            <tr>
                <td>User Name</td>
                <td><asp:TextBox runat="server"  type="Name" id="txtName"  placeholder="Enter the  name"/></td>
				 <td>
                        <asp:RequiredFieldValidator ID="validateFirstName" runat="server" ControlToValidate="txtName" ErrorMessage="First name required" Style="color: crimson"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="validateName" runat="server" ControlToValidate="txtName" ErrorMessage="Enter valid name" ValidationExpression="^[A-Za-z]+$"></asp:RegularExpressionValidator>
                 </td>
            </tr>
           <tr>
                <td>Date Of Birth</td>
                <td><asp:TextBox runat="server" type="date" id="txtBirth" placeholder="Enter the date"/></td>
				  <td>
                    <asp:RequiredFieldValidator ID="validateDOB" runat="server" ControlToValidate="txtBirth" ErrorMessage="DOB required" Style="color: crimson"></asp:RequiredFieldValidator>
                </td> 
		   </tr>
           <tr>
                <td>Mobile Number</td>
                <td><asp:TextBox runat="server" type="number" id="mobileNumber" placeholder="Enter the mobile number"/></td>
				 <td>
                        <asp:RequiredFieldValidator ID="validateMobileNumber" runat="server" ControlToValidate="mobileNumber" ErrorMessage="Mobile number required" Style="color: crimson"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="rgvMobileNumber" runat="server" ControlToValidate="mobileNumber" ErrorMessage="Enter valid mobile number" ValidationExpression="^[6789]\d{9}$"></asp:RegularExpressionValidator>
                    </td>
			   </tr>
           <tr>
                <td>Mail Id</td>
                <td><asp:TextBox runat="server" type="email" id="mail"  placeholder="Enter the mail id"/></td>
				<td>
                    <asp:RequiredFieldValidator ID="validateMailId" runat="server" ControlToValidate="mail" ErrorMessage="Mail id required" Style="color: crimson"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="rgvMailId" runat="server" ControlToValidate="mail" ErrorMessage="Enter valid mail id" ValidationExpression="^[a-z0-9][-a-z0-9._]+@([-a-z0-9]+.)+[a-z]{2,5}$"></asp:RegularExpressionValidator>
                </td>
			   </tr>
            <tr>
                <td>Password</td>
                <td><asp:TextBox runat="server" type="password" id="txtPassword"  placeholder="Enter the password"/></td>
				<td>
                        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password required" style="color: crimson"></asp:RequiredFieldValidator>
                </td>
			</tr>
           <tr>
                <td>Confirm Password</td>
                <td><asp:TextBox runat="server" type="password" id="txtConfirmPassword" placeholder="Enter confirm password"/></td>
				 <td>
                        <asp:RequiredFieldValidator runat="server" ID="rfvConfirmPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="Confirm password required" style="color:crimson"></asp:RequiredFieldValidator>
                        <asp:CompareValidator runat="server" ID="validatePassword" ControlToValidate="txtConfirmPassword" ControlToCompare="txtPassword" ErrorMessage="Password and Confirm password must be same"></asp:CompareValidator>
                 </td> 
		   </tr>
			<tr>
                <td>Medium Of Study</td>
                <td><asp:TextBox runat="server" type="Medium" id="mediumOfStudy" placeholder="Enter the medium"/></td>
				<td>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="mediumOfStudy" ErrorMessage="First name required" Style="color: crimson"></asp:RequiredFieldValidator>
				</td>
			</tr>
		
        </table>
		 <asp:ValidationSummary ID="validationSummary" runat="server" />
			<br ></br >
        <asp:button runat="server" type="submit" value="SignUp"  text="Submit" OnClick="SignUp_Page"></asp:button>
    </div>
	</form>
</body>
</html>
