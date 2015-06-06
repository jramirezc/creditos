<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/layout.master" CodeBehind="Ver.aspx.vb" Inherits="WebApplication1.Ver1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Formulario Ver Permisos por credito</title>
</asp:Content>

<asp:Content ID="Content11" ContentPlaceHolderID="crudpermisosxrol" runat="server">
           <div class="row">
            <div class="col-sm-6 col-sm-offset-3">
                <div class="panel panel-warning" >
                     <div class="panel-heading">
                            <h3 class="panel-title">Formulario Eliminar Permiso por Rol</h3>
                     </div>
                     <div class="panel-body">
                            <div class="form-group">

                   
                                <asp:detailsview runat="server" height="50px" width="125px" AutoGenerateRows="False" DataKeyNames="idPermiso,idRol" DataSourceID="DataSourceVerPermisoporRol">
                                    <Fields>
                                        <asp:BoundField DataField="idPermiso" HeaderText="idPermiso" ReadOnly="True" SortExpression="idPermiso" />
                                        <asp:BoundField DataField="idRol" HeaderText="idRol" ReadOnly="True" SortExpression="idRol" />
                                        <asp:CheckBoxField DataField="estado" HeaderText="estado" SortExpression="estado" />
                                    </Fields>
                                </asp:detailsview>


                                



                                <asp:SqlDataSource ID="DataSourceVerPermisoporRol" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="procPermisoxRolBuscar" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:Parameter Name="id" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>


                                



                                </div>
                  </div>
            </div>
       </div>
</div>

</asp:Content>
<%--  --%>