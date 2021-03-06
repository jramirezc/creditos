﻿<%@ Application Language="VB" %>
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
        '================rutas de parametrizacion==================================================
        routes.MapPageRoute("", _
    "parametrizar", _
    "~/vistas/parametrizar/index.aspx")
        routes.MapPageRoute("", _
  "parametrizar/{accion}/{tabla}", _
  "~/vistas/parametrizar/ver.aspx")
        routes.MapPageRoute("", _
    "parametrizar/{accion}/{tabla}/{id}", _
    "~/vistas/parametrizar/ver.aspx")
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
        'Ruta tabla evaluacion domiciliar index
        routes.MapPageRoute("", _
 "credito/{id}/evaluaciondomiciliar", _
 "~/vistas/evaluaciondomiciliar/index.aspx")
        'Ruta tabla evaluacion domiciliar crear
        routes.MapPageRoute("", _
 "credito/{id}/evaluaciondomiciliar/crear", _
 "~/vistas/evaluaciondomiciliar/crear.aspx")
        'Ruta tabla Evaluacion Domiciliar ver
        routes.MapPageRoute("", _
    "credito/{id}/evaluaciondomiciliar/ver/{idEva}", _
    "~/vistas/evaluaciondomiciliar/ver.aspx")
        
        'Ruta tabla vobo evaluacion Domiciliar ver
        routes.MapPageRoute("", _
    "credito/{id}/evaluaciondomiciliar/ver/{idEva}/vobo", _
    "~/vistas/evaluaciondomiciliar/vobo.aspx")
        'Ruta tabla vistobueno evaluacion Domiciliar 
        routes.MapPageRoute("", _
    "evaluaciondomiciliar/vobo", _
    "~/vistas/evaluaciondomiciliar/vobo.aspx")


        'Rutas de Carlos
        'Ruta tabla persona index
        routes.MapPageRoute("", _
 "persona", _
 "~/vistas/persona/index.aspx")
        
            
        'Ruta tabla persona crear
        routes.MapPageRoute("", _
 "persona/crear", _
 "~/vistas/persona/crear.aspx")
        
        
        'Ruta tabla persona ver
        routes.MapPageRoute("", _
 "persona/ver/{id}", _
 "~/vistas/persona/ver.aspx")


 'Ruta tabla  Permisos por Rol
        routes.MapPageRoute("", _
 "permisosxrol", _
 "~/vistas/permisosxrol/index.aspx")

        
        'Ruta tabla persona permiso por rol
        routes.MapPageRoute("", _
 "permisosxrol/crear", _
 "~/vistas/permisosxrol/crear.aspx")
        
        'Ruta tabla permisos por rol ver
        routes.MapPageRoute("", _
 "permisosxrol/ver/{id}", _
 "~/vistas/permisosxrol/ver.aspx")

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