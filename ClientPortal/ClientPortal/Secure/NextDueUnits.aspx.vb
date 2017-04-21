Public Class NextDueUnits
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub


    Private Sub Gridview1_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles GridView1.SelectedIndexChanged
        Dim Dcarrier As String = GridView1.SelectedRow.Cells(1).Text
        Dim Dpolicyno As String = GridView1.SelectedRow.Cells(2).Text
        Dim Dstatecode As String = GridView1.SelectedRow.Cells(3).Text
        Dim DPED As String = GridView1.SelectedRow.Cells(4).Text
        Dim Dinsured As String = GridView1.SelectedRow.Cells(5).Text


        Response.Cookies("Ccarrier").Value = Dcarrier.ToString
        Response.Cookies("Cpolicyno").Value = Dpolicyno.ToString
        Response.Cookies("Cstatecode").Value = Dstatecode.ToString
        Response.Cookies("CPED").Value = DPED.ToString
        Response.Cookies("Cinsured").Value = Dinsured.ToString

        Response.Redirect("UnitView.aspx")

    End Sub


End Class