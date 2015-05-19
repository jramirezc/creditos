
Partial Class vistas_tipoDocumento_Eliminar
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        'comando para Iniciar sesion

        If (gridViewtipoDocumentoMostrarTodo.Rows.Count > 0) Then

            Session("usuario") = gridViewtipoDocumentoMostrarTodo.Rows(0).Cells(1).Text.ToString


        End If

      
    End Sub
End Class
