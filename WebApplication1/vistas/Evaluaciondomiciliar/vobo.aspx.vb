Public Class vobo
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub VoBO_Click(sender As Object, e As EventArgs) Handles VoBO.Click
        DetailsView2.DataSourceID = DataSourcevistobueno.ID
        DetailsView2.DataBind()
        Response.Redirect("\credito/" & Page.RouteData.Values("id") & "/evaluaciondomiciliar")
    End Sub



End Class