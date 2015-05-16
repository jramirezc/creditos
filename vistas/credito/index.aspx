<%@ Page Title="" Language="VB" MasterPageFile="~/layout.master" AutoEventWireup="false" CodeFile="index.aspx.vb" Inherits="vistas_credito_index" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <title> Creditos</title>
    </asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="credito" Runat="Server">

   <div class="panel panel-material-blue-grey" >
                     <div class="panel-heading">
                            <h3 class="panel-title">Formulario Crear Credito</h3>
                     </div>
                     <div class="panel-body">
    <div class="row">
        <div class="col-sm-11">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="idCredito" DataSourceID="vercreditos" CssClass="table ">
                <Columns>
                    <asp:BoundField DataField="idCredito" HeaderText="idCredito" SortExpression="idCredito" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="idTipCredito" HeaderText="idTipCredito" SortExpression="idTipCredito" />
                    <asp:BoundField DataField="monto" HeaderText="monto" SortExpression="monto" />
                    <asp:BoundField DataField="tasInteres" HeaderText="tasInteres" SortExpression="tasInteres" />
                    <asp:BoundField DataField="idusuarioAgente" HeaderText="idusuarioAgente" SortExpression="idusuarioAgente" />
                    <asp:BoundField DataField="idEstado" HeaderText="idEstado" SortExpression="idEstado" />
                    <asp:BoundField DataField="años" HeaderText="años" SortExpression="años" />
                    <asp:BoundField DataField="creado" HeaderText="creado" SortExpression="creado" />
                    <asp:HyperLinkField DataNavigateUrlFields="idCredito" DataNavigateUrlFormatString="~/credito/ver/{0}" DataTextField="idTipCredito" DataTextFormatString="&lt;i class=&quot;fa fa-eye fa-2x&quot;&gt;&lt;/i&gt;" >
                    <ControlStyle CssClass="btn btn-material-blue" />
                    </asp:HyperLinkField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="vercreditos" runat="server" ConnectionString="<%$ ConnectionStrings:tonyBD %>" SelectCommand="procCreditoMostrarTodo" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        </div>
        <div class="col-sm-1 ">
            <a type="button" href="\credito/crear" class="btn btn-fab btn-raised  btn-material-green "><i class="fa fa-plus-circle"></i></a>
        </div>
    </div>
    </div>

    </div>

</asp:Content>