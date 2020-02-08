﻿<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="GridViewELearn.aspx.cs" Inherits="ELearningPortal.GridViewELearn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div>
		<asp:GridView ID="Grid" runat="server" AutoGenerateColumns="false" AutoGenerateEditButton="True" AutoGenerateDeleteButton="True"   
                   onrowdeleting="Grid_DeleteRow" OnRowCancelingEdit="Grid_CancelRowEdit" onrowediting="Grid_EditRow" onrowupdating="Grid_UpdateRow"  DataKeyNames="courseId" >
			<Columns>  	
                        <asp:TemplateField HeaderText="course">  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtCourse" runat="server" Text='<%# Bind("course") %>'></asp:TextBox>  
                            </EditItemTemplate>  
                            <ItemTemplate>  
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("course") %>'></asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>  

                        <asp:TemplateField HeaderText="courseContent">  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtcourseContent" runat="server" Text='<%# Bind("courseContent") %>'></asp:TextBox>  
                            </EditItemTemplate>  
                            <ItemTemplate>  
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("courseContent") %>'></asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>  

					 <asp:TemplateField HeaderText="Lectures">  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtLectures" runat="server" Text='<%# Bind("lectures") %>'></asp:TextBox>  
                            </EditItemTemplate>  
                            <ItemTemplate>  
                                <asp:Label ID="Label3" runat="server" Text='<%#Bind("lectures")%>'></asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>  

					 <asp:TemplateField HeaderText="sessionTime">  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtsessionTime" runat="server" Text='<%# Bind("sessionTime") %>'></asp:TextBox>  
                            </EditItemTemplate>  
                            <ItemTemplate>  
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("sessionTime") %>'></asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>  
                    </Columns>
		</asp:GridView>
	</div>
</asp:Content>