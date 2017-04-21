<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="PolicyViewFull.aspx.vb" Inherits="ClientPortal.PolicyView2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <span class="auto-style1"><strong>
    <asp:Label ID="InsuredNameLabel" runat="server" Text="Label" style="text-decoration: underline; font-size: xx-large"></asp:Label>
    <br />
    <asp:Label ID="PolicyNumberLabel" runat="server" Text="Label"></asp:Label>
    <br />
    <asp:Label ID="PEDLabel" runat="server" Text="Label"></asp:Label>
    <br />
    <br />
    </strong></span>
    <br />
    <asp:Label ID="Label2" runat="server" style="font-weight: 700; text-decoration: underline; font-size: large" Text="Transaction History"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="PolicyTransactionDatasource" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" PageSize="5" Width="100%">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Description" HeaderText="Description" ReadOnly="True" SortExpression="Description" />
            <asp:BoundField DataField="TransactionCode" HeaderText="Transaction Code" ReadOnly="True" SortExpression="TransactionCode" />
            <asp:BoundField DataField="TransactionIssueDate" DataFormatString="{0:d}" HeaderText="Issue Date" ReadOnly="True" SortExpression="TransactionIssueDate" />
            <asp:BoundField DataField="CancellationType" HeaderText="Cancellation Type" ReadOnly="True" SortExpression="CancellationType" />
            <asp:BoundField DataField="CancellationReinstatementEffectiveDate" DataFormatString="{0:d}" HeaderText="Effective Date" ReadOnly="True" SortExpression="CancellationReinstatementEffectiveDate" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>
    <asp:SqlDataSource ID="PolicyTransactionDatasource" runat="server" ConnectionString="<%$ ConnectionStrings:ReedusConnection %>" SelectCommand="Portal.Page_PolicyViewTxs" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:CookieParameter CookieName="cpolicyno" Name="policyno" Type="String" DefaultValue="%" />
            <asp:CookieParameter CookieName="Ccarrier" Name="CarrierNo" Type="String" DefaultValue="" />
            <asp:CookieParameter CookieName="CPED" Name="PED" Type="String" />
            <asp:CookieParameter CookieName="CClientNumber" Name="ClientNo" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
</asp:Content>
