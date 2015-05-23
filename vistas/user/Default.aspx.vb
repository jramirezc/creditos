
Partial Class vistas_user_Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        GridView1.DataSourceID = mostrar.ID
        'comando para cerrar sesion
        Session.RemoveAll()

        'If you only want to show one grid at a time
        
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click

        Dim sel2 = GridView2.Rows(3).Cells(1).Text.ToString
        Label1.Text = sel2
        'comando para Iniciar sesion

        If (GridView1.Rows.Count > 0) Then
            Session("usuario") = GridView1.Rows(0).Cells(0).Text.ToString
        End If

        If (Not IsNothing(Session("usuario"))) Then
            Label1.Text = Session("usuario").ToString
        End If
    End Sub


    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click

    End Sub
End Class
