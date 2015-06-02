<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/layout.master" CodeBehind="verr.aspx.vb" Inherits="WebApplication1.verr" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Formulario Ver Usuario</title>
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="crudusuario" runat="server">

        <div class="row">
            <div class="col-sm-6 col-sm-offset-3">
                <div class="panel panel-warning" >
                     <div class="panel-heading">
                            <h3 class="panel-title">Formulario ver usuario</h3>
                     </div>
                     <div class="panel-body">
                            <div class="form-group">
                             
                                              

                  <asp:detailsview ID="DetailsViewver" runat="server" CssClass="table" height="50px" width="125px" DataSourceID="DataSourceVerUsuario" AutoGenerateRows="False" DataKeyNames="idUsuario">
                                    <Fields>
                                        <asp:BoundField DataField="idUsuario" HeaderText="idUsuario" InsertVisible="False" ReadOnly="True" SortExpression="idUsuario" />
                                        <asp:BoundField DataField="nomUsuario" HeaderText="nomUsuario" SortExpression="nomUsuario" />
                                        <asp:BoundField DataField="contraseñaUsuario" HeaderText="contraseñaUsuario" SortExpression="contraseñaUsuario" />
                                        <asp:BoundField DataField="cuiPersona" HeaderText="cuiPersona" SortExpression="cuiPersona" />
                                        <asp:CheckBoxField DataField="estado" HeaderText="estado" SortExpression="estado" />
                                        <asp:BoundField DataField="idRol" HeaderText="idRol" SortExpression="idRol" />
                                        <asp:CommandField ShowEditButton="True">
                                        <ControlStyle CssClass="btn btn-warning" />
                                        </asp:CommandField>
                                    </Fields>



                                </asp:detailsview>
                                  
                                




                           
                                  
                                




                                <asp:SqlDataSource ID="DataSourceVerUsuario" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="procUsusarioBuscar" SelectCommandType="StoredProcedure" UpdateCommand="procUsuarioActualizar @idUsuario, @nomUsuario,  @contraseñaUsuario, @cuiPersona,  @estado, @idRol ">
                                    <SelectParameters>
                                        <asp:RouteParameter Name="id" RouteKey="id" Type="Int32" />
                                    </SelectParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="idUsuario" Type="Int32" />
                                        <asp:Parameter Name="nomUsuario" Type="String" />
                                        <asp:Parameter Name="contraseñaUsuario" Type="String" />
                                        <asp:Parameter Name="cuiPersona" Type="Int32"/>
                                        <asp:Parameter Name="estado" Type="Boolean" />
                                        <asp:Parameter Name="idRol" Type="Int32" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                                  
                                




                           
                                  
                                




                            </div>
                  </div>
            </div>
       </div>
</div>


</asp:Content>
