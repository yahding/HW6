<%@ Page Language="VB" AutoEventWireup="false" CodeFile="DetailsView.aspx.vb" Inherits="DetailsView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_RecipyWeb %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" Height="50px" Width="346px">
            <Fields>
                <asp:BoundField DataField="recipyName" HeaderText="Recipy Name" SortExpression="recipyName" />
                <asp:BoundField DataField="subBy" HeaderText="Submitted By" SortExpression="subBy" />
                <asp:BoundField DataField="ing1" HeaderText="Ingredient #1" SortExpression="ing1" />
                <asp:BoundField DataField="ing2" HeaderText="Ingredient #2" SortExpression="ing2" />
                <asp:BoundField DataField="ing3" HeaderText="Ingredient #3" SortExpression="ing3" />
                <asp:BoundField DataField="ing4" HeaderText="Ingredient #4" SortExpression="ing4" />
                <asp:BoundField DataField="ing5" HeaderText="Ingredient #5" SortExpression="ing5" />
                <asp:BoundField DataField="prep" HeaderText="Preparation" SortExpression="prep" />
                <asp:BoundField DataField="note" HeaderText="Note" SortExpression="note" />
            </Fields>
        </asp:DetailsView>
        <br />
    
    </div>
    </form>
</body>
</html>
