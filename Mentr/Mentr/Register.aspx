﻿<%@ Page Title="Register Page" Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="TechMentr.Register" %>

    <style>
    .labelReg
    {
        margin:5px;
    }
    </style>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title></title>

    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>

    <webopt:bundlereference runat="server" path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
</head>
<body>
    <form id="form1" runat="server">

    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
            </div>
        </div>
    </div>
    <div>
        <table border="0" cellpadding="0" cellspacing="0">
            <tr>
                <th colspan="3">
                    <h2>Registration Form</h2>
                </th>
            </tr>
            <tr>
                <td>
                    First Name
                </td>
                <td>
                    <asp:TextBox ID="txtName" runat="server" CssClass="labelReg"/>
                </td>
                <td>
                    <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtName"
                        runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    Surname
                </td>
                <td>
                    <asp:TextBox ID="txtSurname" runat="server" CssClass="labelReg"/>
                </td>
                <td>
                    <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtSurname"
                        runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    Gender
                </td>
                <td>
                    <asp:RadioButtonList runat="server" ID="genderId" RepeatLayout="Flow" RepeatDirection="Horizontal" style="display:inline">
                        <asp:ListItem Value="0">F</asp:ListItem>
                        <asp:ListItem Value="1">M</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ErrorMessage="Select One option" ForeColor="Red" runat="server" ControlToValidate="genderId"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Email
                </td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="labelReg"/>
                </td>
                <td>
                    <asp:RequiredFieldValidator ErrorMessage="Required" Display="Dynamic" ForeColor="Red"
                        ControlToValidate="txtEmail" runat="server" />
                    <asp:RegularExpressionValidator runat="server" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                        ControlToValidate="txtEmail" ForeColor="Red" ErrorMessage="Invalid email address." />
                </td>
            </tr>
            <tr>
                <td>
                    Password
                </td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="labelReg"/>
                </td>
                <td>
                    <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtPassword"
                        runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    Confirm Password
                </td>
                <td>
                    <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="labelReg"/>
                </td>
                <td>
                    <asp:CompareValidator ErrorMessage="Passwords do not match." ForeColor="Red" ControlToCompare="txtPassword"
                        ControlToValidate="txtConfirmPassword" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    Do you want to be a mentor?
                </td>
                <td>
                    <asp:CheckBox ID="chkMentor" runat="server"  CssClass="labelReg"/>
                </td>
            </tr>
            <tr>
                <td>
                    Do you want to be a mentee?
                </td>
                <td>
                    <asp:CheckBox ID="chkMentee" runat="server" CssClass="labelReg"/>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="Skills"></asp:Label>
                </td>
                <td>
                    <asp:CheckBoxList ID="cblstSkills" runat="server" Width="128px"></asp:CheckBoxList>
                </td>
                <td>
                    <asp:TextBox ID="txtYearsExperience" runat="server" CssClass="labelReg"/>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txtYearsExperience" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"/>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <asp:Button class="btn btn-default" Text="Register" runat="server" OnClick="RegisterUser" CssClass="labelReg"/>
                </td>
                <td>
                </td>
            </tr>
        </table>
    </div>   
    <hr />
    <footer>
        <p>&copy; <%: DateTime.Now.Year %> - TechMentr</p>
    </footer>
    </form>
</body>
</html>
