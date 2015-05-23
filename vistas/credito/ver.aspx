<%@ Page Title="" Language="VB" MasterPageFile="~/layout.master" AutoEventWireup="false" CodeFile="ver.aspx.vb" Inherits="vistas_credito_ver" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Formulario Buscar Credito</title>
    </asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="credito" Runat="Server">
    
        <div class="row">
            <div class="col-sm-6 col-sm-offset-3">
                <div class="panel panel-warning" >
                     <div class="panel-heading">
                            <h3 class="panel-title">Formulario Crear Credito</h3>
                     </div>
                     <div class="panel-body">
                            <div class="form-group">
                             
                                    
                                <asp:SqlDataSource ID="verCreditosql" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="procCreditoBuscar" SelectCommandType="StoredProcedure" UpdateCommand="UPDATE Tbl_Credito SET idTipCredito = @idTipCredito, monto = @monto,  mes = @mes, idEstado = @idEstado, idTasa = @idTasa where idCredito=@idCredito">
                                    <SelectParameters>
                                        <asp:RouteParameter Name="id" RouteKey="id" Type="Int32" DefaultValue="" />
                                    </SelectParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="idTipCredito" />
                                        <asp:Parameter Name="monto" />
                                        <asp:Parameter Name="mes" />
                                        <asp:Parameter Name="idEstado" />
                                        <asp:Parameter Name="idTasa" />
                                        <asp:Parameter Name="idCredito" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CssClass="table" DataKeyNames="idCredito" DataSourceID="verCreditosql" Height="50px" Width="125px">
                                    <Fields>
                                        <asp:BoundField DataField="idCredito" HeaderText="idCredito" InsertVisible="False" ReadOnly="True" SortExpression="idCredito" />
                                        <asp:BoundField DataField="idTipCredito" HeaderText="idTipCredito" SortExpression="idTipCredito" />
                                        <asp:BoundField DataField="monto" HeaderText="monto" SortExpression="monto" />
                                        <asp:TemplateField HeaderText="idTasa" SortExpression="idTasa">
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="srcTasasMostarTodo" DataTextField="nomTasa" DataValueField="idTasa" SelectedValue='<%# Bind("idTasa") %>' CssClass="form-control">
                                                </asp:DropDownList>
                                                <asp:SqlDataSource ID="srcTasasMostarTodo" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="procTasaMostrarTodo" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                            </EditItemTemplate>
                                            <InsertItemTemplate>
                                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("idTasa") %>'></asp:TextBox>
                                            </InsertItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("idTasa") %>' Visible="False"></asp:Label>
                                                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
                                                    <ItemTemplate>
                                                        &nbsp;<asp:Label ID="nomTasaLabel" runat="server" Text='<%# Eval("nomTasa") %>' />
                                                        <br />
                                                    </ItemTemplate>
                                                </asp:DataList>
                                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="SELECT [nomTasa] FROM [Tbl_Tasa] WHERE ([idTasa] = @idTasa)">
                                                    <SelectParameters>
                                                        <asp:ControlParameter ControlID="Label1" Name="idTasa" PropertyName="Text" Type="Int32" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="idEstado" SortExpression="idEstado">
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" DataSourceID="srcEstadoMostarTodo" DataTextField="nomEstado" DataValueField="idEstado" SelectedValue='<%# Bind("idEstado") %>'>
                                                </asp:DropDownList>
                                                <asp:SqlDataSource ID="srcEstadoMostarTodo" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="procEstadoMostrarTodo" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                            </EditItemTemplate>
                                            <InsertItemTemplate>
                                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("idEstado") %>'></asp:TextBox>
                                            </InsertItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("idEstado") %>' Visible="False"></asp:Label>
                                                <asp:SqlDataSource ID="srcEstadoBuscar" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="SELECT [nomEstado] FROM [Tbl_Estado] WHERE ([idEstado] = @idEstado)">
                                                    <SelectParameters>
                                                        <asp:ControlParameter ControlID="Label2" Name="idEstado" PropertyName="Text" Type="Int32" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                                <asp:DataList ID="DataList2" runat="server" DataSourceID="srcEstadoBuscar">
                                                    <ItemTemplate>
                                                        &nbsp;<asp:Label ID="nomEstadoLabel" runat="server" Text='<%# Eval("nomEstado") %>' />
                                                        <br />
                                                    </ItemTemplate>
                                                </asp:DataList>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="mes" HeaderText="mes" SortExpression="mes" />
                                        <asp:BoundField DataField="creado" HeaderText="creado" SortExpression="creado" />
                                        <asp:CommandField ShowEditButton="True">
                                        <ControlStyle CssClass="btn btn-warning" />
                                        </asp:CommandField>
                                    </Fields>
                                </asp:DetailsView>

                                
                                
                            </div>
                  </div>
            </div>
       </div>
</div>
   
</asp:Content>


