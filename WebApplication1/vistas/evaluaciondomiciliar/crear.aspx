<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/layout.master" CodeBehind="crear.aspx.vb" Inherits="WebApplication1.crear" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Formulario Crear Evaluacion Domiciliar de Credito</title>
    </asp:Content>


<asp:Content ID="Content8" ContentPlaceHolderID="CrudEvaluacionDomiciliar" runat="server">
    <div class="row">
            <div class="col-sm-6 col-sm-offset-3">
                <div class="panel panel-success" >
                     <div class="panel-heading">
                            <h3 class="panel-title">Formulario Crear Evaluacion Domiciliar</h3>
                     </div>


                         <div class="panel-body">
                            <div class="form-group">

    <div class="input-group">
        <br/>
        <asp:TextBox class="form-control floating-label" id="idCredito" runat="server" type="text" placeholder="ingrese IdCredito" data-hint="">
            </asp:TextBox>
        <br/>
        <asp:TextBox class="form-control floating-label" id="idCampo" runat="server" type="text" placeholder="ingrese IdCampo" data-hint="">
            </asp:TextBox>
        <br/>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="nombre" DataValueField="iddecision"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="procDecisionMostrarTodo" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            </asp:TextBox>
        <br/>
        <asp:TextBox class="form-control floating-label" id="luz" runat="server" type="text" placeholder="Luz" data-hint="">
            </asp:TextBox>
         <br/>
        <asp:TextBox class="form-control floating-label" id="SerBasura" runat="server" type="text" placeholder="SerBasura" data-hint="">
            </asp:TextBox>
        <br/>
        <asp:TextBox class="form-control floating-label" id="SerCable" runat="server" type="text" placeholder="SerCable" data-hint="">
            </asp:TextBox>
        <br/>
        <asp:TextBox class="form-control floating-label" id="Area" runat="server" type="text" placeholder="Area" data-hint="">
            </asp:TextBox>
    </div>


                            </div>
                        </div>
                </div>
            </div>
</div>



</asp:Content>
