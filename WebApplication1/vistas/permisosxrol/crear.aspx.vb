Public Class crear3
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        GridView1.DataSourceID = SqlDataSource1.ID
        GridView1.DataBind()
    End Sub

End Class