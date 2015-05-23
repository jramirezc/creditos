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
                             
                                    
                                <asp:SqlDataSource ID="verCreditosql" runat="server" ConnectionString="<%$ ConnectionStrings:tonyBD %>" SelectCommand="procCreditoBuscar" SelectCommandType="StoredProcedure" UpdateCommand="UPDATE Tbl_Credito SET idTipCredito = @idTipCredito, monto = @monto, tasInteres = @tasInteres , años = @años, idEstado = @idEstado">
                                    <SelectParameters>
                                        <asp:RouteParameter Name="id" RouteKey="id" Type="Int32" />
                                    </SelectParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="idTipCredito" />
                                        <asp:Parameter Name="monto" />
                                        <asp:Parameter Name="tasInteres" />
                                        <asp:Parameter Name="años" />
                                        <asp:Parameter Name="idEstado" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CssClass="table" DataKeyNames="idCredito" DataSourceID="verCreditosql" Height="50px" Width="125px">
                                    <Fields>
                                        <asp:BoundField DataField="idCredito" HeaderText="idCredito" InsertVisible="False" ReadOnly="True" SortExpression="idCredito" />
                                        <asp:BoundField DataField="idTipCredito" HeaderText="idTipCredito" SortExpression="idTipCredito" />
                                        <asp:BoundField DataField="monto" HeaderText="monto" SortExpression="monto" />
                                        <asp:BoundField DataField="tasInteres" HeaderText="tasInteres" SortExpression="tasInteres" />
                                        <asp:BoundField DataField="idusuarioAgente" HeaderText="idusuarioAgente" ReadOnly="True" SortExpression="idusuarioAgente" />
                                        <asp:TemplateField HeaderText="idEstado" SortExpression="idEstado">
                                            <EditItemTemplate>
                                                <asp:DropDownList ID="DropDownList1" runat="server"  SelectedValue='<%# Bind("idEstado") %>' CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="nomEstado" DataValueField="idEstado">
                                                </asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tonyBD %>" SelectCommand="procEstadoMostrarTodo" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                            </EditItemTemplate>
                                            <InsertItemTemplate>
                                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("idEstado") %>'></asp:TextBox>
                                            </InsertItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("idEstado") %>'></asp:Label>
                                                <asp:Label ID="Label2" runat="server"></asp:Label>
                                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:tonyBD %>" SelectCommand="SELECT [nomEstado] FROM [Tbl_Estado] WHERE ([idEstado] = @idEstado)">
                                                    <SelectParameters>
                                                        <asp:ControlParameter ControlID="Label1" Name="idEstado" PropertyName="Text" Type="Int32" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                                <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource2" Height="50px" Width="125px">
                                                    <Fields>
                                                        <asp:BoundField DataField="nomEstado" SortExpression="nomEstado" />
                                                    </Fields>
                                                </asp:DetailsView>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="años" HeaderText="años" SortExpression="años" />
                                        <asp:BoundField DataField="creado" HeaderText="creado" ReadOnly="True" SortExpression="creado" />
                                        <asp:CommandField ShowEditButton="True" EditText="&lt;i class=&quot;fa fa-pencil-square-o&quot;&gt;&lt;/i&gt; Editar" UpdateText="&lt;i class=&quot;fa fa-floppy-o&quot;&gt;&lt;/i&gt;Grabar">
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


