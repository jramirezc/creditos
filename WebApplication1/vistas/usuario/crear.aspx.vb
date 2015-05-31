Public Class crear
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub linkBGuardar_Click(sender As Object, e As EventArgs) Handles linkBGuardar.Click
        DataList1.DataSourceID = SqlDataSource1.ID
        DataList1.DataBind()

    End Sub
End Class