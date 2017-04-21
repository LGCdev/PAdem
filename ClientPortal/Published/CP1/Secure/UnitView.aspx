<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="UnitView.aspx.vb" Inherits="ClientPortal.UnitView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 112%;
        }
        .auto-style4 {
            width: 106%;
        }
        .auto-style5 {
            width: 283px;
        }
        .auto-style8 {
            font-size: medium;
        }
        .auto-style11 {
            width: 205px;
        }
        .auto-style12 {
            width: 128px;
        }
        .auto-style13 {
            width: 226px;
        }
        .auto-style14 {
            width: 105px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label3" runat="server" style="font-weight: 700; text-decoration: underline; font-size: xx-large" Text="Label"></asp:Label>
    <br />
    <a href="PolicyView.aspx">View Policy</a><asp:FormView ID="FormView1" runat="server" DataSourceID="HeaderFormDatasource" DataKeyNames="CarrierCode,PolicyNumber,StateCode,PED,DateStamp,ClientNo,CarrierCode1">
        <EditItemTemplate>
            LHeaderID:
            <asp:TextBox ID="LHeaderIDTextBox" runat="server" Text='<%# Bind("LHeaderID") %>' />
            <br />
            CarrierCode:
            <asp:Label ID="CarrierCodeLabel1" runat="server" Text='<%# Eval("CarrierCode") %>' />
            <br />
            PolicyNumber:
            <asp:Label ID="PolicyNumberLabel1" runat="server" Text='<%# Eval("PolicyNumber") %>' />
            <br />
            StateCode:
            <asp:Label ID="StateCodeLabel1" runat="server" Text='<%# Eval("StateCode") %>' />
            <br />
            PED:
            <asp:Label ID="PEDLabel1" runat="server" Text='<%# Eval("PED") %>' />
            <br />
            PEXD:
            <asp:TextBox ID="PEXDTextBox" runat="server" Text='<%# Bind("PEXD") %>' />
            <br />
            InsuredName:
            <asp:TextBox ID="InsuredNameTextBox" runat="server" Text='<%# Bind("InsuredName") %>' />
            <br />
            InsuredAddress:
            <asp:TextBox ID="InsuredAddressTextBox" runat="server" Text='<%# Bind("InsuredAddress") %>' />
            <br />
            RiskID:
            <asp:TextBox ID="RiskIDTextBox" runat="server" Text='<%# Bind("RiskID") %>' />
            <br />
            AdminNo:
            <asp:TextBox ID="AdminNoTextBox" runat="server" Text='<%# Bind("AdminNo") %>' />
            <br />
            EmpLease:
            <asp:TextBox ID="EmpLeaseTextBox" runat="server" Text='<%# Bind("EmpLease") %>' />
            <br />
            BusSegID:
            <asp:TextBox ID="BusSegIDTextBox" runat="server" Text='<%# Bind("BusSegID") %>' />
            <br />
            TPEFEIN:
            <asp:TextBox ID="TPEFEINTextBox" runat="server" Text='<%# Bind("TPEFEIN") %>' />
            <br />
            StateEffectiveDate:
            <asp:TextBox ID="StateEffectiveDateTextBox" runat="server" Text='<%# Bind("StateEffectiveDate") %>' />
            <br />
            FEIN:
            <asp:TextBox ID="FEINTextBox" runat="server" Text='<%# Bind("FEIN") %>' />
            <br />
            ThreeYearInd:
            <asp:TextBox ID="ThreeYearIndTextBox" runat="server" Text='<%# Bind("ThreeYearInd") %>' />
            <br />
            MultiStateInd:
            <asp:TextBox ID="MultiStateIndTextBox" runat="server" Text='<%# Bind("MultiStateInd") %>' />
            <br />
            InterstateInd:
            <asp:TextBox ID="InterstateIndTextBox" runat="server" Text='<%# Bind("InterstateInd") %>' />
            <br />
            EstimatedInd:
            <asp:TextBox ID="EstimatedIndTextBox" runat="server" Text='<%# Bind("EstimatedInd") %>' />
            <br />
            RetrospectiveInd:
            <asp:TextBox ID="RetrospectiveIndTextBox" runat="server" Text='<%# Bind("RetrospectiveInd") %>' />
            <br />
            CancelledMid:
            <asp:TextBox ID="CancelledMidTextBox" runat="server" Text='<%# Bind("CancelledMid") %>' />
            <br />
            MCOInd:
            <asp:TextBox ID="MCOIndTextBox" runat="server" Text='<%# Bind("MCOInd") %>' />
            <br />
            CHCNInd:
            <asp:TextBox ID="CHCNIndTextBox" runat="server" Text='<%# Bind("CHCNInd") %>' />
            <br />
            CoverageType:
            <asp:TextBox ID="CoverageTypeTextBox" runat="server" Text='<%# Bind("CoverageType") %>' />
            <br />
            PlanType:
            <asp:TextBox ID="PlanTypeTextBox" runat="server" Text='<%# Bind("PlanType") %>' />
            <br />
            NonStandardID:
            <asp:TextBox ID="NonStandardIDTextBox" runat="server" Text='<%# Bind("NonStandardID") %>' />
            <br />
            LossSubjDed:
            <asp:TextBox ID="LossSubjDedTextBox" runat="server" Text='<%# Bind("LossSubjDed") %>' />
            <br />
            DedBasis:
            <asp:TextBox ID="DedBasisTextBox" runat="server" Text='<%# Bind("DedBasis") %>' />
            <br />
            DedPerc:
            <asp:TextBox ID="DedPercTextBox" runat="server" Text='<%# Bind("DedPerc") %>' />
            <br />
            DedAmtPer:
            <asp:TextBox ID="DedAmtPerTextBox" runat="server" Text='<%# Bind("DedAmtPer") %>' />
            <br />
            DedAmtAgg:
            <asp:TextBox ID="DedAmtAggTextBox" runat="server" Text='<%# Bind("DedAmtAgg") %>' />
            <br />
            DataProvider:
            <asp:TextBox ID="DataProviderTextBox" runat="server" Text='<%# Bind("DataProvider") %>' />
            <br />
            DateImported:
            <asp:TextBox ID="DateImportedTextBox" runat="server" Text='<%# Bind("DateImported") %>' />
            <br />
            ImportingUser:
            <asp:TextBox ID="ImportingUserTextBox" runat="server" Text='<%# Bind("ImportingUser") %>' />
            <br />
            ValuationDate:
            <asp:TextBox ID="ValuationDateTextBox" runat="server" Text='<%# Bind("ValuationDate") %>' />
            <br />
            DateStamp:
            <asp:Label ID="DateStampLabel1" runat="server" Text='<%# Eval("DateStamp") %>' />
            <br />
            DeleteInd:
            <asp:TextBox ID="DeleteIndTextBox" runat="server" Text='<%# Bind("DeleteInd") %>' />
            <br />
            ClientNo:
            <asp:Label ID="ClientNoLabel1" runat="server" Text='<%# Eval("ClientNo") %>' />
            <br />
            CarrierCode1:
            <asp:Label ID="CarrierCode1Label1" runat="server" Text='<%# Eval("CarrierCode1") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            LHeaderID:
            <asp:TextBox ID="LHeaderIDTextBox" runat="server" Text='<%# Bind("LHeaderID") %>' />
            <br />
            CarrierCode:
            <asp:TextBox ID="CarrierCodeTextBox" runat="server" Text='<%# Bind("CarrierCode") %>' />
            <br />
            PolicyNumber:
            <asp:TextBox ID="PolicyNumberTextBox" runat="server" Text='<%# Bind("PolicyNumber") %>' />
            <br />
            StateCode:
            <asp:TextBox ID="StateCodeTextBox" runat="server" Text='<%# Bind("StateCode") %>' />
            <br />
            PED:
            <asp:TextBox ID="PEDTextBox" runat="server" Text='<%# Bind("PED") %>' />
            <br />
            PEXD:
            <asp:TextBox ID="PEXDTextBox" runat="server" Text='<%# Bind("PEXD") %>' />
            <br />
            InsuredName:
            <asp:TextBox ID="InsuredNameTextBox" runat="server" Text='<%# Bind("InsuredName") %>' />
            <br />
            InsuredAddress:
            <asp:TextBox ID="InsuredAddressTextBox" runat="server" Text='<%# Bind("InsuredAddress") %>' />
            <br />
            RiskID:
            <asp:TextBox ID="RiskIDTextBox" runat="server" Text='<%# Bind("RiskID") %>' />
            <br />
            AdminNo:
            <asp:TextBox ID="AdminNoTextBox" runat="server" Text='<%# Bind("AdminNo") %>' />
            <br />
            EmpLease:
            <asp:TextBox ID="EmpLeaseTextBox" runat="server" Text='<%# Bind("EmpLease") %>' />
            <br />
            BusSegID:
            <asp:TextBox ID="BusSegIDTextBox" runat="server" Text='<%# Bind("BusSegID") %>' />
            <br />
            TPEFEIN:
            <asp:TextBox ID="TPEFEINTextBox" runat="server" Text='<%# Bind("TPEFEIN") %>' />
            <br />
            StateEffectiveDate:
            <asp:TextBox ID="StateEffectiveDateTextBox" runat="server" Text='<%# Bind("StateEffectiveDate") %>' />
            <br />
            FEIN:
            <asp:TextBox ID="FEINTextBox" runat="server" Text='<%# Bind("FEIN") %>' />
            <br />
            ThreeYearInd:
            <asp:TextBox ID="ThreeYearIndTextBox" runat="server" Text='<%# Bind("ThreeYearInd") %>' />
            <br />
            MultiStateInd:
            <asp:TextBox ID="MultiStateIndTextBox" runat="server" Text='<%# Bind("MultiStateInd") %>' />
            <br />
            InterstateInd:
            <asp:TextBox ID="InterstateIndTextBox" runat="server" Text='<%# Bind("InterstateInd") %>' />
            <br />
            EstimatedInd:
            <asp:TextBox ID="EstimatedIndTextBox" runat="server" Text='<%# Bind("EstimatedInd") %>' />
            <br />
            RetrospectiveInd:
            <asp:TextBox ID="RetrospectiveIndTextBox" runat="server" Text='<%# Bind("RetrospectiveInd") %>' />
            <br />
            CancelledMid:
            <asp:TextBox ID="CancelledMidTextBox" runat="server" Text='<%# Bind("CancelledMid") %>' />
            <br />
            MCOInd:
            <asp:TextBox ID="MCOIndTextBox" runat="server" Text='<%# Bind("MCOInd") %>' />
            <br />
            CHCNInd:
            <asp:TextBox ID="CHCNIndTextBox" runat="server" Text='<%# Bind("CHCNInd") %>' />
            <br />
            CoverageType:
            <asp:TextBox ID="CoverageTypeTextBox" runat="server" Text='<%# Bind("CoverageType") %>' />
            <br />
            PlanType:
            <asp:TextBox ID="PlanTypeTextBox" runat="server" Text='<%# Bind("PlanType") %>' />
            <br />
            NonStandardID:
            <asp:TextBox ID="NonStandardIDTextBox" runat="server" Text='<%# Bind("NonStandardID") %>' />
            <br />
            LossSubjDed:
            <asp:TextBox ID="LossSubjDedTextBox" runat="server" Text='<%# Bind("LossSubjDed") %>' />
            <br />
            DedBasis:
            <asp:TextBox ID="DedBasisTextBox" runat="server" Text='<%# Bind("DedBasis") %>' />
            <br />
            DedPerc:
            <asp:TextBox ID="DedPercTextBox" runat="server" Text='<%# Bind("DedPerc") %>' />
            <br />
            DedAmtPer:
            <asp:TextBox ID="DedAmtPerTextBox" runat="server" Text='<%# Bind("DedAmtPer") %>' />
            <br />
            DedAmtAgg:
            <asp:TextBox ID="DedAmtAggTextBox" runat="server" Text='<%# Bind("DedAmtAgg") %>' />
            <br />
            DataProvider:
            <asp:TextBox ID="DataProviderTextBox" runat="server" Text='<%# Bind("DataProvider") %>' />
            <br />
            DateImported:
            <asp:TextBox ID="DateImportedTextBox" runat="server" Text='<%# Bind("DateImported") %>' />
            <br />
            ImportingUser:
            <asp:TextBox ID="ImportingUserTextBox" runat="server" Text='<%# Bind("ImportingUser") %>' />
            <br />
            ValuationDate:
            <asp:TextBox ID="ValuationDateTextBox" runat="server" Text='<%# Bind("ValuationDate") %>' />
            <br />
            DateStamp:
            <asp:TextBox ID="DateStampTextBox" runat="server" Text='<%# Bind("DateStamp") %>' />
            <br />
            DeleteInd:
            <asp:TextBox ID="DeleteIndTextBox" runat="server" Text='<%# Bind("DeleteInd") %>' />
            <br />
            ClientNo:
            <asp:TextBox ID="ClientNoTextBox" runat="server" Text='<%# Bind("ClientNo") %>' />
            <br />
            CarrierCode1:
            <asp:TextBox ID="CarrierCode1TextBox" runat="server" Text='<%# Bind("CarrierCode1") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            <br />
            <br />
            <br />
            <table class="auto-style1" style="width: 100%">
                <tr>
                    <td class="auto-style5" style="vertical-align: top">
                        <table class="auto-style4">
                            <tr>
                                <td colspan="2" style="vertical-align: top; text-align: center" class="auto-style8"><strong>Insured Information</strong></td>
                            </tr>
                            <tr>
                                <td class="auto-style12">Name:</td>
                                <td class="auto-style11">
                                    <asp:Label ID="InsuredNameLabel" runat="server" Text='<%# Bind("InsuredName") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style12">Address:</td>
                                <td class="auto-style11">
                                    <asp:Label ID="InsuredAddressLabel" runat="server" Text='<%# Bind("InsuredAddress") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style12">FEIN:</td>
                                <td class="auto-style11">
                                    <asp:Label ID="FEINLabel" runat="server" Text='<%# Bind("FEIN") %>' />
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td class="auto-style5" style="vertical-align: top">
                        <table class="auto-style1">
                            <tr>
                                <td colspan="2" class="auto-style8" style="text-align: center"><strong>Policy Information</strong></td>
                            </tr>
                            <tr>
                                <td class="auto-style14" style="width: 25%">Carrier:</td>
                                <td>
                                    <asp:Label ID="CarrierCodeLabel0" runat="server" Text='<%# Eval("CarrierCode") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style14">Number:</td>
                                <td>
                                    <asp:Label ID="PolicyNumberLabel0" runat="server" Text='<%# Eval("PolicyNumber") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style14">State:</td>
                                <td>
                                    <asp:Label ID="StateCodeLabel0" runat="server" Text='<%# Eval("StateCode") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style14">Effective:</td>
                                <td>
                                    <asp:Label ID="PEDLabel0" runat="server" Text='<%# Eval("PED", "{0:MMM dd, yyyy}")%>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style14">Expiration:</td>
                                <td>
                                    <asp:Label ID="PEXDLabel0" runat="server" Text='<%# Bind("PEXD", "{0:MMM dd, yyyy}")%>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style14">&nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                    <td style="vertical-align: top">
                        <table class="auto-style1">
                            <tr>
                                <td colspan="2" class="auto-style8" style="text-align: center"><strong>Conditions</strong></td>
                            </tr>
                            <tr>
                                <td class="auto-style13">Three Year:</td>
                                <td>
                                    <asp:Label ID="ThreeYearIndLabel" runat="server" Text='<%# Bind("ThreeYearInd") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style13">Multi State:</td>
                                <td>
                                    <asp:Label ID="MultiStateIndLabel" runat="server" Text='<%# Bind("MultiStateInd") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style13">InterState</td>
                                <td>
                                    <asp:Label ID="InterstateIndLabel" runat="server" Text='<%# Bind("InterstateInd") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style13">Estimated:</td>
                                <td>
                                    <asp:Label ID="EstimatedIndLabel" runat="server" Text='<%# Bind("EstimatedInd") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style13">Retrospective:</td>
                                <td>
                                    <asp:Label ID="RetrospectiveIndLabel" runat="server" Text='<%# Bind("RetrospectiveInd") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style13">Cancelled:</td>
                                <td>
                                    <asp:Label ID="CancelledMidLabel" runat="server" Text='<%# Bind("CancelledMid") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style13">Subject to Deductible:</td>
                                <td>
                                    <asp:Label ID="LossSubjDedLabel" runat="server" Text='<%# Bind("LossSubjDed") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style13">Deductible Basis:</td>
                                <td>
                                    <asp:Label ID="DedBasisLabel" runat="server" Text='<%# Bind("DedBasis") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style13">Deductibe %:</td>
                                <td>
                                    <asp:Label ID="DedPercLabel" runat="server" Text='<%# Bind("DedPerc") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style13">Per Accident:</td>
                                <td>
                                    <asp:Label ID="DedAmtPerLabel" runat="server" Text='<%# Bind("DedAmtPer") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style13">Aggregate:</td>
                                <td>
                                    <asp:Label ID="DedAmtAggLabel" runat="server" Text='<%# Bind("DedAmtAgg") %>' />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="HeaderFormDatasource" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="Portal.Page_UnitViewHeaderProc" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:CookieParameter CookieName="Ccarrier" Name="Ccarrier" Type="String" />
            <asp:CookieParameter CookieName="Cpolicyno" Name="Cpolicyno" Type="String" />
            <asp:CookieParameter CookieName="Cstatecode" Name="Cstatecode" Type="String" />
            <asp:CookieParameter CookieName="CPED" Name="CPED" Type="String" />
            <asp:CookieParameter CookieName="CClientNumber" Name="Cclientno" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Button ID="DownloadXLBT" runat="server" Text="Header Download" />
    <br />
    <asp:Label ID="Label2" runat="server" style="font-weight: 700; text-decoration: underline; font-size: x-large" Text="Payroll"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="ExposureGridDatasource" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="CarrierCode,PolicyNumber,StateCode,PED,ClassCode,ExpEffDate,RateEffDate,Split,DateStamp,ClientNo,CarrierCode1" ForeColor="Black" GridLines="Vertical" PageSize="5" Width="100%">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="ClassCode" HeaderText="Class Code" ReadOnly="True" SortExpression="ClassCode" />
            <asp:BoundField DataField="ExperienceMod" HeaderText="Mod" SortExpression="ExperienceMod" />
            <asp:BoundField DataField="ExposureAmt" HeaderText="Payroll" SortExpression="ExposureAmt" />
            <asp:BoundField DataField="ManualRate" HeaderText="Charged Rate" SortExpression="ManualRate" />
            <asp:BoundField DataField="PremiumAmt" HeaderText="Premium" SortExpression="PremiumAmt" />
            <asp:BoundField DataField="Split" HeaderText="Split Period" ReadOnly="True" SortExpression="Split" />
            <asp:BoundField DataField="ExposureAct" HeaderText="Exposure Act" SortExpression="ExposureAct" />
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
    <asp:SqlDataSource ID="ExposureGridDatasource" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="Portal.Page_UnitViewExposureProc" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:CookieParameter CookieName="Ccarrier" Name="Ccarrier" Type="String" />
            <asp:CookieParameter CookieName="Cpolicyno" Name="Cpolicyno" Type="String" />
            <asp:CookieParameter CookieName="Cstatecode" Name="Cstatecode" Type="String" />
            <asp:CookieParameter CookieName="CPED" Name="CPED" Type="String" />
            <asp:CookieParameter CookieName="Cclientnumber" Name="Cclientno" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Button ID="DownloadExpXL" runat="server" Text="Exposue Download" />
    <br />
    <asp:Label ID="Label1" runat="server" style="font-weight: 700; text-decoration: underline; font-size: x-large" Text="Loss"></asp:Label>
    <asp:GridView ID="GridView2" runat="server" DataSourceID="LossGridDatasource" AutoGenerateColumns="False" DataKeyNames="CarrierCode,PolicyNumber,StateCode,PED,AccidentDte,ClaimNumber,DateStamp,ClientNo,CarrierCode1" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="100%">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="ClaimNumber" HeaderText="Claim Number" ReadOnly="True" SortExpression="ClaimNumber" />
            <asp:BoundField DataField="AccidentDte" HeaderText="Accident Date" ReadOnly="True" SortExpression="AccidentDte" DataFormatString="{0:d}" />
            <asp:BoundField DataField="ClaimStatus" HeaderText="Status" SortExpression="ClaimStatus" />
            <asp:BoundField DataField="ClassCode" HeaderText="Class" SortExpression="ClassCode" />
            <asp:BoundField DataField="InjuryTypeCode" HeaderText="Injury Type" SortExpression="InjuryTypeCode" />
            <asp:BoundField DataField="IncurredIndemnityAmt" HeaderText="Inc Indemnity" SortExpression="IncurredIndemnityAmt" />
            <asp:BoundField DataField="PaidIndemnityAmt" HeaderText="Paid Indemnity" SortExpression="PaidIndemnityAmt" />
            <asp:BoundField DataField="IncurredMedicalAmt" HeaderText="Inc Medical" SortExpression="IncurredMedicalAmt" />
            <asp:BoundField DataField="PaidMedicalAmt" HeaderText="Paid Medical" SortExpression="PaidMedicalAmt" />
            <asp:BoundField DataField="IncurredALAE" HeaderText="Inc ALAE" SortExpression="IncurredALAE" />
            <asp:BoundField DataField="PaidALAEAmt" HeaderText="Paid ALAE" SortExpression="PaidALAEAmt" />
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
    <asp:SqlDataSource ID="LossGridDatasource" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="Portal.Page_UnitViewLossProc" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:CookieParameter CookieName="Ccarrier" Name="Ccarrier" Type="String" />
            <asp:CookieParameter CookieName="Cpolicyno" Name="Cpolicyno" Type="String" />
            <asp:CookieParameter CookieName="Cstatecode" Name="Cstatecode" Type="String" />
            <asp:CookieParameter CookieName="CPED" Name="CPED" Type="String" />
            <asp:CookieParameter CookieName="Cclientnumber" Name="Cclientno" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Button ID="DownloadLossXL" runat="server" Text="Loss Download" />
    <br />
</asp:Content>
