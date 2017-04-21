<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="LandingPage.aspx.vb" Inherits="ClientPortal.LandingPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Label" style="font-weight: 700; font-size: x-large"></asp:Label>
    <br />
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" style="font-weight: 700; font-size: medium" Text="Unit Statistical Reporting"></asp:Label>
    <asp:FormView ID="FormView1" runat="server" DataSourceID="Unit_LandingPage">
        <EditItemTemplate>
            NextDueCount:
            <asp:TextBox ID="NextDueCountTextBox" runat="server" Text='<%# Bind("NextDueCount") %>' />
            <br />
            CurrentDueCount:
            <asp:TextBox ID="CurrentDueCountTextBox" runat="server" Text='<%# Bind("CurrentDueCount") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            NextDueCount:
            <asp:TextBox ID="NextDueCountTextBox" runat="server" Text='<%# Bind("NextDueCount") %>' />
            <br />
            CurrentDueCount:
            <asp:TextBox ID="CurrentDueCountTextBox" runat="server" Text='<%# Bind("CurrentDueCount") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            <span class="auto-style1">You currently have
            <asp:Label ID="CurrentDueCountLabel" runat="server" style="color: #000099" Text='<%# Bind("CurrentDueCount") %> ' />
            &nbsp;units due by the end of the month.&nbsp;
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Secure/CurrentDueUnits.aspx">View Units</asp:LinkButton>
            <br />
            <br />
            You currently have
            <asp:Label ID="NextDueCountLabel" runat="server" style="color: #000099" Text='<%# Bind("NextDueCount") %>' />
            &nbsp;units due by the end of next month.
            <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/Secure/NextDueUnits.aspx">View Units</asp:LinkButton>
            </span><br />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="Unit_LandingPage" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="Portal.Page_LandingProc" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:CookieParameter CookieName="CClientnumber" Name="ClientNo" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
