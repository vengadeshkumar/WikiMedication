<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AI_Medical.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link rel="stylesheet" href="Styles/style.css">
</head>
<body>
<form method="post" runat="server" class="login">
  <h5 align="center">SignIn </h5>
    <table align="center" class="login">
           <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="UserName" ></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Username"></asp:TextBox>
            </td>
            <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Please Enter UserName" ForeColor="Red" 
                    ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Password" placeholder="Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
            </td>
            <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Please Enter Password" ForeColor="Red" 
                    ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
        <td>
         <asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click" />
        </td>
        </tr>
   </table>
  </form>
  
</body>
</html>
