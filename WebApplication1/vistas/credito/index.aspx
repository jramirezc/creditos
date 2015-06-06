<%@ Page Title="" Language="VB" MasterPageFile="~/layout.master" AutoEventWireup="false" CodeFile="index.aspx.vb" Inherits="vistas_credito_index" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <title> Creditos</title>
    </asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="credito" Runat="Server">

   <div class="panel panel-material-blue-grey" >
                     <div class="panel-heading">
                            <h3 class="panel-title">Creditos</h3>
                     </div>
                     <div class="panel-body">
    <div class="row">
        <div class="col-sm-11">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table " DataKeyNames="idCredito" DataSourceID="vercreditos">
                <Columns>
                    <asp:BoundField DataField="idCredito" HeaderText="idCredito" InsertVisible="False" ReadOnly="True" SortExpression="idCredito" />
                    <asp:TemplateField HeaderText="Tipo de Credito" SortExpression="idTipCredito">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("idTipCredito") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("idTipCredito") %>' Visible="False"></asp:Label>
                            <asp:DataList ID="DataList1" runat="server" DataKeyField="idTipCredito" DataSourceID="muestraTipCredito">
                                <ItemTemplate>
                                    &nbsp;<asp:Label ID="nomTipCreditoLabel" runat="server" Text='<%# Eval("nomTipCredito") %>' />
                                </ItemTemplate>
                            </asp:DataList>
                            <asp:SqlDataSource ID="muestraTipCredito" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="procTipCreditoBuscar" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="Label1" DefaultValue="" Name="id" PropertyName="Text" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="monto" HeaderText="monto" SortExpression="monto" />
                    <asp:TemplateField HeaderText="Tasa" SortExpression="idTasa">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("idTasa") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("idTasa") %>' Visible="False"></asp:Label>
                            <asp:DataList ID="DataList2" runat="server" DataKeyField="idTasa" DataSourceID="tasaVerNombre">
                                <ItemTemplate>
                                    <asp:Label ID="nomTasaLabel" runat="server" Text='<%# Eval("nomTasa") %>' />
                                </ItemTemplate>
                            </asp:DataList>
                            <asp:SqlDataSource ID="tasaVerNombre" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="procTasaBuscar" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="Label2" Name="id" PropertyName="Text" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Estado" SortExpression="idEstado">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("idEstado") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("idEstado") %>' Visible="False"></asp:Label>
                            <asp:DataList ID="DataList3" runat="server" DataKeyField="idEstado" DataSourceID="estadoVerNombre">
                                <ItemTemplate>
                                    &nbsp;<asp:Label ID="nomEstadoLabel" runat="server" Text='<%# Eval("nomEstado") %>' />
                                </ItemTemplate>
                            </asp:DataList>
                            <asp:SqlDataSource ID="estadoVerNombre" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="procEstadoBuscar" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="Label3" Name="id" PropertyName="Text" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="mes" HeaderText="meses" SortExpression="mes" />
                    <asp:BoundField DataField="creado" HeaderText="creado" SortExpression="creado" />
                     <asp:HyperLinkField DataNavigateUrlFields="idCredito" DataNavigateUrlFormatString="~/credito/ver/{0}" DataTextField="idTipCredito" DataTextFormatString="&lt;i class=&quot;fa fa-eye fa-2x&quot;&gt;&lt;/i&gt;" >
                    <ControlStyle CssClass="btn btn-material-blue" />
                    </asp:HyperLinkField>
                    
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="vercreditos" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="procCreditoMostrarTodo" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        </div>
        <div class="col-sm-1 ">

            <a type="button" href="\credito/crear" class="btn btn-fab btn-raised  btn-material-green-600 "data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Tooltip on bottom"><i class="fa fa-plus-circle"></i></a>
        </div>
    </div>
    </div>

    </div>

</asp:Content>