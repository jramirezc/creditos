<%@ Page Title="" Language="VB" MasterPageFile="~/layout.master" AutoEventWireup="false" CodeFile="ver.aspx.vb" Inherits="vistas_credito_ver" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Formulario Buscar Credito</title>
    </asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="credito" Runat="Server">
    
        <div class="row">
            <div class="col-sm-6 col-sm-offset-3">
                <div class="panel panel-success" >
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
                                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CssClass="table" DataKeyNames="idCredito" DataSourceID="verCreditosql" Height="50px" Width="125px">
                                    <Fields>
                                        <asp:BoundField DataField="idCredito" HeaderText="idCredito" InsertVisible="False" ReadOnly="True" SortExpression="idCredito" />
                                        <asp:BoundField DataField="idTipCredito" HeaderText="idTipCredito" SortExpression="idTipCredito" />
                                        <asp:BoundField DataField="monto" HeaderText="monto" SortExpression="monto" />
                                        <asp:BoundField DataField="tasInteres" HeaderText="tasInteres" SortExpression="tasInteres" />
                                        <asp:BoundField DataField="idusuarioAgente" HeaderText="idusuarioAgente" ReadOnly="True" SortExpression="idusuarioAgente" />
                                        <asp:BoundField DataField="idEstado" HeaderText="idEstado" SortExpression="idEstado" />
                                        <asp:BoundField DataField="años" HeaderText="años" SortExpression="años" />
                                        <asp:BoundField DataField="creado" HeaderText="creado" ReadOnly="True" SortExpression="creado" />
                                        <asp:CommandField ShowEditButton="True" EditText="&lt;i class=&quot;fa fa-pencil-square-o&quot;&gt;&lt;/i&gt; Editar">
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


