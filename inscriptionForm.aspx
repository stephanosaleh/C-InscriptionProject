<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inscriptionForm.aspx.cs" Inherits="Project332StephanoSaleh.inscriptionForm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: xx-large;
        }
        .style2
        {
            width: 100%;
        }
        .style3
        {
            font-size: large;
            font-weight: bold;
        }
        .style4
        {
            width: 336px;
        }
        .style5
        {
            font-weight: bold;
        }
        .style6
        {
            width: 336px;
            font-weight: bold;
        }
        .style7
        {
            text-align: center;
            font-size: large;
        }
        .style8
        {
            width: 360px;
        }
        .style9
        {
            width: 360px;
            font-weight: bold;
        }
        .style10
        {
            text-align: center;
            font-size: large;
            font-weight: bold;
        }
        .style11
        {
            width: 468px;
        }
        .style12
        {
            width: 220px;
        }
        .style13
        {
            width: 162px;
            font-weight: bold;
        }
        .style14
        {
            width: 220px;
            font-weight: bold;
        }
        .style15
        {
            width: 468px;
            font-weight: bold;
        }
        .style16
        {
            width: 336px;
            font-weight: bold;
            height: 26px;
        }
        .style17
        {
            width: 360px;
            height: 26px;
        }
        .style18
        {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1" style="text-align: center; height: 53px">
    
        <strong>Inscription Form</strong></div>
    <table class="style2">
        <tr>
            <td class="style3" colspan="3" style="text-align: center">
                <strong>Connection Information</strong></td>
        </tr>
        <tr>
            <td class="style6">
                E-Mail :
            </td>
            <td class="style4">
                <asp:TextBox ID="tbEmail" runat="server" BackColor="#C5C9FE" CssClass="style5" 
                    ToolTip="Enter E-Mail"></asp:TextBox>
            </td>
            <td>
                <b>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="tbEmail" Display="Dynamic" 
                    ErrorMessage="should be of the form email@hote.domain" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </b>
            </td>
        </tr>
        <tr>
            <td class="style6">
                Password :</td>
            <td class="style4">
                <asp:TextBox ID="tbPassword" runat="server" BackColor="#C5C9FE" 
                    CssClass="style5" TextMode="Password" ToolTip="Enter Password"></asp:TextBox>
            </td>
            <td>
                <b>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="tbPassword" Display="Dynamic" 
                    ErrorMessage="should be at least 8 characters" ForeColor="Red" 
                    ValidationExpression="^.{8,}$"></asp:RegularExpressionValidator>
                </b>
            </td>
        </tr>
        <tr>
            <td class="style6">
                Re-Write Password :</td>
            <td class="style4">
                <asp:TextBox ID="tbRewrite" runat="server" BackColor="#C5C9FE" 
                    CssClass="style5" TextMode="Password" ToolTip="Re-Write Password"></asp:TextBox>
            </td>
            <td>
                <b>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="tbPassword" ControlToValidate="tbRewrite" Display="Dynamic" 
                    ErrorMessage="should have the same value of password" ForeColor="Red"></asp:CompareValidator>
                </b>
            </td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
    <table class="style2">
        <tr>
            <td class="style7" colspan="3">
                <strong>Personal Information</strong></td>
        </tr>
        <tr>
            <td class="style6">
                Name :
            </td>
            <td class="style4">
                <asp:TextBox ID="tbName" runat="server" BackColor="#C5C9FE" CssClass="style5" 
                    ToolTip="Enter Name"></asp:TextBox>
            </td>
            <td>
                <b>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="tbName" Display="Dynamic" ErrorMessage="Obligatory Field" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                </b>
            </td>
        </tr>
        <tr>
            <td class="style6">
                Age :</td>
            <td class="style4">
                <asp:TextBox ID="tbAge" runat="server" BackColor="#C5C9FE" CssClass="style5" 
                    ToolTip="Enter age"></asp:TextBox>
            </td>
            <td>
                <b>
                <asp:CompareValidator ID="CompareValidator2" runat="server" 
                    ControlToValidate="tbAge" Display="Dynamic" ErrorMessage="should be &gt;=18" 
                    ForeColor="Red" Operator="GreaterThanEqual" Type="Integer" ValueToCompare="18"></asp:CompareValidator>
                </b>
            </td>
        </tr>
        <tr>
            <td class="style6">
                Address :</td>
            <td class="style4">
                <asp:TextBox ID="tbAddress" runat="server" BackColor="#C5C9FE" 
                    CssClass="style5" TextMode="MultiLine" ToolTip="Enter address"></asp:TextBox>
            </td>
            <td>
                <b></b>
            </td>
        </tr>
        <tr>
            <td class="style6">
                Postal Code :</td>
            <td class="style4">
                <asp:TextBox ID="tbPostal" runat="server" BackColor="#C5C9FE" CssClass="style5" 
                    ToolTip="Enter postal code"></asp:TextBox>
            </td>
            <td>
                <b>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="tbPostal" Display="Dynamic" 
                    ErrorMessage="should be composed of 5 digits" ForeColor="Red" 
                    ValidationExpression="\d{5}"></asp:RegularExpressionValidator>
                </b>
            </td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
    <table class="style2">
        <tr>
            <td class="style10" colspan="3">
                <strong>Credit Card Details</strong></td>
        </tr>
        <tr>
            <td class="style6">
                Type of card :</td>
            <td class="style8">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                    RepeatDirection="Horizontal" style="font-weight: 700">
                    <asp:ListItem>Master Card</asp:ListItem>
                    <asp:ListItem>Visa Card</asp:ListItem>
                    <asp:ListItem>American Express</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                Card Number :</td>
            <td class="style8">
                <asp:TextBox ID="tbCard" runat="server" CssClass="style5" 
                    ToolTip="Enter Card Number" BackColor="#C5C9FE"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="lblCardError" runat="server" ForeColor="Red" 
                    style="font-weight: 700"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style16">
                Expiry Date :
            </td>
            <td class="style17">
                <asp:TextBox ID="tbExpiry" runat="server" CssClass="style5" 
                    ToolTip="Enter Expiry Date" BackColor="#C5C9FE"></asp:TextBox>
            </td>
            <td class="style18">
                <asp:Label ID="lblExpiryError" runat="server" ForeColor="Red" 
                    style="font-weight: 700"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style6">
                Key :</td>
            <td class="style8">
                <asp:TextBox ID="tbKey" runat="server" CssClass="style5" ToolTip="Enter Key" 
                    BackColor="#C5C9FE"></asp:TextBox>
            </td>
            <td>
                <b>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="tbKey" Display="Dynamic" 
                    ErrorMessage="should be an integer of 4 digits" ForeColor="Red" 
                    ValidationExpression="\d{4}"></asp:RegularExpressionValidator>
                </b>
            </td>
        </tr>
        <tr>
            <td class="style6">
                Amount :</td>
            <td class="style8">
                <asp:TextBox ID="tbAmount" runat="server" CssClass="style5" 
                    ToolTip="Enter Amount" BackColor="#C5C9FE"></asp:TextBox>
            </td>
            <td>
                <b>
                <asp:CompareValidator ID="CompareValidator3" runat="server" 
                    ControlToValidate="tbAmount" Display="Dynamic" 
                    ErrorMessage="should be a positive integer" ForeColor="Red" 
                    Operator="GreaterThan" Type="Integer" ValueToCompare="0"></asp:CompareValidator>
                </b>
            </td>
        </tr>
        <tr>
            <td colspan="3" class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Button ID="tbnValidate" runat="server" Text="Validate" 
                    onclick="tbnValidate_Click" />
            </td>
            <td class="style9">
                <asp:Button ID="btnAdd" runat="server" onclick="btnAdd_Click" Text="Add" />
            </td>
            <td>
                <asp:Button ID="btnClear" runat="server" CssClass="style5" 
                    onclick="btnClear_Click" Text="Clear" />
            </td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
    <table class="style2">
        <tr>
            <td class="style10" colspan="4">
                <strong>Customers List</strong></td>
        </tr>
        <tr>
            <td class="style11">
                <asp:ListBox ID="ListBox1" runat="server" CssClass="style5" Height="98px" 
                    Width="255px"></asp:ListBox>
            </td>
            <td class="style12">
                <b>nb customer :<asp:Label ID="customernb" runat="server" Text="0"></asp:Label>
                </b>
            </td>
            <td class="style13">
                Total Amount :
            </td>
            <td>
                <b>
                <asp:Label ID="totalAmount" runat="server" Text="0"></asp:Label>
                </b>
            </td>
        </tr>
        <tr>
            <td class="style15">
                <asp:Button ID="btnDelete" runat="server" CssClass="style5" Text="Delete" 
                    onclick="btnDelete_Click" />
            </td>
            <td class="style14">
                <asp:Button ID="btnUp" runat="server" CssClass="style5" Text="UP" 
                    onclick="btnUp_Click" />
            </td>
            <td class="style13">
                <asp:Button ID="btnDown" runat="server" CssClass="style5" Text="Down" 
                    onclick="btnDown_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
