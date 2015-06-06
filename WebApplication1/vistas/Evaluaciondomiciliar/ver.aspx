<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/layout.master" CodeBehind="ver.aspx.vb" Inherits="WebApplication1.ver1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Formulario Evaluacion Domiciliar</title>
    </asp:Content>

<asp:Content ID="Content9" ContentPlaceHolderID="Crudevaluaciondomiciliar" runat="server">

    <div class="row">
            <div class="col-sm-6 col-sm-offset-3">
                <div class="panel panel-warning" >
                     <div class="panel-heading">
                            <h3 class="panel-title">Formulario ver usuario</h3>
                     </div>
                     <div class="panel-body">
                            <div class="form-group">

                                <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="idEvaDomiciliar" DataSourceID="DataSourceverevadom">
                                    <Fields>
                                        <asp:BoundField DataField="idEvaDomiciliar" HeaderText="idEvaDomiciliar" InsertVisible="False" ReadOnly="True" SortExpression="idEvaDomiciliar" />
                                        <asp:BoundField DataField="idCredito" HeaderText="idCredito" SortExpression="idCredito" />
                                        <asp:BoundField DataField="idCampo" HeaderText="idCampo" SortExpression="idCampo" />
                                        <asp:CheckBoxField DataField="agua" HeaderText="agua" SortExpression="agua" />
                                        <asp:CheckBoxField DataField="luz" HeaderText="luz" SortExpression="luz" />
                                        <asp:CheckBoxField DataField="serBasura" HeaderText="serBasura" SortExpression="serBasura" />
                                        <asp:CheckBoxField DataField="serCable" HeaderText="serCable" SortExpression="serCable" />
                                        <asp:BoundField DataField="area" HeaderText="area" SortExpression="area" />
                                        <asp:CheckBoxField DataField="estado" HeaderText="estado" SortExpression="estado" />
                                        <asp:CommandField ShowEditButton="True" />
                                    </Fields>
                                </asp:DetailsView>
                            


                                <asp:SqlDataSource ID="DataSourceverevadom" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="procEvaluacionDomiciliarBuscar" SelectCommandType="StoredProcedure" UpdateCommand="UPDATE [Tbl_EvaluacionDomiciliar] SET [idCredito] = @idCredito, [idCampo] = @idCampo, [agua] = @agua, [luz] = @luz, [serBasura] = @serBasura, [serCable] = @serCable, [area] = @area, [estado] = @estado WHERE [idEvaDomiciliar] = @original_idEvaDomiciliar" OldValuesParameterFormatString="original_{0}">
                                    <SelectParameters>
                                        <asp:RouteParameter Name="id" RouteKey="id" Type="Int32" />
                                    </SelectParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="idCredito" Type="Int32" />
                                        <asp:Parameter Name="idCampo" Type="Int32" />
                                        <asp:Parameter Name="agua" Type="Boolean" />
                                        <asp:Parameter Name="luz" Type="Boolean" />
                                        <asp:Parameter Name="serBasura" Type="Boolean" />
                                        <asp:Parameter Name="serCable" Type="Boolean" />
                                        <asp:Parameter Name="area" Type="Decimal" />
                                        <asp:Parameter Name="estado" Type="Boolean" />
                                        <asp:Parameter Name="original_idEvaDomiciliar" Type="Int32" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                            


                            </div>
                  </div>
            </div>
       </div>
</div>





</asp:Content>

 