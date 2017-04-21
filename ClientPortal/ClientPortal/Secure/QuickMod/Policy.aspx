<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/QuickMod.Master" CodeBehind="Policy.aspx.vb" Inherits="ClientPortal.Policy" %>
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
    <p class="auto-style1">
        <strong>Policy Information&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="BackToRisk" runat="server" Text="Back To Risk" />
        </strong></p>
    <p class="auto-style1">
        <asp:FormView ID="PolicyInfoFV" runat="server" DataKeyNames="PolicyID" DataSourceID="PolicyInfoDS" Width="432px">
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
                RiskID:
                <asp:TextBox ID="RiskIDTextBox" runat="server" Text='<%# Bind("RiskID") %>' />
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
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                RiskID:
                <asp:Label ID="RiskIDLabel" runat="server" Text='<%# Bind("RiskID") %>' />
                <br />
                Policy Number:
                <asp:Label ID="PolicyNumberLabel" runat="server" Text='<%# Bind("PolicyNumber") %>' />
                <br />
                Effective Date:
                <asp:Label ID="PEDLabel" runat="server" Text='<%# Bind("PED") %>' />
                <br />
                State Code:
                <asp:Label ID="StateCodeLabel" runat="server" Text='<%# Bind("StateCode") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="PolicyInfoDS" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [QuickMod_Policies] WHERE [PolicyID] = @original_PolicyID AND [RiskID] = @original_RiskID AND [PolicyNumber] = @original_PolicyNumber AND [PED] = @original_PED AND [StateCode] = @original_StateCode" InsertCommand="INSERT INTO [QuickMod_Policies] ([RiskID], [PolicyNumber], [PED], [StateCode]) VALUES (@RiskID, @PolicyNumber, @PED, @StateCode)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM emod.[QuickMod_Policies] WHERE ([PolicyID] = @PolicyID)" UpdateCommand="UPDATE emod.[QuickMod_Policies] SET [RiskID] = @CRiskID, [PolicyNumber] = @PolicyNumber, [PED] = @PED, [StateCode] = @StateCode WHERE [PolicyID] = @CPolicyID AND [RiskID] = @CRiskID AND [PolicyNumber] = @original_PolicyNumber AND [PED] = @original_PED AND [StateCode] = @original_StateCode">
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
            </InsertParameters>
            <SelectParameters>
                <asp:CookieParameter CookieName="CPolicyID" Name="PolicyID" Type="Int64" />
            </SelectParameters>
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
                <asp:CookieParameter CookieName="CRiskID" Name="CRiskID" Type="Int64" />
                <asp:CookieParameter CookieName="CPolicyID" Name="CPolicyID" Type="Int64" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <strong><span class="auto-style1">Payroll Data&nbsp;&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="AddPayrolBT" runat="server" Text="Add Payroll" />
        </strong></p>
    <p class="auto-style1">
        <asp:GridView ID="PayrollDataGV" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ExposureID" DataSourceID="PayrollDataDS" ForeColor="Black" GridLines="Vertical" Width="1098px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ExposureID" HeaderText="ExposureID" InsertVisible="False" ReadOnly="True" SortExpression="ExposureID" />
                <asp:BoundField DataField="ClassCode" HeaderText="Class Code" SortExpression="ClassCode" />
                <asp:BoundField DataField="ExposureAmt" DataFormatString="{0:c}" HeaderText="Exposure" SortExpression="ExposureAmt" />
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
        <asp:FormView ID="AddPayrollFV" runat="server" DataKeyNames="ExposureID" DataSourceID="PayrollDataDS" Visible="False">
            <EditItemTemplate>
                PolicyID:
                <asp:TextBox ID="PolicyIDTextBox" runat="server" Text='<%# Bind("PolicyID") %>' />
                <br />
                ExposureID:
                <asp:Label ID="ExposureIDLabel1" runat="server" Text='<%# Eval("ExposureID") %>' />
                <br />
                ClassCode:
                <asp:TextBox ID="ClassCodeTextBox" runat="server" Text='<%# Bind("ClassCode") %>' />
                <br />
                ExposureAmt:
                <asp:TextBox ID="ExposureAmtTextBox" runat="server" Text='<%# Bind("ExposureAmt") %>' />
                <br />
                PremiumAmt:
                <asp:TextBox ID="PremiumAmtTextBox" runat="server" Text='<%# Bind("PremiumAmt") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                ClassCode:
                <asp:TextBox ID="ClassCodeTextBox" runat="server" Text='<%# Bind("ClassCode") %>' />
                <br />
                Payroll:
                <asp:TextBox ID="ExposureAmtTextBox" runat="server" Text='<%# Bind("ExposureAmt") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Add Payroll" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                PolicyID:
                <asp:Label ID="PolicyIDLabel" runat="server" Text='<%# Bind("PolicyID") %>' />
                <br />
                ExposureID:
                <asp:Label ID="ExposureIDLabel" runat="server" Text='<%# Eval("ExposureID") %>' />
                <br />
                ClassCode:
                <asp:Label ID="ClassCodeLabel" runat="server" Text='<%# Bind("ClassCode") %>' />
                <br />
                ExposureAmt:
                <asp:Label ID="ExposureAmtLabel" runat="server" Text='<%# Bind("ExposureAmt") %>' />
                <br />
                PremiumAmt:
                <asp:Label ID="PremiumAmtLabel" runat="server" Text='<%# Bind("PremiumAmt") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="PayrollDataDS" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM emod.[QuickMod_Exposures] WHERE [ExposureID] = @original_ExposureID" InsertCommand="INSERT INTO emod.[QuickMod_Exposures] ([PolicyID], [ClassCode], [ExposureAmt], [PremiumAmt]) VALUES (@CPolicyID, @ClassCode, @ExposureAmt, 0)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM emod.[QuickMod_Exposures] WHERE ([PolicyID] = @PolicyID)" UpdateCommand="UPDATE emod.[QuickMod_Exposures] SET [PolicyID] = @CPolicyID, [ClassCode] = @ClassCode, [ExposureAmt] = @ExposureAmt, [PremiumAmt] = @PremiumAmt WHERE [ExposureID] = @original_ExposureID AND [PolicyID] = @CPolicyID AND [ClassCode] = @original_ClassCode AND [ExposureAmt] = @original_ExposureAmt AND [PremiumAmt] = @original_PremiumAmt">
            <DeleteParameters>
                <asp:Parameter Name="original_ExposureID" Type="Int64" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="PolicyID" Type="Int64" />
                <asp:Parameter Name="ClassCode" Type="String" />
                <asp:Parameter Name="ExposureAmt" Type="Int32" />
                <asp:Parameter Name="PremiumAmt" Type="Int32" />
                <asp:CookieParameter CookieName="CPolicyID" Name="CPolicyID" Type="Int64" />
            </InsertParameters>
            <SelectParameters>
                <asp:CookieParameter CookieName="CPolicyID" Name="PolicyID" Type="Int64" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="PolicyID" Type="Int64" />
                <asp:Parameter Name="ClassCode" Type="String" />
                <asp:Parameter Name="ExposureAmt" Type="Int32" />
                <asp:Parameter Name="PremiumAmt" Type="Int32" />
                <asp:Parameter Name="original_ExposureID" Type="Int64" />
                <asp:Parameter Name="original_PolicyID" Type="Int64" />
                <asp:Parameter Name="original_ClassCode" Type="String" />
                <asp:Parameter Name="original_ExposureAmt" Type="Int32" />
                <asp:Parameter Name="original_PremiumAmt" Type="Int32" />
                <asp:CookieParameter CookieName="CPolicyID" Name="CPolicyID" Type="Int64" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <strong><span class="auto-style1">Loss Data&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="AddLossBT" runat="server" Text="Add Loss" />
        </strong></p>
    <p>
        <asp:GridView ID="LossDataGV" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="LossID" DataSourceID="LossDataDS" ForeColor="Black" GridLines="Vertical" Width="1144px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="PolicyID" HeaderText="PolicyID" SortExpression="PolicyID" />
                <asp:BoundField DataField="LossID" HeaderText="LossID" InsertVisible="False" ReadOnly="True" SortExpression="LossID" />
                <asp:BoundField DataField="ClaimNo" HeaderText="Claim Number" SortExpression="ClaimNo" />
                <asp:BoundField DataField="IncurredIndemnityAMT" DataFormatString="{0:c}" HeaderText="Indemnity" SortExpression="IncurredIndemnityAMT" />
                <asp:BoundField DataField="IncurredMedicalAmt" DataFormatString="{0:c}" HeaderText="Medical" SortExpression="IncurredMedicalAmt" />
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
        <asp:FormView ID="LossDataFV" runat="server" DataKeyNames="LossID" DataSourceID="LossDataDS" Visible="False">
            <EditItemTemplate>
                PolicyID:
                <asp:TextBox ID="PolicyIDTextBox" runat="server" Text='<%# Bind("PolicyID") %>' />
                <br />
                LossID:
                <asp:Label ID="LossIDLabel1" runat="server" Text='<%# Eval("LossID") %>' />
                <br />
                ClaimNo:
                <asp:TextBox ID="ClaimNoTextBox" runat="server" Text='<%# Bind("ClaimNo") %>' />
                <br />
                IncurredIndemnityAMT:
                <asp:TextBox ID="IncurredIndemnityAMTTextBox" runat="server" Text='<%# Bind("IncurredIndemnityAMT") %>' />
                <br />
                IncurredMedicalAmt:
                <asp:TextBox ID="IncurredMedicalAmtTextBox" runat="server" Text='<%# Bind("IncurredMedicalAmt") %>' />
                <br />
                PaidIndemnityAmt:
                <asp:TextBox ID="PaidIndemnityAmtTextBox" runat="server" Text='<%# Bind("PaidIndemnityAmt") %>' />
                <br />
                PaidMedicalAmt:
                <asp:TextBox ID="PaidMedicalAmtTextBox" runat="server" Text='<%# Bind("PaidMedicalAmt") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Claim Number:
                <asp:TextBox ID="ClaimNoTextBox" runat="server" Text='<%# Bind("ClaimNo") %>' />
                <br />
                Injury Type:
                <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue= '<%# Bind("InjuryType")%>'>
                <asp:ListItem Value="05">Indemnity</asp:ListItem>
                <asp:ListItem Value="06">Medical Only</asp:ListItem>
                </asp:DropDownList>
                <br />
                Loss Amount:
                <asp:TextBox ID="IncurredIndemnityAMTTextBox" runat="server" Text='<%# Bind("IncurredIndemnityAMT") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Add Loss" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                PolicyID:
                <asp:Label ID="PolicyIDLabel" runat="server" Text='<%# Bind("PolicyID") %>' />
                <br />
                LossID:
                <asp:Label ID="LossIDLabel" runat="server" Text='<%# Eval("LossID") %>' />
                <br />
                ClaimNo:
                <asp:Label ID="ClaimNoLabel" runat="server" Text='<%# Bind("ClaimNo") %>' />
                <br />
                IncurredIndemnityAMT:
                <asp:Label ID="IncurredIndemnityAMTLabel" runat="server" Text='<%# Bind("IncurredIndemnityAMT") %>' />
                <br />
                IncurredMedicalAmt:
                <asp:Label ID="IncurredMedicalAmtLabel" runat="server" Text='<%# Bind("IncurredMedicalAmt") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="LossDataDS" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM emod.[QuickMod_Losses] WHERE [LossID] = @original_LossID" InsertCommand="INSERT INTO emod.[QuickMod_Losses] ([PolicyID], [ClaimNo], [IncurredIndemnityAMT], [IncurredMedicalAmt], [PaidIndemnityAmt], [PaidMedicalAmt]) VALUES (@CPolicyID, @ClaimNo, Case When @InjuryType = '05' Then @IncurredIndemnityAMT Else 0 End, Case When @InjuryType = '06' Then @IncurredIndemnityAMT Else 0 End, 0, 0)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM emod.[QuickMod_Losses] WHERE ([PolicyID] = @PolicyID)" UpdateCommand="UPDATE emod.[QuickMod_Losses] SET [PolicyID] = @PolicyID, [ClaimNo] = @ClaimNo, [IncurredIndemnityAMT] = @IncurredIndemnityAMT, [IncurredMedicalAmt] = @IncurredMedicalAmt, [PaidIndemnityAmt] = @PaidIndemnityAmt, [PaidMedicalAmt] = @PaidMedicalAmt WHERE [LossID] = @original_LossID AND [PolicyID] = @original_PolicyID AND [ClaimNo] = @original_ClaimNo AND [IncurredIndemnityAMT] = @original_IncurredIndemnityAMT AND [IncurredMedicalAmt] = @original_IncurredMedicalAmt AND (([PaidIndemnityAmt] = @original_PaidIndemnityAmt) OR ([PaidIndemnityAmt] IS NULL AND @original_PaidIndemnityAmt IS NULL)) AND (([PaidMedicalAmt] = @original_PaidMedicalAmt) OR ([PaidMedicalAmt] IS NULL AND @original_PaidMedicalAmt IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_LossID" Type="Int64" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="PolicyID" Type="Int64" />
                <asp:Parameter Name="ClaimNo" Type="String" />
                <asp:Parameter Name="IncurredIndemnityAMT" Type="Int32" />
                <asp:Parameter Name="InjuryType" Type="String" />
                <asp:CookieParameter CookieName="CPolicyID" Name="CPolicyID" Type="Int64" />
            </InsertParameters>
            <SelectParameters>
                <asp:CookieParameter CookieName="CPolicyID" Name="PolicyID" Type="Int64" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="PolicyID" Type="Int64" />
                <asp:Parameter Name="ClaimNo" Type="String" />
                <asp:Parameter Name="IncurredIndemnityAMT" Type="Int32" />
                <asp:Parameter Name="IncurredMedicalAmt" Type="Int32" />
                <asp:Parameter Name="PaidIndemnityAmt" Type="Int32" />
                <asp:Parameter Name="PaidMedicalAmt" Type="Int32" />
                <asp:Parameter Name="original_LossID" Type="Int64" />
                <asp:Parameter Name="original_PolicyID" Type="Int64" />
                <asp:Parameter Name="original_ClaimNo" Type="String" />
                <asp:Parameter Name="original_IncurredIndemnityAMT" Type="Int32" />
                <asp:Parameter Name="original_IncurredMedicalAmt" Type="Int32" />
                <asp:Parameter Name="original_PaidIndemnityAmt" Type="Int32" />
                <asp:Parameter Name="original_PaidMedicalAmt" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
