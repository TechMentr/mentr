﻿<%@ Page Title="Register Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Mentr.Register" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
    .labelReg
    {
        margin:5px;
    }
    </style>
     
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
                    <asp:RadioButton ID="genderF" Text="F" runat="server" GroupName="gender" CssClass="labelReg"></asp:RadioButton>
                    <asp:RadioButton ID="genderM" Text="M" runat="server" GroupName="gender" CssClass="labelReg"></asp:RadioButton>
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
            <td colspan="2">
                <asp:CheckBoxList ID="cblstskills" runat="server" Width="128px" Enabled="False"></asp:CheckBoxList>
            </td>
            <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <asp:Button Text="Register" runat="server" OnClick="RegisterUser" CssClass="labelReg"/>
                </td>
                <td>
                </td>
            </tr>
        </table>
    </div>   
            
        
</asp:Content>