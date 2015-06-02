<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/layout.master" CodeBehind="inde.aspx.vb" Inherits="WebApplication1.index" %>


<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <title> Usuarios</title>
    </asp:Content>

<asp:Content ID="Content8" ContentPlaceHolderID="crudusuario" runat="server">

<div class="panel panel-material-blue-grey" >
        <div class="panel-heading">
            <h3 class="panel-title">Usuarios</h3>
        </div>
                
    
            <div class="panel-body">
                    <div class="col-sm-11">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table" DataKeyNames="idUsuario" DataSourceID="SqlDataSourceVerUsuario">
                            <Columns>
                                <asp:BoundField DataField="idUsuario" HeaderText="idUsuario" InsertVisible="False" ReadOnly="True" SortExpression="idUsuario" />
                                <asp:BoundField DataField="nomUsuario" HeaderText="nomUsuario" SortExpression="nomUsuario" />
                                <asp:BoundField DataField="contraseñaUsuario" HeaderText="contraseñaUsuario" SortExpression="contraseñaUsuario" />
                                <asp:BoundField DataField="cuiPersona" HeaderText="cuiPersona" SortExpression="cuiPersona" />
                                <asp:CheckBoxField DataField="estado" HeaderText="estado" SortExpression="estado" />
                                <asp:BoundField DataField="idRol" HeaderText="idRol" SortExpression="idRol" />
                                <asp:HyperLinkField DataNavigateUrlFields="idUsuario" DataNavigateUrlFormatString="~/usuario/ver/{0}" DataTextField="idUsuario" DataTextFormatString="&lt;i class=&quot;fa fa-eye fa-2x&quot;&gt;&lt;/i&gt;" />
                            </Columns>
                        </asp:GridView>

                            <asp:SqlDataSource ID="SqlDataSourceVerUsuario" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="procUsuarioMostrarTodo" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                        </div>
                            <div class="col-sm-1 ">
                                <a type="button" href="\usuario/crear" class="btn btn-fab btn-raised  btn-material-green-600 "data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Tooltip on bottom"><i class="fa fa-plus-circle"></i></a>
                            </div>
              

            </div>

</div>



</asp:Content>
