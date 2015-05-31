<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/layout.master" CodeBehind="index.aspx.vb" Inherits="WebApplication1.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Formulario Evalucaion Credito</title>
    </asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="CrudEvaluacionDomiciliar" runat="server">

<div class="panel panel-material-blue-grey" >
        <div class="panel-heading">
            <h3 class="panel-title">Evaluacion Domiciliar</h3>
        </div>
                
    
            <div class="panel-body">
                <div class="col-sm-11">

                    <asp:gridview runat="server" AutoGenerateColumns="False" DataKeyNames="idEvaDomiciliar" DataSourceID="DataSourceevaluaciondomiciliarmostrar">
                        <Columns>
                            <asp:BoundField DataField="idEvaDomiciliar" HeaderText="idEvaDomiciliar" InsertVisible="False" ReadOnly="True" SortExpression="idEvaDomiciliar" />
                            <asp:BoundField DataField="idCredito" HeaderText="idCredito" SortExpression="idCredito" />
                            <asp:BoundField DataField="idCampo" HeaderText="idCampo" SortExpression="idCampo" />
                            <asp:CheckBoxField DataField="agua" HeaderText="agua" SortExpression="agua" />
                            <asp:CheckBoxField DataField="luz" HeaderText="luz" SortExpression="luz" />
                            <asp:CheckBoxField DataField="serBasura" HeaderText="serBasura" SortExpression="serBasura" />
                            <asp:CheckBoxField DataField="serCable" HeaderText="serCable" SortExpression="serCable" />
                            <asp:BoundField DataField="area" HeaderText="area" SortExpression="area" />
                            <asp:CheckBoxField DataField="estado" HeaderText="estado" SortExpression="estado" />
                        </Columns>
                    </asp:gridview>


                    <asp:SqlDataSource ID="DataSourceevaluaciondomiciliarmostrar" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="procEvaluacionDomiciliarMostrarTodo" SelectCommandType="StoredProcedure"></asp:SqlDataSource>


                </div>
              

            </div>

</div>



</asp:Content>

