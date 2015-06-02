Public Class crear1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        DetailsView1.DataSourceID = DataSourceguaevadom.ID
        DetailsView1.DataBind()
    End Sub

    Protected Sub linkBGuardar_Click(sender As Object, e As EventArgs) Handles linkBGuardar.Click
      
    End Sub
End Class