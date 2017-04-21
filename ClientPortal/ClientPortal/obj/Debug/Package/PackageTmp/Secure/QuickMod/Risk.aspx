<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/QuickMod.Master" CodeBehind="Risk.aspx.vb" Inherits="ClientPortal.Risk" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            font-size: large;
        }
        .auto-style2 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <p class="auto-style2" >
        <strong>Risk Information</strong></p>
    <p class="auto-style1">
        <asp:FormView ID="RiskInfoFV" runat="server" DataKeyNames="RiskID" DataSourceID="RiskInfoDS">
            <EditItemTemplate>
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
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                RiskID:
                <asp:Label ID="RiskIDLabel" runat="server" Text='<%# Eval("RiskID") %>' />
                <br />
                Carrier Code:
                <asp:Label ID="CarrierCodeLabel" runat="server" Text='<%# Bind("CarrierCode") %>' />
                <br />
                Risk Name:
                <asp:Label ID="RiskNameLabel" runat="server" Text='<%# Bind("RiskName") %>' />
                <br />
                FEIN:
                <asp:Label ID="FEINLabel" runat="server" Text='<%# Bind("FEIN") %>' />
                <br />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="RiskInfoDS" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [QuickMod_Risks] WHERE [RiskID] = @original_RiskID AND [ClientID] = @original_ClientID AND [CarrierCode] = @original_CarrierCode AND [RiskName] = @original_RiskName AND [FEIN] = @original_FEIN" InsertCommand="INSERT INTO [QuickMod_Risks] ([ClientID], [CarrierCode], [RiskName], [FEIN]) VALUES (@ClientID, @CarrierCode, @RiskName, @FEIN)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM emod.[QuickMod_Risks] WHERE ([RiskID] = @RiskID)" UpdateCommand="UPDATE emod.[QuickMod_Risks] SET [ClientID] = @CClientID, [CarrierCode] = @CarrierCode, [RiskName] = @RiskName, [FEIN] = @FEIN WHERE [RiskID] = @CRiskID AND [ClientID] = @original_ClientID AND [CarrierCode] = @original_CarrierCode AND [RiskName] = @original_RiskName AND [FEIN] = @original_FEIN">
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
            </InsertParameters>
            <SelectParameters>
                <asp:CookieParameter CookieName="CRiskID" Name="RiskID" Type="Int64" />
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
                <asp:CookieParameter CookieName="CRiskID" Name="CRiskID" Type="Int64" />
                <asp:CookieParameter CookieName="CClientNumber" Name="CClientID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p class="auto-style2">
        <strong>Experience Mod History&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="ProduceModBT" runat="server" Text="Produce Mod" />
        </strong></p>
    <p class="auto-style1">
        <asp:GridView ID="ModHistoryGV" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="ModHistoryDS" ForeColor="Black" GridLines="Vertical" Width="1085px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="EffectiveDate" DataFormatString="{0:d}" HeaderText="Effective Date" SortExpression="EffectiveDate" />
                <asp:BoundField DataField="EMOD" DataFormatString="{0:N2}" HeaderText="Experience Mod" SortExpression="EMOD" />
                <asp:BoundField DataField="DateStamp" HeaderText="Date Produced" SortExpression="DateStamp" />
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
        <asp:Label ID="WarningLabel" runat="server" Text="This action will result in a per-mod charge as agreed." style="color: #FF0000" Visible="False"></asp:Label>
    </p>
    <p class="auto-style1">
        <asp:Label ID="EffectiveDateLabel" runat="server" Text="Please enter the desired Effective Date of the Mod." Visible="False"></asp:Label>
    </p>
    <p class="auto-style1">
        <asp:TextBox ID="EfectiveDateTB" runat="server" TextMode="Date" Visible="False"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="ProduceModSubmitBT" runat="server" Text="Produce Mod" Visible="False" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="CancelBT" runat="server" Text="Cancel" Visible="False" />
&nbsp;<asp:SqlDataSource ID="ModHistoryDS" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="emod.QuickMod_View_History" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:CookieParameter CookieName="CRiskID" Name="RiskID" Type="Int64" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p >
        <strong><span class="auto-style2">Policy History&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="AddPolicyBT" runat="server" Text="Add Policy" />
        </strong></p>
    <p >
        <asp:GridView ID="PolicyHistoryGV" runat="server" DataSourceID="PolicyHistoryDS" AutoGenerateColumns="False" DataKeyNames="PolicyID" Width="1085px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="PolicyID" HeaderText="PolicyID" InsertVisible="False" ReadOnly="True" SortExpression="PolicyID" />
                <asp:BoundField DataField="PolicyNumber" HeaderText="Policy Number" SortExpression="PolicyNumber" />
                <asp:BoundField DataField="PED" DataFormatString="{0:d}" HeaderText="Effective Date" SortExpression="PED" />
                <asp:BoundField DataField="StateCode" HeaderText="State Code" SortExpression="StateCode" />
                <asp:BoundField DataField="PayrollTotal" DataFormatString="{0:c}" HeaderText="Payroll Total" ReadOnly="True" SortExpression="PayrollTotal" />
                <asp:BoundField DataField="LossTotal" DataFormatString="{0:c}" HeaderText="Loss Total" ReadOnly="True" SortExpression="LossTotal" />
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
        <asp:SqlDataSource ID="PolicyHistoryDS" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="emod.QuickMod_View_History_Policy" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:CookieParameter CookieName="CRiskID" Name="RiskID" Type="Int64" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:FormView ID="AddPolicyFV" runat="server" DataKeyNames="PolicyID" DataSourceID="AddPolicyDS" Visible="False">
            <EditItemTemplate>
                RiskID:
                <asp:TextBox ID="RiskIDTextBox" runat="server" Text='<%# Bind("RiskID") %>' />
                <br />
                PolicyID:
                <asp:Label ID="PolicyIDLabel1" runat="server" Text='<%# Eval("PolicyID") %>' />
                <br />
                PolicyNumber:
                <asp:TextBox ID="PolicyNumberTextBox" runat="server" Text='<%# Bind("PolicyNumber") %>' />
                <br />
                PED:
                <asp:TextBox ID="PEDTextBox" runat="server" Text='<%# Bind("PED") %>' />
                <br />
                StateCode:
                <asp:TextBox ID="StateCodeTextBox" runat="server" Text='<%# Bind("StateCode") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                PolicyNumber:
                <asp:TextBox ID="PolicyNumberTextBox" runat="server" Text='<%# Bind("PolicyNumber") %>' />
                <br />
                PED:
                <asp:TextBox ID="PEDTextBox" runat="server" Text='<%# Bind("PED") %>' />
                <br />
                StateCode:
                <asp:TextBox ID="StateCodeTextBox" runat="server" Text='<%# Bind("StateCode") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Add Policy" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                RiskID:
                <asp:Label ID="RiskIDLabel" runat="server" Text='<%# Bind("RiskID") %>' />
                <br />
                PolicyID:
                <asp:Label ID="PolicyIDLabel" runat="server" Text='<%# Eval("PolicyID") %>' />
                <br />
                PolicyNumber:
                <asp:Label ID="PolicyNumberLabel" runat="server" Text='<%# Bind("PolicyNumber") %>' />
                <br />
                PED:
                <asp:Label ID="PEDLabel" runat="server" Text='<%# Bind("PED") %>' />
                <br />
                StateCode:
                <asp:Label ID="StateCodeLabel" runat="server" Text='<%# Bind("StateCode") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="AddPolicyDS" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [QuickMod_Policies] WHERE [PolicyID] = @original_PolicyID AND [RiskID] = @original_RiskID AND [PolicyNumber] = @original_PolicyNumber AND [PED] = @original_PED AND [StateCode] = @original_StateCode" InsertCommand="INSERT INTO emod.[QuickMod_Policies] ([RiskID], [PolicyNumber], [PED], [StateCode]) VALUES (@CRiskID, @PolicyNumber, @PED, @StateCode)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM emod.[QuickMod_Policies]" UpdateCommand="UPDATE [QuickMod_Policies] SET [RiskID] = @RiskID, [PolicyNumber] = @PolicyNumber, [PED] = @PED, [StateCode] = @StateCode WHERE [PolicyID] = @original_PolicyID AND [RiskID] = @original_RiskID AND [PolicyNumber] = @original_PolicyNumber AND [PED] = @original_PED AND [StateCode] = @original_StateCode">
            <DeleteParameters>
                <asp:Parameter Name="original_PolicyID" Type="Int64" />
                <asp:Parameter Name="original_RiskID" Type="Int64" />
                <asp:Parameter Name="original_PolicyNumber" Type="String" />
                <asp:Parameter DbType="Date" Name="original_PED" />
                <asp:Parameter Name="original_StateCode" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="RiskID" Type="Int64" />
                <asp:Parameter Name="PolicyNumber" Type="String" />
                <asp:Parameter DbType="Date" Name="PED" />
                <asp:Parameter Name="StateCode" Type="String" />
                <asp:CookieParameter CookieName="CRiskID" Name="CRiskID" Type="Int64" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="RiskID" Type="Int64" />
                <asp:Parameter Name="PolicyNumber" Type="String" />
                <asp:Parameter DbType="Date" Name="PED" />
                <asp:Parameter Name="StateCode" Type="String" />
                <asp:Parameter Name="original_PolicyID" Type="Int64" />
                <asp:Parameter Name="original_RiskID" Type="Int64" />
                <asp:Parameter Name="original_PolicyNumber" Type="String" />
                <asp:Parameter DbType="Date" Name="original_PED" />
                <asp:Parameter Name="original_StateCode" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
