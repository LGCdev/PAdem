<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="UnitSearch.aspx.vb" Inherits="ClientPortal.UnitSearch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 159px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label1" runat="server" style="font-weight: 700; font-size: large" Text="Carrier Number:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="CarrierNoTB" runat="server" Width="88px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label2" runat="server" style="font-weight: 700; font-size: large" Text="Policy Number:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="PolicyNoTB" runat="server" Width="206px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label3" runat="server" style="font-weight: 700; font-size: large" Text="State Code:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="StateCodeTB" runat="server" Width="89px"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="StateCodeTB" ErrorMessage="RangeValidator" Font-Bold="True" ForeColor="Red" MaximumValue="52" MinimumValue="01" SetFocusOnError="True">Invalid State Code</asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label4" runat="server" style="font-weight: 700; font-size: large" Text="Insured Name:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="InsuredNameTB" runat="server" Width="337px"></asp:TextBox>
            </td>
        </tr>
    </table>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Search" />
    <br />
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SearchDataSource" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="1082px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" Visible="False">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="CarrierCode" HeaderText="CarrierCode" SortExpression="CarrierCode" />
            <asp:BoundField DataField="PolicyNumber" HeaderText="PolicyNumber" SortExpression="PolicyNumber" />
            <asp:BoundField DataField="StateCode" HeaderText="StateCode" SortExpression="StateCode" />
            <asp:BoundField DataField="PED" DataFormatString="{0:d}" HeaderText="Effective Date" SortExpression="PED" />
            <asp:BoundField DataField="InsuredName" HeaderText="InsuredName" SortExpression="InsuredName" />
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
    <asp:SqlDataSource ID="SearchDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="Portal.Page_UnitSearchProc" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="CarrierNoTB" Name="Carrier" PropertyName="Text" Type="String" DefaultValue="%" />
            <asp:ControlParameter ControlID="PolicyNoTB" Name="PolicyNo" PropertyName="Text" Type="String" DefaultValue="%" />
            <asp:ControlParameter ControlID="StateCodeTB" Name="StateCode" PropertyName="Text" Type="String" DefaultValue="%" />
            <asp:ControlParameter ControlID="InsuredNameTB" Name="InsuredName" PropertyName="Text" Type="String" DefaultValue="%" />
            <asp:CookieParameter CookieName="CClientNumber" Name="ClientNo" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </asp:Content>
