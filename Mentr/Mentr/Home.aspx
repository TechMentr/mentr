<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Mentr.Home" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <div style="text-align: right;">
        <asp:Label runat="server" ID="sessName" />
    </div>

    <div class="jumbotron">
        <h2>Women of the week!</h2>
        <div class="col-md-4" style="width: 100%; overflow: auto;" >
            <asp:Table runat="server" CellPadding="1" HorizontalAlign="Center" Width="100%" Font-Size="Medium">
                <asp:TableRow Width="100%">
<%--                    <asp:TableCell>
                        <asp:Panel ID="pnlDetails1" runat="server">
                            <hr />
                            <asp:Image ID="imgPicture1" runat="server" /><br />                        
                            <asp:Label ID="lblName1" runat="server" /><br />                       
                            <asp:Label ID="lblHeadline1" runat="server" /><br/>
                            <asp:HyperLink ID="hlLinkedInUrl1" runat="server">LinkedIn</asp:HyperLink>
                        </asp:Panel>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Panel ID="pnlDetails2" runat="server">
                            <hr />
                            <asp:Image ID="imgPicture2" runat="server" /><br />                        
                            <asp:Label ID="lblName2" runat="server" /><br />                           
                            <asp:Label ID="lblHeadline2" runat="server" /><br />
                            <asp:HyperLink ID="hlLinkedInUrl2" runat="server">LinkedIn</asp:HyperLink>
                        </asp:Panel>
                    </asp:TableCell>--%>
                    <asp:TableCell>
                        <asp:Panel ID="pnlDetails3" runat="server">
                            <hr />
                            <asp:Image ID="imgPicture3" runat="server" /><br />                          
                            <asp:Label ID="lblName3" runat="server" /><br />                           
                            <asp:Label ID="lblHeadline3" runat="server" /><br />
                            <asp:HyperLink ID="hlLinkedInUrl3" runat="server">LinkedIn</asp:HyperLink>
                        </asp:Panel>
                    </asp:TableCell>
                             <asp:TableCell>
                        <asp:Panel ID="pnlDetails4" runat="server">
                            <hr />
                            <asp:Image ID="imgPicture4" runat="server" /><br />                        
                            <asp:Label ID="lblName4" runat="server" /><br />                           
                            <asp:Label ID="lblHeadline4" runat="server" /><br />
                            <asp:HyperLink ID="hlLinkedInUrl4" runat="server">LinkedIn</asp:HyperLink>
                        </asp:Panel>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Panel ID="pnlDetails5" runat="server">
                            <hr />
                            <asp:Image ID="imgPicture5" runat="server" /><br />                         
                            <asp:Label ID="lblName5" runat="server" /><br />                         
                            <asp:Label ID="lblHeadline5" runat="server" /><br />
                            <asp:HyperLink ID="hlLinkedInUrl5" runat="server">LinkedIn</asp:HyperLink>
                        </asp:Panel>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Panel ID="pnlDetails6" runat="server">
                            <hr />
                            <asp:Image ID="imgPicture6" runat="server" /><br />                            
                            <asp:Label ID="lblName6" runat="server" /><br />                          
                            <asp:Label ID="lblHeadline6" runat="server" /><br />
                            <asp:HyperLink ID="hlLinkedInUrl6" runat="server">LinkedIn</asp:HyperLink>
                        </asp:Panel>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
        <p class="lead"></p>
        <div class="col-md-4">
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
