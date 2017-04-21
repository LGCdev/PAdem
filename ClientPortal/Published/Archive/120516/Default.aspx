<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="ClientPortal._Default" %>

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
    <h3>Modules to be released:</h3>
    <ol class="round">
        <li class="one">
            <h5>Policy Issuance Module</h5>
            Scheduled to be released by the end of December, 2016.
        </li>
        <li class="two">
            <h5>Financial Call Module</h5>
            Scheduled to be released by the end of January, 2016.</li>
        <li class="three">
            <h5>Non-WC Module</h5>
            Scheduled to be released by the end of February, 2016.</li>
    </ol>
</asp:Content>
