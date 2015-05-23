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
        <asp:TextBox class="form-control floating-label" id="inMonto" runat="server" type="text" placeholder="000.00" data-hint="You should really write something here">
            </asp:TextBox>
    </div>
<span class="label label-success">Tasa de Credito</span>
    <div class="input-group">
        <span class="input-group-addon">Q</span>
        
    </div>
        
<span class="label label-success">tipo Credito</span>               
<asp:DropDownList placeholder="000.00" ID="dtipoCredito" runat="server" DataSourceID="tipoCredito" DataTextField="nomTipCredito" DataValueField="idTipCredito" CssClass="form-control"></asp:DropDownList>

<span class="label label-success">Tasas</span>
<asp:DropDownList ID="estados" runat="server"  CssClass="form-control" DataSourceID="tasas" DataTextField="nomTasa" DataValueField="idTasa"></asp:DropDownList>

<span class="label label-success">Meses a Pagar</span>
                <asp:TextBox class="form-control floating-label" id="años" runat="server" type="text" placeholder="XX años" data-hint="You should really write something here">
                    </asp:TextBox>
    
                                
                                <asp:linkbutton id="btnGrabaCredito" runat="server" CssClass="btn btn-success">Grabar</asp:linkbutton>      
                            </div>
                  </div>
            </div>
       </div>
</div>

    <asp:GridView ID="muestrainsertadocredito" runat="server" DataSourceID="srcCreditoCrear" AutoGenerateColumns="False" DataKeyNames="idCredito">
        <Columns>
            <asp:BoundField DataField="idCredito" HeaderText="idCredito" InsertVisible="False" ReadOnly="True" SortExpression="idCredito" />
            <asp:BoundField DataField="idTipCredito" HeaderText="idTipCredito" SortExpression="idTipCredito" />
            <asp:BoundField DataField="monto" HeaderText="monto" SortExpression="monto" />
            <asp:BoundField DataField="idTasa" HeaderText="idTasa" SortExpression="idTasa" />
            <asp:BoundField DataField="idEstado" HeaderText="idEstado" SortExpression="idEstado" />
            <asp:BoundField DataField="mes" HeaderText="mes" SortExpression="mes" />
            <asp:BoundField DataField="creado" HeaderText="creado" SortExpression="creado" />
        </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="srcCreditoCrear" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="procCreditoCrear" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="dtipoCredito" Name="idTipCredito" PropertyName="SelectedValue" Type="Int32" />
                <asp:ControlParameter ControlID="inMonto" Name="monto" PropertyName="Text" Type="Decimal" />
                <asp:ControlParameter ControlID="estados" Name="idTasa" PropertyName="SelectedValue" Type="Int32" />
                <asp:ControlParameter ControlID="años" Name="años" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

    <asp:SqlDataSource ID="tasas" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="procTasaMostrarTodo" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    <asp:SqlDataSource ID="tipoCredito" runat="server" ConnectionString="<%$ ConnectionStrings:tonyBD %>" SelectCommand="procTipoCreditoMostrarTodo" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        
</asp:Content>
