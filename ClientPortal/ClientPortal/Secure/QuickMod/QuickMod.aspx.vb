Public Class QuickMod
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub RiskSearchGV_SelectedIndexChanged(sender As Object, e As EventArgs) Handles RiskSearchGV.SelectedIndexChanged
        Dim DRiskID As String = RiskSearchGV.SelectedRow.Cells(1).Text


        Response.Cookies("CRiskID").Value = DRiskID.ToString

        Response.Redirect("Risk.aspx")
    End Sub

    Protected Sub AddRiskBT_Click(sender As Object, e As EventArgs) Handles AddRiskBT.Click
        RiskSearchGV.Visible = False
        RiskSearchFV.Visible = True
        AddRiskBT.Visible = False
        SearchBT.Visible = False
        RiskSearchTB.Visible = False
        RiskSearchFV.ChangeMode(FormViewMode.Insert)
    End Sub

    Sub RiskSearchFV_ItemCommand(ByVal sender As Object, ByVal e As FormViewCommandEventArgs) Handles RiskSearchFV.ItemCommand

        If e.CommandName = "Cancel" Then
            Response.Redirect(HttpContext.Current.Request.Url.ToString(), True)
        End If

    End Sub

    Sub RiskSearchFV_ItemInserted(ByVal sender As Object, ByVal e As FormViewInsertedEventArgs) Handles RiskSearchFV.ItemInserted

        Response.Redirect(HttpContext.Current.Request.Url.ToString(), True)
    End Sub

    Protected Sub SearchBT_Click(sender As Object, e As EventArgs) Handles SearchBT.Click
        RiskSearchGV.Visible = True
        RiskSearchGV.DataBind()
    End Sub
End Class