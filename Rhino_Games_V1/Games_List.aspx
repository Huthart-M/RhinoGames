<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Games_List.aspx.cs" Inherits="Rhino_Games_V1.Games_List" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
    
     <style type="text/css">
         .auto-style3 {
             margin-top: 53px;
         }
     </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="GameID" DataSourceID="AJSqlDataSource" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="GameID" HeaderText="GameID" InsertVisible="False" ReadOnly="True" SortExpression="GameID" />
            <asp:BoundField DataField="GameName" HeaderText="GameName" SortExpression="GameName" />
            <asp:BoundField DataField="GameDescription" HeaderText="GameDescription" SortExpression="GameDescription" />
            <asp:BoundField DataField="GameGenre" HeaderText="GameGenre" SortExpression="GameGenre" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
</asp:GridView>
<asp:SqlDataSource ID="AJSqlDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:MASON-LAPTOP\SQLEXPRESS %>" DeleteCommand="DELETE FROM [Game] WHERE [GameID] = @original_GameID AND [GameName] = @original_GameName AND [GameDescription] = @original_GameDescription AND [GameGenre] = @original_GameGenre" InsertCommand="INSERT INTO [Game] ([GameName], [GameDescription], [GameGenre]) VALUES (@GameName, @GameDescription, @GameGenre)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Game]" UpdateCommand="UPDATE [Game] SET [GameName] = @GameName, [GameDescription] = @GameDescription, [GameGenre] = @GameGenre WHERE [GameID] = @original_GameID AND [GameName] = @original_GameName AND [GameDescription] = @original_GameDescription AND [GameGenre] = @original_GameGenre">
    <DeleteParameters>
        <asp:Parameter Name="original_GameID" Type="Int32" />
        <asp:Parameter Name="original_GameName" Type="String" />
        <asp:Parameter Name="original_GameDescription" Type="String" />
        <asp:Parameter Name="original_GameGenre" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="GameName" Type="String" />
        <asp:Parameter Name="GameDescription" Type="String" />
        <asp:Parameter Name="GameGenre" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="GameName" Type="String" />
        <asp:Parameter Name="GameDescription" Type="String" />
        <asp:Parameter Name="GameGenre" Type="String" />
        <asp:Parameter Name="original_GameID" Type="Int32" />
        <asp:Parameter Name="original_GameName" Type="String" />
        <asp:Parameter Name="original_GameDescription" Type="String" />
        <asp:Parameter Name="original_GameGenre" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
