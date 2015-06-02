<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/layout.master" CodeBehind="index.aspx.vb" Inherits="WebApplication1.index1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <title> Evaluacion Domiciliar</title>
    </asp:Content>

<asp:Content ID="Content11" ContentPlaceHolderID="Crudevaluaciondomiciliar" runat="server">

    <div class="panel panel-material-blue-grey" >
        <div class="panel-heading">
            <h3 class="panel-title">Usuarios</h3>
        </div>
                
    
            <div class="panel-body">
                    <div class="col-sm-11">
                        <asp:GridView ID="GridViewmostrar" runat="server" AutoGenerateColumns="False" DataKeyNames="idEvaDomiciliar" DataSourceID="DataSourcemostrasevaluacionfinanciera">
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
                        </asp:GridView>



                        <asp:SqlDataSource ID="DataSourcemostrasevaluacionfinanciera" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="procEvaluacionDomiciliarMostrarTodo" SelectCommandType="StoredProcedure"></asp:SqlDataSource>



                        </div>

                            <div class="col-sm-1 ">
                                <a type="button" href="\usuario/crear" class="btn btn-fab btn-raised  btn-material-green-600 "data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Tooltip on bottom"><i class="fa fa-plus-circle"></i></a>
                            </div>
              

            </div>

</div>



</asp:Content>
