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
        'Rutas de  Tabla tipo documento     
        routes.MapPageRoute("", _
     "tipoDocumento", _
     "~/vistas/tipoDocumento/Index.aspx")
        routes.MapPageRoute("", _
    "tipoDocumento/crear", _
    "~/vistas/tipoDocumento/Crear.aspx")
       
        
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