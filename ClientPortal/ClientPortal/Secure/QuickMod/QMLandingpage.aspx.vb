Public Class QMLandingpage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        Dim DRiskID As String = GridView1.SelectedRow.Cells(1).Text


        Response.Cookies("CRiskID").Value = DRiskID.ToString

        Response.Redirect("Risk.aspx")
    End Sub

    Protected Sub AddRiskBT_Click(sender As Object, e As EventArgs) Handles AddRiskBT.Click
        Response.Redirect("QuickMod.aspx")
    End Sub
End Class