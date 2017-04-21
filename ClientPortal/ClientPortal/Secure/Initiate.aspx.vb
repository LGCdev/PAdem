Imports System.Web
Imports System.Data.Sql
Imports System.Data.SqlClient

Public Class Initiate
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim CUser As String = User.Identity.Name.ToString
        Dim CClientNo As String
        Response.Cookies("CUsername").Value = CUser.ToString


        Dim sql As String = "Select ClientNo From Portal.ref_Users Where UserName like @UserName"

        Using cn As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("DefaultConnection").ConnectionString), cmd As New SqlCommand(sql, cn)
            cn.Open()
            cmd.Parameters.Add("@UserName", SqlDbType.VarChar, 50).Value = CUser.ToString
            CClientNo = cmd.ExecuteScalar().ToString()

            Response.Cookies("CClientNumber").Value = CClientNo.ToString
            Response.Redirect("LandingPage.aspx")
        End Using

    End Sub

End Class