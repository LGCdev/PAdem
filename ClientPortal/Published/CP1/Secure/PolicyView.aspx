<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="PolicyView.aspx.vb" Inherits="ClientPortal.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 153px;
        }
        .auto-style3 {
            width: 153px;
            font-weight: bold;
            font-size: medium;
        }
        .auto-style4 {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="PolicyFormDatasource" runat="server" ConnectionString="<%$ ConnectionStrings:ReedusConnection %>" SelectCommand="Portal.Page_UnitViewPolicyProc" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:CookieParameter CookieName="Ccarrier" Name="Ccarrier" Type="String" />
            <asp:CookieParameter CookieName="Cpolicyno" Name="Cpolicyno" Type="String" />
            <asp:CookieParameter CookieName="CPED" Name="CPED" Type="String" />
            <asp:CookieParameter CookieName="CClientNumber" Name="Cclientno" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" DataSourceID="PolicyFormDatasource" EmptyDataText="It appears that no policy data has been submitted for this unit." Width="100%">
        <EditItemTemplate>
            CarrierCode:
            <asp:TextBox ID="CarrierCodeTextBox" runat="server" Text='<%# Bind("CarrierCode") %>' />
            <br />
            PolicyNumber:
            <asp:TextBox ID="PolicyNumberTextBox" runat="server" Text='<%# Bind("PolicyNumber") %>' />
            <br />
            PolicyEffectiveDate:
            <asp:TextBox ID="PolicyEffectiveDateTextBox" runat="server" Text='<%# Bind("PolicyEffectiveDate") %>' />
            <br />
            TransactionIssueDate:
            <asp:TextBox ID="TransactionIssueDateTextBox" runat="server" Text='<%# Bind("TransactionIssueDate") %>' />
            <br />
            Transaction:
            <asp:TextBox ID="TransactionTextBox" runat="server" Text='<%# Bind("Transaction") %>' />
            <br />
            RecordType:
            <asp:TextBox ID="RecordTypeTextBox" runat="server" Text='<%# Bind("RecordType") %>' />
            <br />
            ExperienceRatingCode:
            <asp:TextBox ID="ExperienceRatingCodeTextBox" runat="server" Text='<%# Bind("ExperienceRatingCode") %>' />
            <br />
            InterstateRiskIDNumber:
            <asp:TextBox ID="InterstateRiskIDNumberTextBox" runat="server" Text='<%# Bind("InterstateRiskIDNumber") %>' />
            <br />
            PolicyExperationDate:
            <asp:TextBox ID="PolicyExperationDateTextBox" runat="server" Text='<%# Bind("PolicyExperationDate") %>' />
            <br />
            ThirdPartyEntity:
            <asp:TextBox ID="ThirdPartyEntityTextBox" runat="server" Text='<%# Bind("ThirdPartyEntity") %>' />
            <br />
            TypeofCoverageIDCode:
            <asp:TextBox ID="TypeofCoverageIDCodeTextBox" runat="server" Text='<%# Bind("TypeofCoverageIDCode") %>' />
            <br />
            EmployeeLeasingPolicyTypeCode:
            <asp:TextBox ID="EmployeeLeasingPolicyTypeCodeTextBox" runat="server" Text='<%# Bind("EmployeeLeasingPolicyTypeCode") %>' />
            <br />
            PolicyTermCode:
            <asp:TextBox ID="PolicyTermCodeTextBox" runat="server" Text='<%# Bind("PolicyTermCode") %>' />
            <br />
            PriorPolicyNumberIdentifier:
            <asp:TextBox ID="PriorPolicyNumberIdentifierTextBox" runat="server" Text='<%# Bind("PriorPolicyNumberIdentifier") %>' />
            <br />
            LegalNatureofInsuredCode:
            <asp:TextBox ID="LegalNatureofInsuredCodeTextBox" runat="server" Text='<%# Bind("LegalNatureofInsuredCode") %>' />
            <br />
            TypeofPlanIDCode:
            <asp:TextBox ID="TypeofPlanIDCodeTextBox" runat="server" Text='<%# Bind("TypeofPlanIDCode") %>' />
            <br />
            WrapUpOwnerControoledInsurance:
            <asp:TextBox ID="WrapUpOwnerControoledInsuranceTextBox" runat="server" Text='<%# Bind("WrapUpOwnerControoledInsurance") %>' />
            <br />
            BusinessSegmentIdentifier:
            <asp:TextBox ID="BusinessSegmentIdentifierTextBox" runat="server" Text='<%# Bind("BusinessSegmentIdentifier") %>' />
            <br />
            PolicyMinimumPremiumAmount:
            <asp:TextBox ID="PolicyMinimumPremiumAmountTextBox" runat="server" Text='<%# Bind("PolicyMinimumPremiumAmount") %>' />
            <br />
            PoliyMinimumPremiumStateCode:
            <asp:TextBox ID="PoliyMinimumPremiumStateCodeTextBox" runat="server" Text='<%# Bind("PoliyMinimumPremiumStateCode") %>' />
            <br />
            PolicyEstimatedStandardPremiumTotal:
            <asp:TextBox ID="PolicyEstimatedStandardPremiumTotalTextBox" runat="server" Text='<%# Bind("PolicyEstimatedStandardPremiumTotal") %>' />
            <br />
            PolicyDepositPremiumAmount:
            <asp:TextBox ID="PolicyDepositPremiumAmountTextBox" runat="server" Text='<%# Bind("PolicyDepositPremiumAmount") %>' />
            <br />
            AuditFrequencyCode:
            <asp:TextBox ID="AuditFrequencyCodeTextBox" runat="server" Text='<%# Bind("AuditFrequencyCode") %>' />
            <br />
            BillingFrequencyCode:
            <asp:TextBox ID="BillingFrequencyCodeTextBox" runat="server" Text='<%# Bind("BillingFrequencyCode") %>' />
            <br />
            RetrospectieRatingCode:
            <asp:TextBox ID="RetrospectieRatingCodeTextBox" runat="server" Text='<%# Bind("RetrospectieRatingCode") %>' />
            <br />
            EmployerLiabilityLimitAmountBodilyInjuryByAccident:
            <asp:TextBox ID="EmployerLiabilityLimitAmountBodilyInjuryByAccidentTextBox" runat="server" Text='<%# Bind("EmployerLiabilityLimitAmountBodilyInjuryByAccident") %>' />
            <br />
            EmployerLiabilityLimitAmountBodilyInjuryByDisease:
            <asp:TextBox ID="EmployerLiabilityLimitAmountBodilyInjuryByDiseaseTextBox" runat="server" Text='<%# Bind("EmployerLiabilityLimitAmountBodilyInjuryByDisease") %>' />
            <br />
            NameofProducer:
            <asp:TextBox ID="NameofProducerTextBox" runat="server" Text='<%# Bind("NameofProducer") %>' />
            <br />
            AssignedRiskBinderNumber:
            <asp:TextBox ID="AssignedRiskBinderNumberTextBox" runat="server" Text='<%# Bind("AssignedRiskBinderNumber") %>' />
            <br />
            GroupCoverageStatusCode:
            <asp:TextBox ID="GroupCoverageStatusCodeTextBox" runat="server" Text='<%# Bind("GroupCoverageStatusCode") %>' />
            <br />
            OriginalCarrierCode:
            <asp:TextBox ID="OriginalCarrierCodeTextBox" runat="server" Text='<%# Bind("OriginalCarrierCode") %>' />
            <br />
            OriginalPolicyNumberIdentifier:
            <asp:TextBox ID="OriginalPolicyNumberIdentifierTextBox" runat="server" Text='<%# Bind("OriginalPolicyNumberIdentifier") %>' />
            <br />
            OriginalPolicyEffectiveDate:
            <asp:TextBox ID="OriginalPolicyEffectiveDateTextBox" runat="server" Text='<%# Bind("OriginalPolicyEffectiveDate") %>' />
            <br />
            TextForOtherLegalNatureofInsured:
            <asp:TextBox ID="TextForOtherLegalNatureofInsuredTextBox" runat="server" Text='<%# Bind("TextForOtherLegalNatureofInsured") %>' />
            <br />
            AssignmentDate:
            <asp:TextBox ID="AssignmentDateTextBox" runat="server" Text='<%# Bind("AssignmentDate") %>' />
            <br />
            AssignedRiskBinderNumberLastElevenPositions:
            <asp:TextBox ID="AssignedRiskBinderNumberLastElevenPositionsTextBox" runat="server" Text='<%# Bind("AssignedRiskBinderNumberLastElevenPositions") %>' />
            <br />
            ReservedForFutureUse:
            <asp:TextBox ID="ReservedForFutureUseTextBox" runat="server" Text='<%# Bind("ReservedForFutureUse") %>' />
            <br />
            PolicyChangeEffectiveDate:
            <asp:TextBox ID="PolicyChangeEffectiveDateTextBox" runat="server" Text='<%# Bind("PolicyChangeEffectiveDate") %>' />
            <br />
            PolicyChangeExpirationDate:
            <asp:TextBox ID="PolicyChangeExpirationDateTextBox" runat="server" Text='<%# Bind("PolicyChangeExpirationDate") %>' />
            <br />
            DataProvider:
            <asp:TextBox ID="DataProviderTextBox" runat="server" Text='<%# Bind("DataProvider") %>' />
            <br />
            DateImported:
            <asp:TextBox ID="DateImportedTextBox" runat="server" Text='<%# Bind("DateImported") %>' />
            <br />
            DateExported:
            <asp:TextBox ID="DateExportedTextBox" runat="server" Text='<%# Bind("DateExported") %>' />
            <br />
            ImportingUser:
            <asp:TextBox ID="ImportingUserTextBox" runat="server" Text='<%# Bind("ImportingUser") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            CarrierCode:
            <asp:TextBox ID="CarrierCodeTextBox" runat="server" Text='<%# Bind("CarrierCode") %>' />
            <br />
            PolicyNumber:
            <asp:TextBox ID="PolicyNumberTextBox" runat="server" Text='<%# Bind("PolicyNumber") %>' />
            <br />
            PolicyEffectiveDate:
            <asp:TextBox ID="PolicyEffectiveDateTextBox" runat="server" Text='<%# Bind("PolicyEffectiveDate") %>' />
            <br />
            TransactionIssueDate:
            <asp:TextBox ID="TransactionIssueDateTextBox" runat="server" Text='<%# Bind("TransactionIssueDate") %>' />
            <br />
            Transaction:
            <asp:TextBox ID="TransactionTextBox" runat="server" Text='<%# Bind("Transaction") %>' />
            <br />
            RecordType:
            <asp:TextBox ID="RecordTypeTextBox" runat="server" Text='<%# Bind("RecordType") %>' />
            <br />
            ExperienceRatingCode:
            <asp:TextBox ID="ExperienceRatingCodeTextBox" runat="server" Text='<%# Bind("ExperienceRatingCode") %>' />
            <br />
            InterstateRiskIDNumber:
            <asp:TextBox ID="InterstateRiskIDNumberTextBox" runat="server" Text='<%# Bind("InterstateRiskIDNumber") %>' />
            <br />
            PolicyExperationDate:
            <asp:TextBox ID="PolicyExperationDateTextBox" runat="server" Text='<%# Bind("PolicyExperationDate") %>' />
            <br />
            ThirdPartyEntity:
            <asp:TextBox ID="ThirdPartyEntityTextBox" runat="server" Text='<%# Bind("ThirdPartyEntity") %>' />
            <br />
            TypeofCoverageIDCode:
            <asp:TextBox ID="TypeofCoverageIDCodeTextBox" runat="server" Text='<%# Bind("TypeofCoverageIDCode") %>' />
            <br />
            EmployeeLeasingPolicyTypeCode:
            <asp:TextBox ID="EmployeeLeasingPolicyTypeCodeTextBox" runat="server" Text='<%# Bind("EmployeeLeasingPolicyTypeCode") %>' />
            <br />
            PolicyTermCode:
            <asp:TextBox ID="PolicyTermCodeTextBox" runat="server" Text='<%# Bind("PolicyTermCode") %>' />
            <br />
            PriorPolicyNumberIdentifier:
            <asp:TextBox ID="PriorPolicyNumberIdentifierTextBox" runat="server" Text='<%# Bind("PriorPolicyNumberIdentifier") %>' />
            <br />
            LegalNatureofInsuredCode:
            <asp:TextBox ID="LegalNatureofInsuredCodeTextBox" runat="server" Text='<%# Bind("LegalNatureofInsuredCode") %>' />
            <br />
            TypeofPlanIDCode:
            <asp:TextBox ID="TypeofPlanIDCodeTextBox" runat="server" Text='<%# Bind("TypeofPlanIDCode") %>' />
            <br />
            WrapUpOwnerControoledInsurance:
            <asp:TextBox ID="WrapUpOwnerControoledInsuranceTextBox" runat="server" Text='<%# Bind("WrapUpOwnerControoledInsurance") %>' />
            <br />
            BusinessSegmentIdentifier:
            <asp:TextBox ID="BusinessSegmentIdentifierTextBox" runat="server" Text='<%# Bind("BusinessSegmentIdentifier") %>' />
            <br />
            PolicyMinimumPremiumAmount:
            <asp:TextBox ID="PolicyMinimumPremiumAmountTextBox" runat="server" Text='<%# Bind("PolicyMinimumPremiumAmount") %>' />
            <br />
            PoliyMinimumPremiumStateCode:
            <asp:TextBox ID="PoliyMinimumPremiumStateCodeTextBox" runat="server" Text='<%# Bind("PoliyMinimumPremiumStateCode") %>' />
            <br />
            PolicyEstimatedStandardPremiumTotal:
            <asp:TextBox ID="PolicyEstimatedStandardPremiumTotalTextBox" runat="server" Text='<%# Bind("PolicyEstimatedStandardPremiumTotal") %>' />
            <br />
            PolicyDepositPremiumAmount:
            <asp:TextBox ID="PolicyDepositPremiumAmountTextBox" runat="server" Text='<%# Bind("PolicyDepositPremiumAmount") %>' />
            <br />
            AuditFrequencyCode:
            <asp:TextBox ID="AuditFrequencyCodeTextBox" runat="server" Text='<%# Bind("AuditFrequencyCode") %>' />
            <br />
            BillingFrequencyCode:
            <asp:TextBox ID="BillingFrequencyCodeTextBox" runat="server" Text='<%# Bind("BillingFrequencyCode") %>' />
            <br />
            RetrospectieRatingCode:
            <asp:TextBox ID="RetrospectieRatingCodeTextBox" runat="server" Text='<%# Bind("RetrospectieRatingCode") %>' />
            <br />
            EmployerLiabilityLimitAmountBodilyInjuryByAccident:
            <asp:TextBox ID="EmployerLiabilityLimitAmountBodilyInjuryByAccidentTextBox" runat="server" Text='<%# Bind("EmployerLiabilityLimitAmountBodilyInjuryByAccident") %>' />
            <br />
            EmployerLiabilityLimitAmountBodilyInjuryByDisease:
            <asp:TextBox ID="EmployerLiabilityLimitAmountBodilyInjuryByDiseaseTextBox" runat="server" Text='<%# Bind("EmployerLiabilityLimitAmountBodilyInjuryByDisease") %>' />
            <br />
            NameofProducer:
            <asp:TextBox ID="NameofProducerTextBox" runat="server" Text='<%# Bind("NameofProducer") %>' />
            <br />
            AssignedRiskBinderNumber:
            <asp:TextBox ID="AssignedRiskBinderNumberTextBox" runat="server" Text='<%# Bind("AssignedRiskBinderNumber") %>' />
            <br />
            GroupCoverageStatusCode:
            <asp:TextBox ID="GroupCoverageStatusCodeTextBox" runat="server" Text='<%# Bind("GroupCoverageStatusCode") %>' />
            <br />
            OriginalCarrierCode:
            <asp:TextBox ID="OriginalCarrierCodeTextBox" runat="server" Text='<%# Bind("OriginalCarrierCode") %>' />
            <br />
            OriginalPolicyNumberIdentifier:
            <asp:TextBox ID="OriginalPolicyNumberIdentifierTextBox" runat="server" Text='<%# Bind("OriginalPolicyNumberIdentifier") %>' />
            <br />
            OriginalPolicyEffectiveDate:
            <asp:TextBox ID="OriginalPolicyEffectiveDateTextBox" runat="server" Text='<%# Bind("OriginalPolicyEffectiveDate") %>' />
            <br />
            TextForOtherLegalNatureofInsured:
            <asp:TextBox ID="TextForOtherLegalNatureofInsuredTextBox" runat="server" Text='<%# Bind("TextForOtherLegalNatureofInsured") %>' />
            <br />
            AssignmentDate:
            <asp:TextBox ID="AssignmentDateTextBox" runat="server" Text='<%# Bind("AssignmentDate") %>' />
            <br />
            AssignedRiskBinderNumberLastElevenPositions:
            <asp:TextBox ID="AssignedRiskBinderNumberLastElevenPositionsTextBox" runat="server" Text='<%# Bind("AssignedRiskBinderNumberLastElevenPositions") %>' />
            <br />
            ReservedForFutureUse:
            <asp:TextBox ID="ReservedForFutureUseTextBox" runat="server" Text='<%# Bind("ReservedForFutureUse") %>' />
            <br />
            PolicyChangeEffectiveDate:
            <asp:TextBox ID="PolicyChangeEffectiveDateTextBox" runat="server" Text='<%# Bind("PolicyChangeEffectiveDate") %>' />
            <br />
            PolicyChangeExpirationDate:
            <asp:TextBox ID="PolicyChangeExpirationDateTextBox" runat="server" Text='<%# Bind("PolicyChangeExpirationDate") %>' />
            <br />
            DataProvider:
            <asp:TextBox ID="DataProviderTextBox" runat="server" Text='<%# Bind("DataProvider") %>' />
            <br />
            DateImported:
            <asp:TextBox ID="DateImportedTextBox" runat="server" Text='<%# Bind("DateImported") %>' />
            <br />
            DateExported:
            <asp:TextBox ID="DateExportedTextBox" runat="server" Text='<%# Bind("DateExported") %>' />
            <br />
            ImportingUser:
            <asp:TextBox ID="ImportingUserTextBox" runat="server" Text='<%# Bind("ImportingUser") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">Policy Information</td>
                    <td><b></b></td>
                    <td class="auto-style4"><b>Transaction Information</b></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Carrier Code:</td>
                    <td>
                        <asp:Label ID="CarrierCodeLabel" runat="server" Text='<%# Bind("CarrierCode") %>' />
                    </td>
                    <td>Transaction Issue Date:</td>
                    <td>
                        <asp:Label ID="TransactionIssueDateLabel" runat="server" Text='<%# Bind("TransactionIssueDate", "{0:d}") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Policy Number:</td>
                    <td>
                        <asp:Label ID="PolicyNumberLabel" runat="server" Text='<%# Bind("PolicyNumber") %>' />
                    </td>
                    <td>Transaction Type:</td>
                    <td>
                        <asp:Label ID="TransactionLabel" runat="server" Text='<%# Bind("Transaction") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Effective Date:</td>
                    <td>
                        <asp:Label ID="PolicyEffectiveDateLabel" runat="server" Text='<%# Bind("PolicyEffectiveDate", "{0:d}") %>' />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Expiration Date:</td>
                    <td>
                        <asp:Label ID="PolicyExperationDateLabel" runat="server" Text='<%# Bind("PolicyExperationDate", "{0:d}") %>' />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Coverage Type:</td>
                    <td>
                        <asp:Label ID="TypeofCoverageIDCodeLabel" runat="server" Text='<%# Bind("TypeofCoverageIDCode") %>' />
                    </td>
                    <td class="auto-style4"><strong>Financial Information</strong></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Term:</td>
                    <td>
                        <asp:Label ID="PolicyTermCodeLabel" runat="server" Text='<%# Bind("PolicyTermCode") %>' />
                    </td>
                    <td>Audit Frequency:</td>
                    <td>
                        <asp:Label ID="AuditFrequencyCodeLabel" runat="server" Text='<%# Bind("AuditFrequencyCode") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Plan Type:</td>
                    <td>
                        <asp:Label ID="TypeofPlanIDCodeLabel" runat="server" Text='<%# Bind("TypeofPlanIDCode") %>' />
                    </td>
                    <td>Billing Frequency:</td>
                    <td>
                        <asp:Label ID="BillingFrequencyCodeLabel" runat="server" Text='<%# Bind("BillingFrequencyCode") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Rating Type:</td>
                    <td>
                        <asp:Label ID="ExperienceRatingCodeLabel" runat="server" Text='<%# Bind("ExperienceRatingCode") %>' />
                    </td>
                    <td>Minimum Premium:</td>
                    <td>
                        <asp:Label ID="PolicyMinimumPremiumAmountLabel" runat="server" Text='<%# Bind("PolicyMinimumPremiumAmount") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Legal Nature of Insured:</td>
                    <td>
                        <asp:Label ID="LegalNatureofInsuredCodeLabel" runat="server" Text='<%# Bind("LegalNatureofInsuredCode") %>' />
                    </td>
                    <td>Minimum Premium State:</td>
                    <td>
                        <asp:Label ID="PoliyMinimumPremiumStateCodeLabel" runat="server" Text='<%# Bind("PoliyMinimumPremiumStateCode") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Retrospective:</td>
                    <td>
                        <asp:Label ID="RetrospectieRatingCodeLabel" runat="server" Text='<%# Bind("RetrospectieRatingCode") %>' />
                    </td>
                    <td>Estimated Premium:</td>
                    <td>
                        <asp:Label ID="PolicyEstimatedStandardPremiumTotalLabel" runat="server" Text='<%# Bind("PolicyEstimatedStandardPremiumTotal") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Producer:</td>
                    <td>
                        <asp:Label ID="NameofProducerLabel" runat="server" Text='<%# Bind("NameofProducer") %>' />
                    </td>
                    <td>Deposit Premium:</td>
                    <td>
                        <asp:Label ID="PolicyDepositPremiumAmountLabel" runat="server" Text='<%# Bind("PolicyDepositPremiumAmount") %>' />
                    </td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
    </asp:FormView>
</asp:Content>
