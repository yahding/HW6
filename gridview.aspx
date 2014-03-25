<%@ Page Language="VB" AutoEventWireup="false" CodeFile="gridview.aspx.vb" Inherits="gridview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Yahong Ding</title>
            <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
</head>
<body>
    <form runat="server">
    <div id="wrap" style="text-align:center">
    <div id="header">
        <h1 class="title"> Wicked Easy Recipies </h1>
    </div>
    
    <div id="nav">
        <p>Using 5 Ingedients or Less! </p>
        <br />
            <a href="gridview.aspx">Home</a>
            <a href="DetailsView.aspx"> New Recipy</a>
            <a href="AboutUs.aspx"> About Us</a>
            <a href="Contact.aspx"> Contact </a>
    </div>
    <div>
    
        <asp:SqlDataSource ID="RecipyDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:cs_RecipyWeb %>" DeleteCommand="DELETE FROM [Table] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Table] ([recipyName], [subBy], [ing1], [ing2], [ing3], [ing4], [ing5], [prep], [note]) VALUES (@recipyName, @subBy, @ing1, @ing2, @ing3, @ing4, @ing5, @prep, @note)" SelectCommand="SELECT * FROM [Table]" UpdateCommand="UPDATE [Table] SET [recipyName] = @recipyName, [subBy] = @subBy, [ing1] = @ing1, [ing2] = @ing2, [ing3] = @ing3, [ing4] = @ing4, [ing5] = @ing5, [prep] = @prep, [note] = @note WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="recipyName" Type="String" />
                <asp:Parameter Name="subBy" Type="String" />
                <asp:Parameter Name="ing1" Type="String" />
                <asp:Parameter Name="ing2" Type="String" />
                <asp:Parameter Name="ing3" Type="String" />
                <asp:Parameter Name="ing4" Type="String" />
                <asp:Parameter Name="ing5" Type="String" />
                <asp:Parameter Name="prep" Type="String" />
                <asp:Parameter Name="note" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="recipyName" Type="String" />
                <asp:Parameter Name="subBy" Type="String" />
                <asp:Parameter Name="ing1" Type="String" />
                <asp:Parameter Name="ing2" Type="String" />
                <asp:Parameter Name="ing3" Type="String" />
                <asp:Parameter Name="ing4" Type="String" />
                <asp:Parameter Name="ing5" Type="String" />
                <asp:Parameter Name="prep" Type="String" />
                <asp:Parameter Name="note" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
        <br />
        <center>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="RecipyDataSource" Width="946px" AllowSorting="True" AllowPaging="True">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="recipyName" HeaderText="Recipy Name" SortExpression="recipyName" />
                <asp:BoundField DataField="subBy" HeaderText="Submitted By" SortExpression="subBy" />
                <asp:HyperLinkField HeaderText="Submitted By" NavigateUrl="~/DetailsView.aspx" SortExpression="ID" Text="Select" />
            </Columns>
        </asp:GridView>
      </center>
    </div>
    </div>
    </form>
</body>
</html>
