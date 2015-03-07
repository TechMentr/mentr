﻿<%@ Page Title="Register Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Mentr.Register" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
       
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
                    <asp:TextBox ID="txtName" runat="server" />
                </td>
                <td>
                    <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtName"
                        runat="server" />
                </td>
            </tr>
            <tr>
            </tr>
            <tr>
            <tr>
                <td>
                    Surname
                </td>
                <td>
                    <asp:TextBox ID="txtSurname" runat="server" />
                </td>
                <td>
                    <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtSurname"
                        runat="server" />
                </td>
            </tr>
            </tr>
            <tr>
            <tr>
                <td>
                    Username
                </td>
                <td>
                    <asp:TextBox ID="txtUsername" runat="server" />
                </td>
                <td>
                    <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtUsername"
                        runat="server" />
                </td>
            </tr>
            </tr>
            <tr>
            <tr>
                <td>
                    Email
                </td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" />
                </td>
                <td>
                    <asp:RequiredFieldValidator ErrorMessage="Required" Display="Dynamic" ForeColor="Red"
                        ControlToValidate="txtEmail" runat="server" />
                    <asp:RegularExpressionValidator runat="server" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                        ControlToValidate="txtEmail" ForeColor="Red" ErrorMessage="Invalid email address." />
                </td>
            </tr>
            <tr>
            </tr>
            <tr>
                <td>
                    Do you want to be a mentor?
                </td>
                <td>
                    <asp:CheckBox ID="chkMentor" runat="server" />
                </td>
            </tr>
            <tr>
            </tr>
            <tr>
                <td>
                    Do you want to be a mentee?
                </td>
                <td>
                    <asp:CheckBox ID="chkMentee" runat="server" />
                </td>
            </tr>
            <tr>
            </tr>
            <tr>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <asp:Button Text="Register" runat="server" OnClick="RegisterUser" />
                </td>
                <td>
                </td>
            </tr>
        </table>
    </div>   
            
        
</asp:Content>
