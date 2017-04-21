<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="DefaultError.aspx.vb" Inherits="ClientPortal.DefaultError" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" style="font-weight: 700; font-size: xx-large" Text="Oops!  There was an Error."></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Looks like there was a problem.  Try navigating Home and trying again.  If it persist, contact your LGI Contact."></asp:Label>
    <br />
</asp:Content>
