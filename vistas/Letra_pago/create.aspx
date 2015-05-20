<%@ Page Title="" Language="C#" MasterPageFile="~/layout.master" AutoEventWireup="true" CodeFile="create.aspx.cs" Inherits="vistas_Letra_pago_create" %>


<asp:Content ID="Content5" ContentPlaceHolderID="letras" Runat="Server">
 <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title"><i class="mdi-action-extension"></i>Formulario</h3>
        </div>

                <div class="panel-body ">
                    <div class="row ">
                        <div class="col-sm-4  ">
                            
                            <span class="label label-primary">Ingrese</span>
                            <div class="label-material-green-50  ">
                                <asp:TextBox ID="TbxIdCredito" runat="server" CssClass="form-control floating-label" placeholder="Ingreso ID Credito"> </asp:TextBox>
                            </div>
                            
                            </br>
                            <span class="label label-primary">Ingrese</span>
                            <div class="label-material-green-50  ">
                                <asp:TextBox ID="TbxLetra" runat="server" CssClass="form-control" placeholder="Ingreso de letra"> </asp:TextBox>
                            </div>

                            </br>
                            <span class="label label-primary">Ingrese</span>
                            <div class="label-material-green-50  ">
                                <asp:TextBox ID="TxbSaldo" runat="server" CssClass="form-control" placeholder="Saldo"> </asp:TextBox>
                            </div>

                            </br>
                            <span class="label label-primary">Ingrese</span>
                            <div class="label-material-green-50  ">
                                <asp:TextBox ID="TbxInteresxMora" runat="server" CssClass="form-control" placeholder="Interes por mora"> </asp:TextBox>
                            </div>

                            </br>
                            <span class="label label-primary">Ingrese</span>
                            <div class="label-material-green-50  ">
                                <asp:TextBox ID="TbxEstado" runat="server" CssClass="form-control" placeholder="Estado"> </asp:TextBox>
                            </div>

                          

                        </div>
                    </div>
                <asp:Button ID="BtnLetraPagoCrear" runat="server" Text="Guardar" CssClass="btn btn-material-green" />

                    <button type="button" class="btn btn-default" aria-label="Left Align">
                        <span class="" aria-hidden="true"></span>
                    </button>

              
                </div>

</div>




    <asp:GridView ID="GridViewLetraPagoCrear" runat="server" AutoGenerateColumns="False" DataKeyNames="idletPago" DataSourceID="DataSourceLetraPagoCrear">
        <Columns>
            <asp:BoundField DataField="idletPago" HeaderText="idletPago" InsertVisible="False" ReadOnly="True" SortExpression="idletPago" />
            <asp:BoundField DataField="idCredito" HeaderText="idCredito" SortExpression="idCredito" />
            <asp:CheckBoxField DataField="letraPago" HeaderText="letraPago" SortExpression="letraPago" />
            <asp:BoundField DataField="Saldo" HeaderText="Saldo" SortExpression="Saldo" />
            <asp:CheckBoxField DataField="interesxMora" HeaderText="interesxMora" SortExpression="interesxMora" />
            <asp:CheckBoxField DataField="estado" HeaderText="estado" SortExpression="estado" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="DataSourceLetraPagoCrear" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="procLetraPagoCrear" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="TbxIdCredito" Name="idCredito" PropertyName="Text" Type="Int32" />
            <asp:ControlParameter ControlID="TbxLetra" Name="letraPago" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TxbSaldo" Name="Saldo" PropertyName="Text" Type="Decimal" />
            <asp:ControlParameter ControlID="TbxInteresxMora" Name="interesxMora" PropertyName="Text" Type="Int32" />
            <asp:ControlParameter ControlID="TbxEstado" Name="estad" PropertyName="Text" Type="Boolean" />
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>

