<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Rhino_Games_V1.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
        
    <style type="text/css">
        .auto-style3 {
            margin-top: 56;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class ="auto-style3">

	<%-- Firstname --%>
    <asp:Label ID="lb_Firstname" runat="server" Text="Firstname"></asp:Label>
    <asp:TextBox ID="tb_Firstname" runat="server"></asp:TextBox>
<%--    <asp:RequiredFieldValidator ID="RV_Firstname" runat="server" ErrorMessage="***First Name Requierd***" ControlToValidate="tb_Firstname" SetFocusOnError ="true"></asp:RequiredFieldValidator>--%>
	<%-- Surname --%>
    <asp:Label ID="lb_Surname" runat="server" Text="Surname"></asp:Label>
    <asp:TextBox ID="tb_Surname" runat="server" ></asp:TextBox>
<%--    <asp:RequiredFieldValidator ID="RV_Surname" runat="server" ErrorMessage="***Surnmae Requierd***" ControlToValidate="tb_Surname" SetFocusOnError ="true"></asp:RequiredFieldValidator>--%>
    <%-- Username --%>
    <asp:Label ID="lb_Username" runat="server" Text="Username"></asp:Label>
    <asp:TextBox ID="tb_Username" runat="server" ></asp:TextBox>
<%--    <asp:RequiredFieldValidator ID="RV_Username" runat="server" ErrorMessage="***Username Requierd***" ControlToValidate="tb_Username" SetFocusOnError ="true"></asp:RequiredFieldValidator>--%>
      <%-- Email --%>
    <asp:Label ID="lb_Email" runat="server" Text="Email"></asp:Label>
    <asp:TextBox ID="tb_Email" runat="server" ></asp:TextBox>
<%--    <asp:RequiredFieldValidator ID="RV_Email" runat="server" ErrorMessage="***Email Requierd***" ControlToValidate="tb_Email" SetFocusOnError ="true" ValidationExpresstion="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ></asp:RequiredFieldValidator>--%>
      <%-- Password --%>
    <asp:Label ID="lb_Password" runat="server" Text="Password"></asp:Label>
    <asp:TextBox ID="tb_Password" runat="server" ></asp:TextBox>
<%--    <asp:RequiredFieldValidator ID="RV_Password" runat="server" ErrorMessage="***Password Requierd***" ControlToValidate="tb_Password" SetFocusOnError ="true" ValidaitonExpression=" ^.*(?=.{8,})(?=.*[\d])(?=.*[\W]).*$"></asp:RequiredFieldValidator>--%>
    <%-- Confirm Password --%>
    <asp:Label ID="lb_ConfirmPassword" runat="server" Text="Confirm Password"></asp:Label>
    <asp:TextBox ID="tb_ConfirmPassword" runat="server" ></asp:TextBox>
<%--    <asp:CompareValidator ID="CV_Confrim_Password" runat="server" ErrorMessage="***Passswords dont match" ControlToCompare='tb_Password' ControlToValidate="tb_ConfirmPassword"></asp:CompareValidator>--%>

        <asp:Button ID="Clear_button" CssClass="primary" BackColor="Red" runat="server" Text="Clear" OnClick="Btn_Clear_Click" />
        <asp:Button ID="Submit_Button" CssClass="primary" BackColor="Green" runat="server" Text="Submit"  OnClick="Btn_Submit_Click"/>
</div>
</asp:Content>