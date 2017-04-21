Imports System.Web
Imports System.Data.Sql
Imports System.Data.SqlClient
Public Class LandingPage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim uname = User.Identity.Name.ToString
        Label1.Text = "Welcome to the Client Portal, " + uname.Substring(0, uname.IndexOf(" ")) + "!"
       


    End Sub


End Class