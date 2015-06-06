Public Class ver
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Construlle el Query si es para ver o Actualziar
        If ((String.Equals(Page.RouteData.Values("accion").ToString, "ver")) Or (String.Equals(Page.RouteData.Values("accion").ToString, "actualizar"))) Then
            procBuscar(Page.RouteData.Values("tabla").ToString, Page.RouteData.Values("id").ToString)

        End If





    End Sub
    'Condiciones que leen la consulta para Dibujar SI ES la Vista Crear, Ver o Actualizar
    Sub ver()
        Label1.Text = Page.RouteData.Values("accion").ToString & ": " & Page.RouteData.Values("tabla").ToString
        Dim objRow As DataRow

        For Each objRow In Buscar.Rows

            If (String.Equals(Page.RouteData.Values("accion").ToString, "crear")) Then
                Label1.Text = Page.RouteData.Values("accion").ToString & ": " & Page.RouteData.Values("tabla").ToString
            Else
                Label1.Text = Page.RouteData.Values("accion").ToString & ": " & Page.RouteData.Values("tabla").ToString & " #" & Page.RouteData.Values("id").ToString

            End If
            If (String.Equals(Page.RouteData.Values("accion").ToString, "ver")) Then
                TextBox1.ReadOnly = True
                TextBox1.Text = objRow.Item("nom" & Page.RouteData.Values("tabla").ToString)

            End If
            If (String.Equals(Page.RouteData.Values("accion").ToString, "actualizar")) Then
                TextBox1.Text = objRow.Item("nom" & Page.RouteData.Values("tabla").ToString)

                estado.ClearSelection()
                If (objRow.Item("estado")) Then
                    estado.Items.FindByValue(1).Selected = True
                Else
                    estado.Items.FindByValue(0).Selected = True
                End If
            End If


        Next

    End Sub
    'BOTON PARA ACTUALIZAR
    Protected Sub LinkButton1_Click(sender As Object, e As EventArgs) Handles LinkButton1.Click
        'llamar update con el txbox y volver al index
        procActualizar(Page.RouteData.Values("tabla").ToString, Page.RouteData.Values("id").ToString, TextBox1.Text.ToString, estado.SelectedValue)
    End Sub
    'BOTON PARA GARBAR
    Protected Sub LinkButton2_Click(sender As Object, e As EventArgs) Handles LinkButton2.Click
        procCrear(Page.RouteData.Values("tabla").ToString, TextBox1.Text.ToString)
        Response.Redirect("\parametrizar/")
    End Sub
End Class