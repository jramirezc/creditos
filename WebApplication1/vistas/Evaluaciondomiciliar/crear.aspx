<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/layout.master" CodeBehind="crear.aspx.vb" Inherits="WebApplication1.crear1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Formulario Evaluacion Domiciliar</title>
    </asp:Content>


<asp:Content ID="Content11" ContentPlaceHolderID="Crudevaluaciondomiciliar" runat="server">

    <div class="row">
            <div class="col-sm-6 col-sm-offset-3">
                <div class="panel panel-success" >
                     <div class="panel-heading">
                            <h3 class="panel-title">Formulario Crear Evaluacion Domiciliar</h3>
                     </div>

                       <div class="input-group">
                <br/>
                <asp:TextBox class="form-control floating-label" id="nomusuario" runat="server" type="text" placeholder="Nombre Usuario" data-hint="">
                 </asp:TextBox>
            </div>

</asp:Content>
