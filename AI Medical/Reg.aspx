<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reg.aspx.cs" Inherits="AI_Medical.Reg" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
    <link rel="stylesheet" href="Styles/style.css" />
</head>
<body>
       <form id="form1" runat="server">
    <div>
    <table align="center" class="login">
           <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="UserName"></asp:Label>
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
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
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
        <td class="style1">
                <asp:Label ID="Label3" runat="server" Text="Confirm Password"></asp:Label>
            </td>
            <td class="style1">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" placeholder="Confirm Password"></asp:TextBox>
            </td>
            <td class="style1">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="Please Cofirm Your Password" ForeColor="Red" 
                    ControlToValidate="TextBox3">
                    </asp:RequiredFieldValidator><asp:CompareValidator ID="CompareValidator1"
                        runat="server" ErrorMessage="Please Enter Correct Password" ForeColor="Red" 
                    ControlToValidate="TextBox3" ControlToCompare="TextBox2"></asp:CompareValidator>
            </td>
        </tr>
          <tr>
            <td class="style1">
                <asp:Label ID="Label4" runat="server" Text="Enter Full Name"></asp:Label>
            </td>
            <td class="style1">
                <asp:TextBox ID="TextBox4" runat="server" placeholder="FullName"></asp:TextBox>
            </td>
            <td class="style1">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ErrorMessage="Please Enter Full Name" ForeColor="Red" 
                    ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label7" runat="server" Text="Gender"></asp:Label>
            </td>
            <td class="style1">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style1">
                &nbsp;</td>
        </tr>
             <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Address"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" Width="130px"  placeholder="Address"></asp:TextBox>
            </td>
            <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ErrorMessage="Please Enter your Address" ForeColor="Red" 
                    ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Email ID"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" placeholder="Email ID"></asp:TextBox>
            </td>
            <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please Enter your Email ID" ForeColor="Red" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="Please Enter Valid Email" ControlToValidate="TextBox6" 
                    ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
        <td>
       
            <asp:Button ID="Button1" runat="server" Text="Register"  BackColor="#008dde"
                onclick="Button1_Click" />
        </td>
        </tr>
    </table>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:MedicalConnectionString %>" 
        SelectCommand="SELECT * FROM [Register]"></asp:SqlDataSource>
       </div>
       <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
