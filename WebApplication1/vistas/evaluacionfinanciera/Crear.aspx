<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/layout.master" CodeBehind="Crear.aspx.vb" Inherits="WebApplication1.Crear2" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Formulario Evaluación Financiera</title>
    </asp:Content>

<asp:Content ID="Content9" ContentPlaceHolderID="crudevaluacionfinanciera" runat="server">

   <div class="row">
            <div class="col-sm-6 col-sm-offset-3">
                <div class="panel panel-success" >
                     <div class="panel-heading">
                            <h3 class="panel-title">Formulario Crear Evaluación Financiera</h3>
                     </div>
                    
                                                
            <div class="input-group">
                <spam class="label label-success"> SELECCIONE ID CREDITO </spam>
                <br/>
                <asp:DropDownList ID="idCredito" runat="server" DataSourceID="DataSourceMostrarIdCredito" DataTextField="idCredito" DataValueField="idCredito"></asp:DropDownList>

                <asp:SqlDataSource ID="DataSourceMostrarIdCredito" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="procCreditoMostrarTodo" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

            </div>
                   

                  <br/> 
                <div class="input-group">
                    <span class="input-group-addon">Q</span>
                    <asp:TextBox class="form-control floating-label" id="ingreso" runat="server" type="text" placeholder="Ingrese Monto de Ingreso" data-hint="">
                     </asp:TextBox>
                </div>
                

                 <br/> 
                <div class="input-group">
                    <span class="input-group-addon">Q</span>
                    <asp:TextBox class="form-control floating-label" id="egreso" runat="server" type="text" placeholder="Ingrese Monto de Egreso" data-hint="">
                     </asp:TextBox>
                </div>


                 <br/> 
                <div class="input-group">
                    <span class="input-group-addon">Q</span>
                    <asp:TextBox class="form-control floating-label" id="capital" runat="server" type="text" placeholder="Ingrese Monto de Capital" data-hint="">
                     </asp:TextBox>
                </div>

                  <br/> 
                <div class="input-group">
                    <span class="input-group-addon">Q</span>
                    <asp:TextBox class="form-control floating-label" id="capPago" runat="server" type="text" placeholder="Ingrese Capacidad de Pago" data-hint="">
                     </asp:TextBox>
                </div>

                    <asp:LinkButton ID="linkBGuardar" CssClass="btn btn-success" runat="server">Guardar</asp:LinkButton>

                    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="idEvaFinanciera" DataSourceID="DataSourceGuardarEvaFinan">
                        <Fields>
                            <asp:BoundField DataField="idEvaFinanciera" HeaderText="idEvaFinanciera" InsertVisible="False" ReadOnly="True" SortExpression="idEvaFinanciera" />
                            <asp:BoundField DataField="idCredito" HeaderText="idCredito" SortExpression="idCredito" />
                            <asp:BoundField DataField="ingresos" HeaderText="ingresos" SortExpression="ingresos" />
                            <asp:BoundField DataField="egresos" HeaderText="egresos" SortExpression="egresos" />
                            <asp:BoundField DataField="capital" HeaderText="capital" SortExpression="capital" />
                            <asp:BoundField DataField="capPago" HeaderText="capPago" SortExpression="capPago" />
                            <asp:CheckBoxField DataField="estado" HeaderText="estado" SortExpression="estado" />
                        </Fields>
                     </asp:DetailsView>
                    

                    

                    

                    

                     <asp:SqlDataSource ID="DataSourceGuardarEvaFinan" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="procEvaluacionFinancieraCrear" SelectCommandType="StoredProcedure">
                         <SelectParameters>
                             <asp:ControlParameter ControlID="idCredito" Name="idCredito" PropertyName="SelectedValue" Type="Int32" />
                             <asp:ControlParameter ControlID="ingreso" Name="ingresos" PropertyName="Text" Type="Decimal" />
                             <asp:ControlParameter ControlID="egreso" Name="egresos" PropertyName="Text" Type="Decimal" />
                             <asp:ControlParameter ControlID="capital" Name="capital" PropertyName="Text" Type="Decimal" />
                             <asp:ControlParameter ControlID="capPago" Name="capPago" PropertyName="Text" Type="Decimal" />
                         </SelectParameters>
                     </asp:SqlDataSource>
                    

                    

                    

                    

                </div>
            </div>
</div>


</asp:Content>
