<%@ Page Title="" Language="VB" MasterPageFile="~/layout.master" AutoEventWireup="false" CodeFile="crear.aspx.vb" Inherits="vistas_credito_crear" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Formulario Credito</title>
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
                                  
<span class="label label-success">Monto del Credito                                    </span>
    <div class="input-group">
        <span class="input-group-addon">Q</span>
        <input class="form-control floating-label" id="inMonto" runat="server" type="text" placeholder="000.00" data-hint="You should really write something here">
    </div>
<span class="label label-success">Tasa de Credito</span>
    <div class="input-group">
        <span class="input-group-addon">Q</span>
        <input class="form-control floating-label" id="Text1" runat="server" type="text" placeholder="000.00" data-hint="You should really write something here">
    </div>
        
<span class="label label-success">tipo Credito</span>               
<asp:DropDownList placeholder="000.00" ID="dtipoCredito" runat="server" DataSourceID="tipoCredito" DataTextField="nomTipCredito" DataValueField="idTipCredito" CssClass="form-control"></asp:DropDownList>

<span class="label label-success">Estado</span>
<asp:DropDownList ID="estados" runat="server"  CssClass="form-control" DataSourceID="EstadoCredito" DataTextField="nomEstado" DataValueField="idEstado"></asp:DropDownList>

<span class="label label-success">Años a Pagar</span>
                <input class="form-control floating-label" id="Text2" runat="server" type="text" placeholder="XX años" data-hint="You should really write something here">
    
                                
                                <asp:linkbutton id="btnGrabaCredito" runat="server" CssClass="btn btn-success">Grabar</asp:linkbutton>      
                            </div>
                  </div>
            </div>
       </div>
</div>
    <asp:SqlDataSource ID="EstadoCredito" runat="server" ConnectionString="<%$ ConnectionStrings:tonyBD %>" SelectCommand="procEstadoMostrarTodo" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    <asp:SqlDataSource ID="tipoCredito" runat="server" ConnectionString="<%$ ConnectionStrings:tonyBD %>" SelectCommand="procTipoCreditoMostrarTodo" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
</asp:Content>
