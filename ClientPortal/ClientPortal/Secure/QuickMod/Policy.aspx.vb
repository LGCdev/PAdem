Public Class Policy
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub AddPayrolBT_Click(sender As Object, e As EventArgs) Handles AddPayrolBT.Click
        PayrollDataGV.Visible = False
        AddPayrollFV.Visible = True
        AddPayrolBT.Visible = False
        AddPayrollFV.ChangeMode(FormViewMode.Insert)
    End Sub

    Sub AddPayrollFV_ItemInserted(ByVal sender As Object, ByVal e As FormViewInsertedEventArgs) Handles AddPayrollFV.ItemInserted

        Response.Redirect(HttpContext.Current.Request.Url.ToString(), True)
    End Sub

    Sub AddPayrollFV_ItemCommand(ByVal sender As Object, ByVal e As FormViewCommandEventArgs) Handles AddPayrollFV.ItemCommand

        If e.CommandName = "Cancel" Then
            Response.Redirect(HttpContext.Current.Request.Url.ToString(), True)
        End If

    End Sub

    Protected Sub AddLossBT_Click(sender As Object, e As EventArgs) Handles AddLossBT.Click
        LossDataGV.Visible = False
        LossDataFV.Visible = True
        AddLossBT.Visible = False
        LossDataFV.ChangeMode(FormViewMode.Insert)
    End Sub

    Sub LossDataFV_ItemInserted(ByVal sender As Object, ByVal e As FormViewInsertedEventArgs) Handles LossDataFV.ItemInserted

        Response.Redirect(HttpContext.Current.Request.Url.ToString(), True)
    End Sub

    Sub LossDataFV_ItemCommand(ByVal sender As Object, ByVal e As FormViewCommandEventArgs) Handles LossDataFV.ItemCommand

        If e.CommandName = "Cancel" Then
            Response.Redirect(HttpContext.Current.Request.Url.ToString(), True)
        End If

    End Sub

    Protected Sub BackToRisk_Click(sender As Object, e As EventArgs) Handles BackToRisk.Click
        Response.Redirect("Risk.aspx")
    End Sub
End Class