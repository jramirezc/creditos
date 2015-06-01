Public Class login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        GridView1.DataSourceID = validalogin.ID
        GridView1.DataBind()

        'comando para Iniciar sesion

        If (GridView1.Rows.Count > 0) Then

            Session("usuario") = GridView1.Rows(0).Cells(1).Text.ToString

            If (GridView1.Rows(0).Cells(0).Text.ToString.Equals("ci")) Then
                Session.RemoveAll()
                Session("mensaje") = "ci"
            ElseIf (GridView1.Rows(0).Cells(0).Text.ToString.Equals("un")) Then
                Session.RemoveAll()
                Session("mensaje") = "un"
            Else
                Session("usuario") = GridView1.Rows(0).Cells(1).Text.ToString
            End If

        End If

        If (Not IsNothing(Session("usuario"))) Then

        End If
    End Sub

End Class