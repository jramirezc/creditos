<%@ Page Title="" Language="C#" MasterPageFile="~/layout.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="vistas_credito_index" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <title> Creditos</title>
    </asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="credito" Runat="Server">
    <div class="row">
        <div class="col-sm-6">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="idCredito" DataSourceID="vercreditos">
                <Columns>
                    <asp:BoundField DataField="idCredito" HeaderText="idCredito" InsertVisible="False" ReadOnly="True" SortExpression="idCredito" />
                    <asp:BoundField DataField="idTipCredito" HeaderText="idTipCredito" SortExpression="idTipCredito" />
                    <asp:BoundField DataField="monto" HeaderText="monto" SortExpression="monto" />
                    <asp:BoundField DataField="tasInteres" HeaderText="tasInteres" SortExpression="tasInteres" />
                    <asp:BoundField DataField="idusuarioAgente" HeaderText="idusuarioAgente" SortExpression="idusuarioAgente" />
                    <asp:BoundField DataField="idEstado" HeaderText="idEstado" SortExpression="idEstado" />
                    <asp:BoundField DataField="letras" HeaderText="letras" SortExpression="letras" />
                    <asp:BoundField DataField="creado" HeaderText="creado" SortExpression="creado" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="vercreditos" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="procCreditoMostrarTodo" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        </div>
        <div class="col-sm-6">
            <a type="button" href="\credito/crear" class="btn btn-material-blue-grey">Nuevo</a>
        </div>
    </div>
</asp:Content>

