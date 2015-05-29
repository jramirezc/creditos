Imports System.Data.SqlTypes

Public Class prueba
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Sub escribir(ByVal tabla As SqlString)
        procMostrarTodo(Label1.Text.ToString)
        Dim objRow As DataRow

        For Each objRow In MostrarTodo.Rows
            Response.Write("<tr>" & "<td>" & objRow.Item("Id" & tabla.ToString).ToString() & "</td>" & _
                          "<td>" & objRow.Item("nom" & tabla.ToString).ToString() & "</td>" & _
                          "<td>" & objRow.Item("estado").ToString() & "</td>")
            Response.Write("<td>" & _
"<a href='\parametrizar/ver/" & tabla.ToString & "/" & objRow.Item("Id" & tabla.ToString).ToString() & "'type='button' class='btn btn-info btn-xs'>" & _
  "<span class='glyphicon glyphicon-eye-open fa-lg' aria-hidden='true'></span> " & _
"</a>" & _
"<a href='\parametrizar/actualizar/" & tabla.ToString & "/" & objRow.Item("Id" & tabla.ToString).ToString() & "'type='button' class='btn btn-warning btn-xs'>" & _
  "<span class='glyphicon glyphicon-edit fa-lg' aria-hidden='true'></span> " & _
"</a>" & _
                            "</td>")
            Response.Write("</tr>")

        Next
    End Sub

    Protected Sub LinkButton2_Click(sender As Object, e As EventArgs) Handles LinkButton2.Click
        ' procMostrarTodo(LinkButton2.Text.ToString)
        Label1.Text = LinkButton2.Text.ToString
    End Sub

    Protected Sub LinkButton3_Click(sender As Object, e As EventArgs) Handles LinkButton3.Click
        Label1.Text = LinkButton3.Text.ToString

    End Sub

    Protected Sub LinkButton4_Click(sender As Object, e As EventArgs) Handles LinkButton4.Click
        Label1.Text = LinkButton4.Text.ToString

    End Sub

    Protected Sub LinkButton5_Click(sender As Object, e As EventArgs) Handles LinkButton5.Click
        Label1.Text = LinkButton5.Text.ToString

    End Sub

    Protected Sub LinkButton6_Click(sender As Object, e As EventArgs) Handles LinkButton6.Click
        Label1.Text = LinkButton6.Text.ToString

    End Sub

    Protected Sub LinkButton7_Click(sender As Object, e As EventArgs) Handles LinkButton7.Click
        Label1.Text = LinkButton7.Text.ToString

    End Sub

    Protected Sub LinkButton8_Click(sender As Object, e As EventArgs) Handles LinkButton8.Click
        Label1.Text = LinkButton8.Text.ToString

    End Sub
End Class