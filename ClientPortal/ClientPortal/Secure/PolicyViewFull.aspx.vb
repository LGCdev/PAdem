Imports System.Configuration
Imports System.Data.SqlClient
Imports System.IO

Public Class PolicyView2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        InsuredNameLabel.Text = Request.Cookies("Cinsured").Value.ToString
        PolicyNumberLabel.Text = Request.Cookies("Cpolicyno").Value.ToString
        PEDLabel.Text = Request.Cookies("CPED").Value.ToString
    End Sub

    

  


   





End Class