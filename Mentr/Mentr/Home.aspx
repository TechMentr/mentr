<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Mentr.Home" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    
    <div style="text-align: right;">
    <asp:Label runat="server" id="sessName" />
    </div>

    <div class="jumbotron">
        <h2>Women of the week!</h2>
        <p class="lead"></p>
               <div class="col-md-4">
            <asp:Panel ID="pnlDetails1" runat="server"><hr />
            <asp:Image ID="imgPicture1" runat="server" /><br />
                Name:  <asp:Label ID="lblName1" runat="server" /><br />
                Headline: <asp:Label ID="lblHeadline1" runat="server" />
                <asp:HyperLink ID="hlLinkedInUrl1" runat="server">LinkedIn</asp:HyperLink>
            </asp:Panel>
        </div>
        <div class="col-md-4">
            <asp:Panel ID="pnlDetails2" runat="server"><hr />
            <asp:Image ID="imgPicture2" runat="server" /><br />
                Name:  <asp:Label ID="lblName2" runat="server" /><br />
                Headline: <asp:Label ID="lblHeadline2" runat="server" />
                <asp:HyperLink ID="hlLinkedInUrl2" runat="server">LinkedIn</asp:HyperLink>
            </asp:Panel>
        </div>
        <div class="col-md-4">
            <asp:Panel ID="pnlDetails3" runat="server"><hr />
            <asp:Image ID="imgPicture3" runat="server" /><br />
                Name:  <asp:Label ID="lblName3" runat="server" /><br />
                Headline: <asp:Label ID="lblHeadline3" runat="server" />
                <asp:HyperLink ID="hlLinkedInUrl3" runat="server">LinkedIn</asp:HyperLink>
            </asp:Panel>
        </div>
    </div>

    <div class="row">
        <div class="col-md-6">
            <h2>Looking for a Mentor?</h2>
            <p>
                <a class="btn btn-default" href="Mentors.aspx">View results &raquo;</a>
            </p>
        </div>
        <div class="col-md-6">
            <h2>Looking for a Mentee?</h2>
            <p>
                <a class="btn btn-default" href="Mentees.aspx">View results &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
