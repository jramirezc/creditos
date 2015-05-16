<%@ Page Title="" Language="VB" MasterPageFile="~/layout.master" AutoEventWireup="false" CodeFile="buscar.aspx.vb" Inherits="vistas_credito_buscar" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Formulario Buscar Credito</title>
    </asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="credito" Runat="Server">
    
        <div class="row">
            <div class="col-sm-6 col-sm-offset-3">
                <div class="panel panel-success" >
                     <div class="panel-heading">
                            <h3 class="panel-title">Formulario Crear Credito</h3>
                     </div>
                     <div class="panel-body">
                            <div class="form-group">
                             
<asp:DropDownList ID="buscarcredito" runat="server" CssClass="form-control" DataSourceID="listacredito" DataTextField="nomUsuario" DataValueField="idUsuario">
                                </asp:DropDownList>
                                
                                <asp:SqlDataSource ID="listacredito" runat="server" ConnectionString="<%$ ConnectionStrings:creditoConnectionString %>" SelectCommand="procUsuarioMostrarTodo" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                

                                
                                <asp:linkbutton id="btnBuscarCredito" runat="server" CssClass="btn btn-success" >Ver</asp:linkbutton>      
                            </div>
                  </div>
            </div>
       </div>
</div>
   
</asp:Content>
