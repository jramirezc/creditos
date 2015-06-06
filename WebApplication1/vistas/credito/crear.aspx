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

                <div class="input-group">
                    <span class="input-group-addon">Q</span>
                    <asp:TextBox class="form-control floating-label" id="inMonto" runat="server" type="text" placeholder="000.00" data-hint="You should really write something here">
                     </asp:TextBox>
                </div>
                        </div>
                    </div>
            </div>
        </div>
</div>

</asp:Content>
