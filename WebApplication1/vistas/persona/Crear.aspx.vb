Public Class Crear1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        DetailsView1.DataSourceID = SqlDataSource1.ID
        DetailsView1.DataBind()
    End Sub

    Protected Sub Guardar_Click(sender As Object, e As EventArgs) Handles Guardar.Click


    End Sub

    Protected Sub DetailsView1_PageIndexChanging(sender As Object, e As DetailsViewPageEventArgs) Handles DetailsView1.PageIndexChanging

    End Sub
End Class