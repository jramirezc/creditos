<%@ Application Language="VB" %>
<%@ Import Namespace="System.Web.Routing" %>

<script runat="server">

    
    Sub Application_Start(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs on application startup
        RegisterRoutes(RouteTable.Routes)
    End Sub
    Sub RegisterRoutes(ByVal routes As RouteCollection)
        routes.MapPageRoute("", _
    "tony", _
    "~/vistas/user/zelda.mp3")
        routes.MapPageRoute("", _
    "login", _
    "~/vistas/user/login.aspx")
'================rutas de credito==================================================
        routes.MapPageRoute("", _
    "credito", _
    "~/vistas/credito/index.aspx")
        
        routes.MapPageRoute("", _
    "credito/crear", _
    "~/vistas/credito/crear.aspx")
        routes.MapPageRoute("", _
    "credito/buscar", _
    "~/vistas/credito/buscar.aspx")
        routes.MapPageRoute("", _
           "credito/ver/{id}", _
           "~/vistas/credito/ver.aspx")
        ' letras de pago rutas
        routes.MapPageRoute("", _
    "letras/{id}", _
    "~/vistas/Letra_pago/index.aspx")
                'Rutas de  Tabla tipo documento     
        routes.MapPageRoute("", _
     "tipoDocumento", _
     "~/vistas/tipoDocumento/Index.aspx")
        routes.MapPageRoute("", _
    "tipoDocumento/crear", _
    "~/vistas/tipoDocumento/Crear.aspx")
        
        'Ruta tabla usuario crear
        routes.MapPageRoute("", _
    "usuario/crear", _
    "~/vistas/usuario/crear.aspx")

        'Ruta tabla usuario ver
        routes.MapPageRoute("", _
    "usuario/ver/{id}", _
    "~/vistas/usuario/verr.aspx")
        
        'Ruta tabla usuario index
        routes.MapPageRoute("", _
 "usuario", _
 "~/vistas/usuario/inde.aspx")
        
        
    End Sub
    Sub Application_End(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs on application shutdown
    End Sub
        
    Sub Application_Error(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs when an unhandled error occurs
    End Sub

    Sub Session_Start(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs when a new session is started
    End Sub

    Sub Session_End(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs when a session ends. 
        ' Note: The Session_End event is raised only when the sessionstate mode
        ' is set to InProc in the Web.config file. If session mode is set to StateServer 
        ' or SQLServer, the event is not raised.
    End Sub
       
</script>