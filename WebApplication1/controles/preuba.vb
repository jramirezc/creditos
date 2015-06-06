Imports System.Data
Imports System.Data.SqlClient
Imports System.Data.SqlTypes
Imports System.Web
Imports System.IO
Module preuba
    Public MostrarTodo As New DataTable
    Public Buscar As New DataTable
    'unciones para PARAMENTRIZAR
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
    Public Sub procBuscar(ByVal tabla As String, ByVal id As SqlString) '(ByVal Id As SqlString, ByVal Nom As SqlString)
        Buscar = New DataTable
        Dim comandoIG As New SqlCommand()
        Dim paramId As New SqlParameter("@ID", SqlDbType.Int)
        ' Dim paramNom As New SqlParameter("@NOM", SqlDbType.NVarChar)
        paramId.Value = CInt(id)
        ' paramNom.Value = Nom
        comandoIG.Parameters.Add(paramId)
        ' comandoIG.Parameters.Add(paramNom)
        comandoIG.CommandText = "proc" & tabla & "Buscar @ID"
        conectarce()
        comandoIG.Connection = cnn

        Dim objAdapter As New SqlDataAdapter(comandoIG)


        objAdapter.Fill(Buscar)
        conectarce()

    End Sub
    Public Sub procActualizar(ByVal tabla As String, ByVal id As SqlString, ByVal nom As SqlString, ByVal estado As SqlString) '(ByVal Id As SqlString, ByVal Nom As SqlString)
        Buscar = New DataTable
        Dim comandoIG As New SqlCommand()
        Dim paramId As New SqlParameter("@ID", SqlDbType.Int)
        Dim paramEst As New SqlParameter("@EST", SqlDbType.Int)
        Dim paramNom As New SqlParameter("@NOM", SqlDbType.NVarChar)
        paramId.Value = CInt(id)
        paramNom.Value = nom
        paramEst.Value = CInt(estado)
        ' paramNom.Value = Nom
        comandoIG.Parameters.Add(paramId)
        comandoIG.Parameters.Add(paramNom)
        comandoIG.Parameters.Add(paramEst)

        comandoIG.CommandText = "proc" & tabla & "Actualizar @ID, @NOM, @EST"
        conectarce()
        comandoIG.Connection = cnn
        comandoIG.ExecuteNonQuery()
        'Dim objAdapter As New SqlDataAdapter(comandoIG)


        'objAdapter.Fill(Buscar)
        conectarce()

    End Sub
    Public Sub procCrear(ByVal tabla As String, ByVal nom As SqlString) '(ByVal Id As SqlString, ByVal Nom As SqlString)
        Buscar = New DataTable
        Dim comandoIG As New SqlCommand()
        '   Dim paramId As New SqlParameter("@ID", SqlDbType.Int)
        '    Dim paramEst As New SqlParameter("@EST", SqlDbType.Int)
        Dim paramNom As New SqlParameter("@NOM", SqlDbType.NVarChar)
        '   paramId.Value = CInt(id)
        paramNom.Value = nom
        '    paramEst.Value = CInt(estado)
        ' paramNom.Value = Nom
        '     comandoIG.Parameters.Add(paramId)
        comandoIG.Parameters.Add(paramNom)
        '  comandoIG.Parameters.Add(paramEst)

        comandoIG.CommandText = "proc" & tabla & "Crear  @NOM"
        conectarce()
        comandoIG.Connection = cnn
        comandoIG.ExecuteNonQuery()
        'Dim objAdapter As New SqlDataAdapter(comandoIG)


        'objAdapter.Fill(Buscar)
        conectarce()

    End Sub

End Module
