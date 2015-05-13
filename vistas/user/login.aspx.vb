Imports System.IO
Imports System.Security.Cryptography

Partial Class vistas_user_login
    Inherits System.Web.UI.Page

    Protected Sub login_Click(sender As Object, e As EventArgs) Handles login.Click

    End Sub
    Public Function url() As String
        MsgBox("corrio")
        Dim destinationURL = "http://216.227.134.162/ost/legend-of-zelda-hyrule-symphony/uihrpvxoat/12-ocarina-medley.mp3"
        audio.Src = "~/Finish?url=" + HttpContext.Current.Server.UrlEncode(destinationURL)
        Return "~/Finish?url=" + HttpContext.Current.Server.UrlEncode(destinationURL)

    End Function
    Public Function Encriptar(ByVal Input As String) As String

        Dim IV() As Byte = ASCIIEncoding.ASCII.GetBytes("qualityi") 'La clave debe ser de 8 caracteres
        Dim EncryptionKey() As Byte = Convert.FromBase64String("rpaSPvIvVLlrcmtzPU9/c67Gkj7yL1S5") 'No se puede alterar la cantidad de caracteres pero si la clave
        Dim buffer() As Byte = Encoding.UTF8.GetBytes(Input)
        Dim des As TripleDESCryptoServiceProvider = New TripleDESCryptoServiceProvider
        des.Key = EncryptionKey
        des.IV = IV

        Return Convert.ToBase64String(des.CreateEncryptor().TransformFinalBlock(buffer, 0, buffer.Length()))

    End Function
    Public Function Desencriptar(ByVal Input As String) As String

        Dim IV() As Byte = ASCIIEncoding.ASCII.GetBytes("qualityi") 'La clave debe ser de 8 caracteres
        Dim EncryptionKey() As Byte = Convert.FromBase64String("rpaSPvIvVLlrcmtzPU9/c67Gkj7yL1S5") 'No se puede alterar la cantidad de caracteres pero si la clave
        Dim buffer() As Byte = Convert.FromBase64String(Input)
        Dim des As TripleDESCryptoServiceProvider = New TripleDESCryptoServiceProvider
        des.Key = EncryptionKey
        des.IV = IV
        Return Encoding.UTF8.GetString(des.CreateDecryptor().TransformFinalBlock(buffer, 0, buffer.Length()))

    End Function

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
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
