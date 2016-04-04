<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Wikipedia.aspx.cs" Inherits="Wikipedia.Wikipedia" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
   
        .style1
        {
            position: absolute;
            top: 59px;
            left: 468px;
            z-index: 1;
        }
   
    </style>
</head>
<body >
<img src="C:\Users\Vengadesh\Desktop\images.jpg" style="width: 843px" /><form id="form1" runat="server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    <asp:Button ID="Button2" runat="server" CssClass="style1" 
        onclick="Button2_Click" Text="Import" />
&nbsp;<div>
    
    </div>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        
        style="z-index: 1; left: 382px; top: 58px; position: absolute; height: 26px;" 
        Text="Search" BackColor="Plum" />
    <asp:TextBox ID="TextBox1" runat="server" 
        
        style="z-index: 1; left: 208px; top: 60px; position: absolute; right: 647px;"></asp:TextBox>
    <asp:TextBox ID="TextBox2" runat="server" 
        style="z-index: 1; left: 68px; top: 90px; position: absolute; height: 295px; width: 577px" 
        TextMode="MultiLine"></asp:TextBox>
    </form>
</body>
</html>
