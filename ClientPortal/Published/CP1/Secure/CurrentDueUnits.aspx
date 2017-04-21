<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="CurrentDueUnits.aspx.vb" Inherits="ClientPortal.CurrentDueUnits" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView2" runat="server" DataSourceID="CurrentDueDataSource" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" ForeColor="Black" Width="100%" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" GridLines="Vertical">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="CarrierCode" HeaderText="Carrier" SortExpression="CarrierCode" />
            <asp:BoundField DataField="PolicyNumber" HeaderText="Policy Number" SortExpression="PolicyNumber" />
            <asp:BoundField DataField="StateCode" HeaderText="State Code" SortExpression="StateCode" />
            <asp:BoundField DataField="PED" HeaderText="Effective" SortExpression="PED" DataFormatString="{0:d}" />
            <asp:BoundField DataField="InsuredName" HeaderText="Insured Name" SortExpression="InsuredName" />
            <asp:BoundField DataField="PremiumSum" HeaderText="Total Premium" SortExpression="PremiumSum" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="CurrentDueDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="Portal.Page_CurrentDueProc" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:CookieParameter CookieName="CClientnumber" Name="ClientNo" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </asp:Content>
