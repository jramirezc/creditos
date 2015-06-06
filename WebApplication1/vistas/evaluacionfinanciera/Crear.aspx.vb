Public Class Crear2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub linkBGuardar_Click(sender As Object, e As EventArgs) Handles linkBGuardar.Click
        DetailsView1.DataSourceID = DataSourceGuardarEvaFinan.ID
        DetailsView1.DataBind()
    End Sub
End Class