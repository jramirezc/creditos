<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/layout.master" CodeBehind="crear.aspx.vb" Inherits="WebApplication1.crear3" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Formulario Crear Permisos por Rol</title>
    </asp:Content>

<asp:Content ID="Content11" ContentPlaceHolderID="crudpermisosxrol" runat="server">
     <div class="row">
        <div class="col-sm-6 col-sm-offset-3">
            <div class="panel panel-success" >
                <div class="panel-heading">
                    <h3 class="panel-title">Formulario Crear Permsos</h3>
                </div>
                     <div class="panel-body">
                        <div class="form-group">

                    <div class="input-group">
                    <br/>
                     <span class="label label-success">Permiso</span>
                    <br/>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourceMostrarPermisos" DataTextField="nomPermiso" DataValueField="idPermiso"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSourceMostrarPermisos" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="procPermisoMostrarTodo" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    </div>

                    <div class="input-group">
                    <br/>
                     <span class="label label-success">Rol</span>
                    <br/>
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="DataSourceRolMostrarTodo" DataTextField="nomRol" DataValueField="idRol"></asp:DropDownList>
                        <asp:SqlDataSource ID="DataSourceRolMostrarTodo" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="procRolMostrarTodo" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                        <br />
                    </div>

                    <asp:LinkButton ID="Guardar" CssClass="btn btn-success" runat="server">Guardar</asp:LinkButton>


                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="procPermisoxRolCrear" SelectCommandType="StoredProcedure">
                                 <SelectParameters>
                                     <asp:ControlParameter ControlID="DropDownList1" Name="idPermiso" PropertyName="SelectedValue" Type="Int32" />
                                     <asp:ControlParameter ControlID="DropDownList2" Name="idRol" PropertyName="SelectedValue" Type="Int32" />
                                 </SelectParameters>
                            </asp:SqlDataSource>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="idPermiso,idRol" DataSourceID="SqlDataSource1">
                                <Columns>
                                    <asp:BoundField DataField="idPermiso" HeaderText="idPermiso" ReadOnly="True" SortExpression="idPermiso" />
                                    <asp:BoundField DataField="idRol" HeaderText="idRol" ReadOnly="True" SortExpression="idRol" />
                                    <asp:CheckBoxField DataField="estado" HeaderText="estado" SortExpression="estado" />
                                </Columns>
                            </asp:GridView>
                            <br />


                             </div>
                    </div>
            </div>
        </div>
</div>


</asp:Content>
