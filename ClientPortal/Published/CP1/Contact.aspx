<%@ Page Title="Contact" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.vb" Inherits="ClientPortal.Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>Long Group, Inc. Contact Information</h2>
    </hgroup>

    <section class="contact">
        <header>
            <h3>Phone:</h3>
        </header>
        <p>
            <span class="label">Main:</span>
            (706) 408-7570
        </p>
        <p>
            &nbsp;</p>
    </section>

    <section class="contact">
        <header>
            <h3>Email:</h3>
        </header>
        <p>
            <span class="label">Steven Long, AIDM:</span>
            <a href="mailto:Support@example.com">Steven.Long@longgroupinc.com</a>
        </p>
        <p>
            Katherine Long:&nbsp; <a href="mailto:Marketing@example.com">Kate.Long</a>@longgroupinc.com
        </p>
        <p>
            <span class="label">General:</span>
            <span><a href="mailto:General@example.com">General@example.com</a></span>
        </p>
    </section>

    <section class="contact">
        <header>
        </header>
    </section>
</asp:Content>