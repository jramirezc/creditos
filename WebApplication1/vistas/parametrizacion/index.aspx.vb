Imports System.Data.SqlTypes

Public Class prueba
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        procMostrarTodo("Sexo")
        Label1.Text = "Sexo"
        GridView1.DataSource = MostrarTodo
        GridView1.DataBind()

    End Sub
    Sub escribir(ByVal tabla As SqlString)
        Dim objRow As DataRow

        For Each objRow In MostrarTodo.Rows
            Response.Write("<tr>" & "<td>" & objRow.Item("Id" & tabla.ToString).ToString() & "</td>" & _
                          "<td>" & objRow.Item("nom" & tabla.ToString).ToString() & "</td>" & _
                          "<td>" & objRow.Item("estado").ToString() & "</td>")
            Response.Write("<td>" & _
"<a href='" & tabla.ToString & "s/" & objRow.Item("Id" & tabla.ToString).ToString() & "'type='button' class='btn btn-success btn-xs'>" & _
  "<span class='glyphicon glyphicon-star' aria-hidden='true'></span> Star" & _
"</a>" & _
                            "</td>")
            Response.Write("</tr>")

        Next
    End Sub

    Protected Sub LinkButton2_Click(sender As Object, e As EventArgs) Handles LinkButton2.Click
        procMostrarTodo("Rol")
        Label1.Text = "Rol"
    End Sub
End Class