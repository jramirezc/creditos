Public Class Crear2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        DetailsView1.DataSourceID = SqlDataSource1.ID
        DetailsView1.DataBind()
    End Sub

End Class