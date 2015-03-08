<%@ Page Title="Mentors" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Mentors.aspx.cs" Inherits="TechMentr.Mentors" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Mentors..</h3>

    <asp:GridView ID="mentorsGrid" runat="server" AutoGenerateColumns="True" 
    CellPadding="4" ForeColor="#333333" 
    GridLines="None" AllowPaging="True" AllowSorting="True" Width="520px">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
    </Columns>
</asp:GridView>  

</asp:Content>