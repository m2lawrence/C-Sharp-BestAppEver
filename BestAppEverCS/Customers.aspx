<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Customers.aspx.cs" Inherits="Customers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customers</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

    <!-- Custom CSS -->
    <link href="Login.css" rel="stylesheet">
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    <link href='http://fonts.googleapis.com/css?family=Droid+Sans' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Architects+Daughter' rel='stylesheet' type='text/css'>
</head>
<body>
    <form id="form1" runat="server">
   <div>
    
    <!-- This is code from the previous tutorial with the following changes -->

    <!-- navbar-fixed-top topnav -->
    <nav class="navbar navbar-default navbar-fixed-top topnav">

        <!-- topnav -->
        <div class="container topnav">
             
                 <!-- Logo -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#mainNavBar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a href="#" class="navbar-brand">Customers</a>
            </div>

            <!-- Menu Items -->
            <div class="collapse navbar-collapse" id="mainNavBar">
                <ul class="nav navbar-nav">
                     <li class="active"><li><a href="Orders.aspx">Orders</a></li>
                    <li><a href="Products.aspx">Products</a></li>
                    <li><a href="Customers.aspx">Customers</a></li>
           
                    <!-- DropDown Menu -->
            <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle ="dropdown">Profile <span class="caret"></span></a>
                <ul class="dropdown-menu">
                    
                    <li><a href="Orders.aspx">Orders</a></li>
                    <li><a href="Products.aspx">Products</a></li>
                    <li><a href="Customers.aspx">Customers</a></li>
                </ul>
           </li>
        </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="Login.aspx">Log Out</a></li>
                </ul> 
            </div>
        </div>
    </nav>


<!-- Banner header section -->
    <div class="intro-banner">
        <br /><br />Cust_ID: Unique Key.<br />
        <asp:DropDownList ID="DDLCust_ID" runat="server" ForeColor="Maroon">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
            <asp:ListItem>8</asp:ListItem>
            <asp:ListItem>9</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
&nbsp;
        <br />
        Name<br />
        <asp:TextBox ID="txtName" runat="server" ForeColor="Maroon" MaxLength="50"></asp:TextBox>
&nbsp;<br />
        Address<br />
        <asp:TextBox ID="txtAddress" runat="server" ForeColor="Maroon" MaxLength="50"></asp:TextBox>
        <br />
        Email<br />
        <asp:TextBox ID="txtEmail" runat="server" ForeColor="Maroon" MaxLength="50"></asp:TextBox>
        <br />
        Mobile<br />
        <asp:TextBox ID="txtMobile" runat="server" ForeColor="Maroon" MaxLength="11"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnSelect" runat="server" BackColor="Maroon" ForeColor="Yellow" Text="Select" Width="129px" OnClick="btnSelect_Click" />
        <br />
        <asp:TextBox ID="txtSelectCust_ID" runat="server" ForeColor="Maroon" MaxLength="10" ReadOnly="True"></asp:TextBox>
&nbsp;<asp:TextBox ID="txtSelectName" runat="server" ForeColor="Maroon" MaxLength="50" ReadOnly="True"></asp:TextBox>
&nbsp;<asp:TextBox ID="txtSelectAddress" runat="server" ForeColor="Maroon" MaxLength="50" ReadOnly="True"></asp:TextBox>
&nbsp;<asp:TextBox ID="txtSelectEmail" runat="server" ForeColor="Maroon" MaxLength="50" ReadOnly="True"></asp:TextBox>
&nbsp;<asp:TextBox ID="txtSelectMobile" runat="server" ForeColor="Maroon" MaxLength="11" ReadOnly="True"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnInsert" runat="server" BackColor="Maroon" ForeColor="Yellow" Text="Insert" Width="129px" OnClick="btnInsert_Click" />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSCust1" AllowSorting="True" DataKeyNames="Cust_ID" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Width="1022px">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="Cust_ID" HeaderText="Cust_ID" ReadOnly="True" SortExpression="Cust_ID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <br />
        <asp:Button ID="btnRefreshDatabaseCustomer" runat="server" Text="Display Last Entry In Database" BackColor="Maroon" ForeColor="Yellow" Height="41px" Width="221px" OnClick="btnRefreshDatabaseCustomer_Click" />
        <br />
        Update the database:<br />
        <br />Cust_ID: Unique Key.<br />
        <asp:DropDownList ID="DDLUpdateCust_ID" runat="server" ForeColor="Maroon" DataSourceID="SqlDataSCust1" DataTextField="Cust_ID" DataValueField="Cust_ID">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
            <asp:ListItem>8</asp:ListItem>
            <asp:ListItem>9</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSCust1" runat="server" ConnectionString="<%$ ConnectionStrings:mikeConCS %>" SelectCommand="SELECT * FROM [Customer] ORDER BY [Cust_ID]"></asp:SqlDataSource>
&nbsp;
        <br />
        Name<br />
        <asp:TextBox ID="txtUpdateName" runat="server" ForeColor="Maroon" MaxLength="50"></asp:TextBox>
&nbsp;<br />
        Address<br />
        <asp:TextBox ID="txtUpdateAddress" runat="server" ForeColor="Maroon" MaxLength="50"></asp:TextBox>
        <br />
        Email<br />
        <asp:TextBox ID="txtUpdateEmail" runat="server" ForeColor="Maroon" MaxLength="50"></asp:TextBox>
        <br />
        Mobile<br />
        <asp:TextBox ID="txtUpdateMobile" runat="server" ForeColor="Maroon" MaxLength="11"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnUpdateCustomer" runat="server" BackColor="Maroon" ForeColor="Yellow" Text="Update" Width="129px" OnClick="btnUpdateCustomer_Click" />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSCust1" AllowSorting="True" DataKeyNames="Cust_ID" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Width="1022px">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="Cust_ID" HeaderText="Cust_ID" ReadOnly="True" SortExpression="Cust_ID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <br />Cust_ID number to delete:<br />
        <asp:DropDownList ID="DDLDeleteCust_ID" runat="server" ForeColor="Maroon" DataSourceID="SqlDataSCust1" DataTextField="Cust_ID" DataValueField="Cust_ID">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
            <asp:ListItem>8</asp:ListItem>
            <asp:ListItem>9</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Button ID="btnDeleteCustomer" runat="server" BackColor="Maroon" ForeColor="Yellow" Height="35px" Text="Delete" Width="90px" OnClick="btnDeleteCustomer_Click" />
        <br />
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSCust1" AllowSorting="True" DataKeyNames="Cust_ID" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Width="1022px">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="Cust_ID" HeaderText="Cust_ID" ReadOnly="True" SortExpression="Cust_ID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>       
      <br />
    </div>
   </div>
  </form>
 </body>
</html>