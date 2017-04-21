Imports System.Configuration
Imports System.Data.SqlClient
Imports System.IO

Public Class UnitView
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label3.Text = Request.Cookies("Cinsured").Value.ToString
    End Sub

    Protected Sub DownloadXLBT_Click(sender As Object, e As EventArgs) Handles DownloadXLBT.Click

        Dim HUnitSet As DataSet = New DataSet("UnitSet")
        Dim PInsured As String = Request.Cookies("Cinsured").Value.ToString.Replace(" ", "")
        Dim PCarrier As String = Request.Cookies("Ccarrier").Value.ToString
        Dim PPolicyNumber As String = Request.Cookies("CPolicyNo").Value.ToString
        Dim PStateCode As String = Request.Cookies("CStateCode").Value.ToString
        Dim PPED As String = Request.Cookies("CPED").Value.ToString
        Dim PClientNo As String = Request.Cookies("CClientNumber").Value.ToString


        Dim Hquery As String = "Exec Portal.Page_UnitDownloadHeaderProc @Ccarrier, @Cpolicyno, @Cstatecode, @CPED, @Cclientno"
        Dim Hdtb As New DataTable

        Using cnn As New SqlConnection(ConfigurationManager.ConnectionStrings("DefaultConnection").ConnectionString)
            cnn.Open()
            Using Hdad As New SqlDataAdapter(Hquery, cnn)
                Hdad.SelectCommand.Parameters.AddWithValue("@Ccarrier", PCarrier)
                Hdad.SelectCommand.Parameters.AddWithValue("@Cpolicyno", PPolicyNumber)
                Hdad.SelectCommand.Parameters.AddWithValue("@Cstatecode", PStateCode)
                Hdad.SelectCommand.Parameters.AddWithValue("@CPED", PPED)
                Hdad.SelectCommand.Parameters.AddWithValue("@Cclientno", PClientNo)
                Hdad.Fill(Hdtb)
            End Using

            cnn.Close()
        End Using
        HUnitSet.Tables.Add(Hdtb)
        ExportDataSetToExcel(HUnitSet, PInsured.ToString + "_Header.xls")

    End Sub

    Protected Sub DownloadExpXL_Click(sender As Object, e As EventArgs) Handles DownloadExpXL.Click
        Dim HUnitSet As DataSet = New DataSet("UnitSet")
        Dim PInsured As String = Request.Cookies("Cinsured").Value.ToString.Replace(" ", "")
        Dim PCarrier As String = Request.Cookies("Ccarrier").Value.ToString
        Dim PPolicyNumber As String = Request.Cookies("CPolicyNo").Value.ToString
        Dim PStateCode As String = Request.Cookies("CStateCode").Value.ToString
        Dim PPED As String = Request.Cookies("CPED").Value.ToString
        Dim PClientNo As String = Request.Cookies("CClientNumber").Value.ToString


        Dim Hquery As String = "Exec Portal.Page_UnitDownloadExposureProc @Ccarrier, @Cpolicyno, @Cstatecode, @CPED, @Cclientno"
        Dim Hdtb As New DataTable

        Using cnn As New SqlConnection(ConfigurationManager.ConnectionStrings("DefaultConnection").ConnectionString)
            cnn.Open()
            Using Hdad As New SqlDataAdapter(Hquery, cnn)
                Hdad.SelectCommand.Parameters.AddWithValue("@Ccarrier", PCarrier)
                Hdad.SelectCommand.Parameters.AddWithValue("@Cpolicyno", PPolicyNumber)
                Hdad.SelectCommand.Parameters.AddWithValue("@Cstatecode", PStateCode)
                Hdad.SelectCommand.Parameters.AddWithValue("@CPED", PPED)
                Hdad.SelectCommand.Parameters.AddWithValue("@Cclientno", PClientNo)
                Hdad.Fill(Hdtb)
            End Using

            cnn.Close()
        End Using
        HUnitSet.Tables.Add(Hdtb)
        ExportDataSetToExcel(HUnitSet, PInsured.ToString + "_Exposure.xls")
    End Sub


    Protected Sub DownloadLossXL_Click(sender As Object, e As EventArgs) Handles DownloadLossXL.Click
        Dim HUnitSet As DataSet = New DataSet("UnitSet")
        Dim PInsured As String = Request.Cookies("Cinsured").Value.ToString.Replace(" ", "")
        Dim PCarrier As String = Request.Cookies("Ccarrier").Value.ToString
        Dim PPolicyNumber As String = Request.Cookies("CPolicyNo").Value.ToString
        Dim PStateCode As String = Request.Cookies("CStateCode").Value.ToString
        Dim PPED As String = Request.Cookies("CPED").Value.ToString
        Dim PClientNo As String = Request.Cookies("CClientNumber").Value.ToString


        Dim Hquery As String = "Exec Portal.Page_UnitDownloadLossProc @Ccarrier, @Cpolicyno, @Cstatecode, @CPED, @Cclientno"
        Dim Hdtb As New DataTable

        Using cnn As New SqlConnection(ConfigurationManager.ConnectionStrings("DefaultConnection").ConnectionString)
            cnn.Open()
            Using Hdad As New SqlDataAdapter(Hquery, cnn)
                Hdad.SelectCommand.Parameters.AddWithValue("@Ccarrier", PCarrier)
                Hdad.SelectCommand.Parameters.AddWithValue("@Cpolicyno", PPolicyNumber)
                Hdad.SelectCommand.Parameters.AddWithValue("@Cstatecode", PStateCode)
                Hdad.SelectCommand.Parameters.AddWithValue("@CPED", PPED)
                Hdad.SelectCommand.Parameters.AddWithValue("@Cclientno", PClientNo)
                Hdad.Fill(Hdtb)
            End Using

            cnn.Close()
        End Using
        HUnitSet.Tables.Add(Hdtb)
        ExportDataSetToExcel(HUnitSet, PInsured.ToString + "_Loss.xls")
    End Sub

    Public Shared Sub ExportDataSetToExcel(ds As DataSet, filename As String)
        Dim response As HttpResponse = HttpContext.Current.Response

        'Clean response object
        response.Clear()
        response.Charset = ""

        'Set response header
        response.ContentType = "application/vnd.ms-excel"
        response.AddHeader("Content-Disposition", "attachment;filename=""" & filename & """")

        'Create StringWriter and use to create CSV
        Using sw As New StringWriter()
            Using htw As New HtmlTextWriter(sw)
                'Instantiate DataGrid
                Dim dg As New DataGrid()
                dg.DataSource = ds.Tables(0)
                dg.DataBind()
                dg.RenderControl(htw)
                response.Write(sw.ToString())
                response.[End]()
            End Using
        End Using
    End Sub




End Class