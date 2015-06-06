<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/layout.master" CodeBehind="index.aspx.vb" Inherits="WebApplication1.index3" %>


<asp:Content ID="Content11" ContentPlaceHolderID="crudpermisosxrol" runat="server">

     <div class="row">
            <div class="col-sm-6 col-sm-offset-3">
                <div class="panel panel-success" >
                     <div class="panel-heading">
                            <h3 class="panel-title">Formulario Crear Permisos por Rol</h3>
                     </div>
                    <div class="row">
                    <div class="col-sm-11 ">

                     <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="idPermiso,idRol" DataSourceID="DataSourcePermisosxRolMostrarTodo">
                         <Columns>
                             <asp:BoundField DataField="idPermiso" HeaderText="idPermiso" ReadOnly="True" SortExpression="idPermiso" />
                             <asp:BoundField DataField="idRol" HeaderText="idRol" ReadOnly="True" SortExpression="idRol" />
                             <asp:CheckBoxField DataField="estado" HeaderText="estado" SortExpression="estado" />
                         </Columns>
                     </asp:GridView>
                     <asp:SqlDataSource ID="DataSourcePermisosxRolMostrarTodo" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="procPermisosxRolMostrarTodo" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                      </div>

                    


                     <asp:SqlDataSource ID="DataSourcePermisosxRol" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="procPermisosxRolMostrarTodo" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                   
                 
                       <div class="col-sm-1 ">
                                <a type="button" href="\permisosxrol/crear" class="btn btn-fab btn-raised  btn-material-green-600 "data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Tooltip on bottom"><i class="fa fa-plus-circle"></i></a>
                           
                       </div>
                      </div>
                      </div>

                    </div>
                
            </div>



</asp:Content>

