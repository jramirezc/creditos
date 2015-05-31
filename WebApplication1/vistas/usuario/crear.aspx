<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/layout.master" CodeBehind="crear.aspx.vb" Inherits="WebApplication1.crear" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Formulario Persona</title>
    </asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="crudusuario" runat="server">

<div class="row">
            <div class="col-sm-6 col-sm-offset-3">
                <div class="panel panel-success" >
                     <div class="panel-heading">
                            <h3 class="panel-title">Formulario Crear Credito</h3>
                     </div>

                                                
            <div class="input-group">
                <br/>
                <asp:TextBox class="form-control floating-label" id="nomusuario" runat="server" type="text" placeholder="Nombre Usuario" data-hint="">
                 </asp:TextBox>
            </div>

            <div class="input-group">
                <br/>
                <asp:TextBox class="form-control floating-label" id="passusuario" runat="server" type="password" placeholder="Contraseña Usuario" data-hint="">
                 </asp:TextBox>
            </div>

         <div class="input-group">
                <br/>
             <span class="label label-success">CIU Persona</span>
                    <asp:DropDownList ID="cuipersona" runat="server" DataSourceID="DataSourceMostrarPersona" DataTextField="cuiPersona" DataValueField="cuiPersona"></asp:DropDownList>
                    <asp:SqlDataSource ID="DataSourceMostrarPersona" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="procPersonaMostrarTodo" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        </div>

        <div class="input-group">
                <br/>
             <span class="label label-success">Identficador Rol</span>
            <asp:DropDownList ID="idrol" runat="server" DataSourceID="SqlDataSource1" DataTextField="nomRol" DataValueField="idRol"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="procRolMostrarTodo" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        </div>

                    <asp:LinkButton ID="linkBGuardar" CssClass="btn btn-success" runat="server">Guardar</asp:LinkButton>
                    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource3" DataKeyField="idUsuario">
                        <ItemTemplate>
                            idUsuario:
                            <asp:Label ID="idUsuarioLabel" runat="server" Text='<%# Eval("idUsuario") %>' />
                            <br />
                            nomUsuario:
                            <asp:Label ID="nomUsuarioLabel" runat="server" Text='<%# Eval("nomUsuario") %>' />
                            <br />
                            contraseñaUsuario:
                            <asp:Label ID="contraseñaUsuarioLabel" runat="server" Text='<%# Eval("contraseñaUsuario") %>' />
                            <br />
                            cuiPersona:
                            <asp:Label ID="cuiPersonaLabel" runat="server" Text='<%# Eval("cuiPersona") %>' />
                            <br />
                            estado:
                            <asp:Label ID="estadoLabel" runat="server" Text='<%# Eval("estado") %>' />
                            <br />
                            idRol:
                            <asp:Label ID="idRolLabel" runat="server" Text='<%# Eval("idRol") %>' />
                            <br />
<br />
                        </ItemTemplate>
                     </asp:DataList>

                     <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="procUsuarioCrear" SelectCommandType="StoredProcedure">
                         <SelectParameters>
                             <asp:ControlParameter ControlID="nomusuario" Name="nomUsuario" PropertyName="Text" Type="String" />
                             <asp:ControlParameter ControlID="passusuario" Name="contraseñaUsuario" PropertyName="Text" Type="String" />
                             <asp:ControlParameter ControlID="cuipersona" Name="cuiPersona" PropertyName="SelectedValue" Type="Int32" />
                             <asp:ControlParameter ControlID="idrol" Name="idRol" PropertyName="SelectedValue" Type="Int32" />
                         </SelectParameters>
                     </asp:SqlDataSource>

                     <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>

                </div>
            </div>
</div>


</asp:Content>

