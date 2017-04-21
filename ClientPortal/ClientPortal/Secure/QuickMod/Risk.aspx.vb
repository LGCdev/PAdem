Imports System.Data.Sql
Imports System.Data.SqlClient
Public Class Risk
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub AddPolicyBT_Click(sender As Object, e As EventArgs) Handles AddPolicyBT.Click
        PolicyHistoryGV.Visible = False
        AddPolicyFV.Visible = True
        AddPolicyBT.Visible = False
        AddPolicyFV.ChangeMode(FormViewMode.Insert)

    End Sub

    Sub AddPolicyFV_ItemInserted(ByVal sender As Object, ByVal e As FormViewInsertedEventArgs) Handles AddPolicyFV.ItemInserted

        Response.Redirect(HttpContext.Current.Request.Url.ToString(), True)
    End Sub

    Protected Sub PolicyHistoryGV_SelectedIndexChanged(sender As Object, e As EventArgs) Handles PolicyHistoryGV.SelectedIndexChanged
        Dim DPolicyID As String = PolicyHistoryGV.SelectedRow.Cells(1).Text


        Response.Cookies("CPolicyID").Value = DPolicyID.ToString

        Response.Redirect("Policy.aspx")
    End Sub

    Sub ProductFormView_ItemCommand(ByVal sender As Object, ByVal e As FormViewCommandEventArgs) Handles AddPolicyFV.ItemCommand

        If e.CommandName = "Cancel" Then
            Response.Redirect(HttpContext.Current.Request.Url.ToString(), True)
        End If

    End Sub


    Protected Sub ProduceModBT_Click(sender As Object, e As EventArgs) Handles ProduceModBT.Click
        WarningLabel.Visible = True
        EffectiveDateLabel.Visible = True
        EfectiveDateTB.Visible = True
        ProduceModSubmitBT.Visible = True
        CancelBT.Visible = True
        ProduceModBT.Visible = False
        ModHistoryGV.Visible = False

    End Sub

    Protected Sub ProduceModSubmitBT_Click(sender As Object, e As EventArgs) Handles ProduceModSubmitBT.Click

        Dim DRiskID As String
        Dim DEffectiveDate As String

        DRiskID = Request.Cookies("CRiskID").Value.ToString
        DEffectiveDate = EfectiveDateTB.Text.ToString

        Dim conn As SqlConnection
        Dim com As SqlCommand
        Dim connectionString As String = ConfigurationManager.ConnectionStrings("DefaultConnection").ConnectionString
        conn = New SqlConnection(connectionString)
        com = New SqlCommand()
        com.Connection = conn
        com.CommandType = CommandType.StoredProcedure
        com.CommandText = "emod.QuickMod_ProduceMod"
        com.Parameters.AddWithValue("@RiskID", DRiskID.ToString)
        com.Parameters.AddWithValue("@EffectiveDate", DEffectiveDate.ToString)
        conn.Open()
        com.ExecuteNonQuery()

        Response.Redirect(HttpContext.Current.Request.Url.ToString(), True)

    End Sub

    Protected Sub CancelBT_Click(sender As Object, e As EventArgs) Handles CancelBT.Click

        Response.Redirect(HttpContext.Current.Request.Url.ToString(), True)
    End Sub
End Class