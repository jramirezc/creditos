<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/layout.master" CodeBehind="index.aspx.vb" Inherits="WebApplication1.index2" %>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <title> Evaluación Financiera</title>
    </asp:Content>

<asp:Content ID="Content9" ContentPlaceHolderID="crudevaluacionfinanciera" runat="server">

     <div class="panel panel-material-blue-grey" >
                     <div class="panel-heading">
                            <h3 class="panel-title">Evaluación Financiera</h3>
                     </div>


                    
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="idEvaFinanciera" DataSourceID="DataSourceEvaluacionFinancieraMostrarTodo">
             <Columns>
                 <asp:BoundField DataField="idEvaFinanciera" HeaderText="idEvaFinanciera" InsertVisible="False" ReadOnly="True" SortExpression="idEvaFinanciera" />
                 <asp:BoundField DataField="idCredito" HeaderText="idCredito" SortExpression="idCredito" />
                 <asp:BoundField DataField="ingresos" HeaderText="ingresos" SortExpression="ingresos" />
                 <asp:BoundField DataField="egresos" HeaderText="egresos" SortExpression="egresos" />
                 <asp:BoundField DataField="capital" HeaderText="capital" SortExpression="capital" />
                 <asp:BoundField DataField="capPago" HeaderText="capPago" SortExpression="capPago" />
                 <asp:CheckBoxField DataField="estado" HeaderText="estado" SortExpression="estado" />
             </Columns>
                     </asp:GridView>


                     <asp:SqlDataSource ID="DataSourceEvaluacionFinancieraMostrarTodo" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="procEvaluacionFinancierarMostrarTodo" SelectCommandType="StoredProcedure"></asp:SqlDataSource>


     </div>
</asp:Content>
