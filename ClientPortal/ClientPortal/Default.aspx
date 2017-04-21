<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/General.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="ClientPortal._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1>The next generation of Compliance Consulting!</h1>
            </hgroup>
            <p>
                The Client Portal is the first step in creating a new partnership between our Group and your company.&nbsp; With everyone on the same page and looking at the same data, both quality and efficiency can improve dramatically.&nbsp; Read below for up-to-date information on the rollout.</p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>Modules</h3>
    <ol class="round">
        <li class="one">
            <h5>Unit Stat - WCSTAT</h5>
            Search, track and make changes to the payroll, premium and claim information used to compile your monthly units.</li>
        <li class="two">
            <h5>Policy - WCPOLS</h5>
            Search, track and make changes to the policies you submit to Long Group.</li>
        <li class="three">
            <h5>Experience Mods - ModPartner.com</h5>
            Calculate and Manage Experience Mod Data.</li>
    </ol>
</asp:Content>
