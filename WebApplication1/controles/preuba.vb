Imports System.Data
Imports System.Data.SqlClient
Imports System.Data.SqlTypes
Imports System.Web
Imports System.IO
Module preuba
    Public MostrarTodo As New DataTable

    Public Sub procMostrarTodo(ByVal tabla As String) '(ByVal Id As SqlString, ByVal Nom As SqlString)
        MostrarTodo = New DataTable
        Dim comandoIG As New SqlCommand()
        ' Dim paramId As New SqlParameter("@ID", SqlDbType.Int)
        ' Dim paramNom As New SqlParameter("@NOM", SqlDbType.NVarChar)
        ' paramId.Value = CInt(Id)
        ' paramNom.Value = Nom
        ' comandoIG.Parameters.Add(paramId)
        ' comandoIG.Parameters.Add(paramNom)
        comandoIG.CommandText = "proc" & tabla & "MostrarTodo"
        conectarce()
        comandoIG.Connection = cnn

        Dim objAdapter As New SqlDataAdapter(comandoIG)


        objAdapter.Fill(MostrarTodo)
        conectarce()

    End Sub

End Module
