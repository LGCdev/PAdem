<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/QuickMod.Master" CodeBehind="QuickMod.aspx.vb" Inherits="ClientPortal.QuickMod" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            font-size: medium;
        }
        .auto-style2 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <p class="auto-style2">
        <strong>Search Risks</strong></p>
    <p class="auto-style1">
        Enter the Name or FEIN of a risk to search.</p>
    <p class="auto-style1">
        <asp:TextBox ID="RiskSearchTB" runat="server" Width="371px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="SearchBT" runat="server" Text="Search" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="AddRiskBT" runat="server" Text="Add Risk" />
    </p>
    <p class="auto-style1">
        <asp:GridView ID="RiskSearchGV" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="RiskID" DataSourceID="RiskSearchDS" ForeColor="Black" GridLines="Vertical" Width="1019px" Visible="False">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="RiskID" HeaderText="RiskID" InsertVisible="False" ReadOnly="True" SortExpression="RiskID" />
                <asp:BoundField DataField="ClientID" HeaderText="Company" SortExpression="ClientID" />
                <asp:BoundField DataField="CarrierCode" HeaderText="Carrier Code" SortExpression="CarrierCode" />
                <asp:BoundField DataField="RiskName" HeaderText="Risk Name" SortExpression="RiskName" />
                <asp:BoundField DataField="FEIN" HeaderText="FEIN" SortExpression="FEIN" />
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
        <asp:FormView ID="RiskSearchFV" runat="server" DataKeyNames="RiskID" DataSourceID="RiskSearchDS" Visible="False">
            <EditItemTemplate>
                RiskID:
                <asp:Label ID="RiskIDLabel1" runat="server" Text='<%# Eval("RiskID") %>' />
                <br />
                ClientID:
                <asp:TextBox ID="ClientIDTextBox" runat="server" Text='<%# Bind("ClientID") %>' />
                <br />
                CarrierCode:
                <asp:TextBox ID="CarrierCodeTextBox" runat="server" Text='<%# Bind("CarrierCode") %>' />
                <br />
                RiskName:
                <asp:TextBox ID="RiskNameTextBox" runat="server" Text='<%# Bind("RiskName") %>' />
                <br />
                FEIN:
                <asp:TextBox ID="FEINTextBox" runat="server" Text='<%# Bind("FEIN") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                CarrierCode:
                <asp:TextBox ID="CarrierCodeTextBox" runat="server" Text='<%# Bind("CarrierCode") %>' />
                <br />
                RiskName:
                <asp:TextBox ID="RiskNameTextBox" runat="server" Text='<%# Bind("RiskName") %>' />
                <br />
                FEIN:
                <asp:TextBox ID="FEINTextBox" runat="server" Text='<%# Bind("FEIN") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Add Risk" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                RiskID:
                <asp:Label ID="RiskIDLabel" runat="server" Text='<%# Eval("RiskID") %>' />
                <br />
                ClientID:
                <asp:Label ID="ClientIDLabel" runat="server" Text='<%# Bind("ClientID") %>' />
                <br />
                CarrierCode:
                <asp:Label ID="CarrierCodeLabel" runat="server" Text='<%# Bind("CarrierCode") %>' />
                <br />
                RiskName:
                <asp:Label ID="RiskNameLabel" runat="server" Text='<%# Bind("RiskName") %>' />
                <br />
                FEIN:
                <asp:Label ID="FEINLabel" runat="server" Text='<%# Bind("FEIN") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="RiskSearchDS" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM emod.[QuickMod_Risks] WHERE [RiskID] = @original_RiskID AND [ClientID] = @original_ClientID AND [CarrierCode] = @original_CarrierCode AND [RiskName] = @original_RiskName AND [FEIN] = @original_FEIN" InsertCommand="INSERT INTO emod.[QuickMod_Risks] ([ClientID], [CarrierCode], [RiskName], [FEIN]) VALUES (@CClientID, @CarrierCode, @RiskName, @FEIN)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM emod.[QuickMod_Risks] WHERE (([FEIN] LIKE '%' + @FEIN + '%') OR ([RiskName] LIKE '%' + @RiskName + '%')) ORDER BY [RiskName]" UpdateCommand="UPDATE emod.[QuickMod_Risks] SET [ClientID] = @CClientID, [CarrierCode] = @CarrierCode, [RiskName] = @RiskName, [FEIN] = @FEIN WHERE [RiskID] = @original_RiskID AND [ClientID] = @original_ClientID AND [CarrierCode] = @original_CarrierCode AND [RiskName] = @original_RiskName AND [FEIN] = @original_FEIN">
            <DeleteParameters>
                <asp:Parameter Name="original_RiskID" Type="Int64" />
                <asp:Parameter Name="original_ClientID" Type="String" />
                <asp:Parameter Name="original_CarrierCode" Type="String" />
                <asp:Parameter Name="original_RiskName" Type="String" />
                <asp:Parameter Name="original_FEIN" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ClientID" Type="String" />
                <asp:Parameter Name="CarrierCode" Type="String" />
                <asp:Parameter Name="RiskName" Type="String" />
                <asp:Parameter Name="FEIN" Type="String" />
                <asp:CookieParameter CookieName="CClientNumber" Name="CClientID" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="RiskSearchTB" Name="FEIN" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="RiskSearchTB" Name="RiskName" PropertyName="Text" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="ClientID" Type="String" />
                <asp:Parameter Name="CarrierCode" Type="String" />
                <asp:Parameter Name="RiskName" Type="String" />
                <asp:Parameter Name="FEIN" Type="String" />
                <asp:Parameter Name="original_RiskID" Type="Int64" />
                <asp:Parameter Name="original_ClientID" Type="String" />
                <asp:Parameter Name="original_CarrierCode" Type="String" />
                <asp:Parameter Name="original_RiskName" Type="String" />
                <asp:Parameter Name="original_FEIN" Type="String" />
                <asp:CookieParameter CookieName="CClientNumber" Name="CClientID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
