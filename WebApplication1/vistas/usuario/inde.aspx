﻿<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/layout.master" CodeBehind="inde.aspx.vb" Inherits="WebApplication1.index" %>


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
                                <asp:TemplateField HeaderText="Rol" SortExpression="idRol">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("idRol") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("idRol") %>' Visible="False"></asp:Label>
                                        <asp:DataList ID="DataList1" runat="server" DataKeyField="idRol" DataSourceID="rolVerNombre">
                                            <ItemTemplate>
                                                <asp:Label ID="nomRolLabel" runat="server" Text='<%# Eval("nomRol") %>' />
                                                <br />
                                            </ItemTemplate>
                                        </asp:DataList>
                                        <asp:SqlDataSource ID="rolVerNombre" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="procRolBuscar" SelectCommandType="StoredProcedure">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="Label1" Name="id" PropertyName="Text" Type="Int32" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </ItemTemplate>
                                </asp:TemplateField>
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
