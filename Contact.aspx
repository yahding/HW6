<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Contact.aspx.vb" Inherits="Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Web Contact Form </title>
            <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
</head>
<body> 
    <form id=form1 runat="server">
    <div id="wrap" style="text-align:center">
    <div id="header">
        <h1 class="title"> <a href="Default.aspx"> Wicked Easy Recipes </a></h1>

          <h3>Using 5 Ingedients or Less!</h3>
    </div>
    <div id="nav">

            <a href="gridview.aspx">Home</a>&nbsp; |&nbsp; 
            <a href="NewRecipy.aspx">New Recipe</a>&nbsp; |&nbsp; 
            <a href="AboutUs.aspx">About Us</a>&nbsp; |&nbsp; 
            <a href="Contact.aspx">Contact </a>
    </div>
    <div>
    



    </div>
       <div id="footer">
         <p> &copy; <asp:Label ID="lblCopyC" runat="server" Text=""></asp:Label>&nbsp;Yahong Ding &nbsp;6K:183&nbsp;Software&nbsp;Design&nbsp;&amp;&nbsp;Development</p>

       </div>
    </div>
    </form>
</body>
</html>
