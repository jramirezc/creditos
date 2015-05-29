<%@ Page Title="" Language="VB" MasterPageFile="~/layout.master" AutoEventWireup="false" CodeFile="crear.aspx.vb" Inherits="vistas_Letra_pago_crear" %>

<asp:Content ID="Content6" ContentPlaceHolderID="letras" Runat="Server">
   <div class="row">
            <div class="col-sm-6 col-sm-offset-2">
     <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title"><i class="mdi-action-extension"></i>Formulario</h3>
         </div>

         <div class="panel-body ">
                  
                       
                                                        
                            <span class="label label-success">Ingrese</span>
                            <div class="label-material-green-50  ">
                                <asp:TextBox ID="TbxIdCredito" runat="server" CssClass="form-control floating-label" placeholder="ID Credito"> </asp:TextBox>
                            </div>
                            
                            </br>             
                            <span class="label label-success">Ingrese</span>
                            <div class="label-material-green-50  ">
                                <asp:TextBox ID="TexLetraPago" runat="server" CssClass="form-control floating-label" placeholder="Letra Pago"> </asp:TextBox>
                            </div>              
                        
                            </br>             
                            <span class="label label-success">Ingrese</span>
                            <div class="label-material-green-50  ">
                                <asp:TextBox ID="TexSaldo" runat="server" CssClass="form-control floating-label" placeholder="Saldo"> </asp:TextBox>
                            </div>

                            </br>             
                            <span class="label label-success">Ingrese</span>
                            <div class="label-material-green-50  ">
                                <asp:TextBox ID="TexInteresxMora" runat="server" CssClass="form-control floating-label" placeholder="Interes por mora"> </asp:TextBox>
                            </div>

                                                    
                                
                             <asp:linkbutton id="btnGrabaLetraPago" runat="server" CssClass="btn btn-success">Grabar</asp:linkbutton>     
                            </div>
                               

                            

                      
                   

              </div>
</div>
 </div>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="idletPago" DataSourceID="SRCletraPagoMostar" Width="506px">
        <Columns>
            <asp:BoundField DataField="idletPago" HeaderText="idletPago" InsertVisible="False" ReadOnly="True" SortExpression="idletPago" />
            <asp:BoundField DataField="idCredito" HeaderText="idCredito" SortExpression="idCredito" />
            <asp:BoundField DataField="letraPago" HeaderText="letraPago" SortExpression="letraPago" />
            <asp:BoundField DataField="Saldo" HeaderText="Saldo" SortExpression="Saldo" />
            <asp:BoundField DataField="interesxMora" HeaderText="interesxMora" SortExpression="interesxMora" />
      
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SRCletraPagoMostar" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="procLetraPagoCrear" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="TbxIdCredito" Name="idCredito" PropertyName="Text" Type="Int32" />
            <asp:ControlParameter ControlID="TexLetraPago" Name="letraPago" PropertyName="Text" Type="Decimal" />
            <asp:ControlParameter ControlID="TexSaldo" Name="Saldo" PropertyName="Text" Type="Decimal" />
            <asp:ControlParameter ControlID="TexInteresxMora" Name="interesxMora" PropertyName="Text" Type="Int32" />
   
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>


