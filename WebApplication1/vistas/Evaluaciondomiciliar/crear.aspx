<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/layout.master" CodeBehind="crear.aspx.vb" Inherits="WebApplication1.crear1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Formulario Evaluacion Domiciliar</title>
    </asp:Content>


<asp:Content ID="Content11" ContentPlaceHolderID="Crudevaluaciondomiciliar" runat="server">

    <div class="row">
            <div class="col-sm-4 col-sm-offset-4">
                <div class="panel panel-success" >
                     <div class="panel-heading">
                            <h3 class="panel-title">Formulario Crear Evaluacion Domiciliar</h3>
                     </div>

                       <div class="input-group">

                            <div class="input-group">
                <br/>
             <span class="label label-success">ID CREDITO</span>
                                <br/>
                                <%Response.Write(Page.RouteData.Values("id"))%>

                                <asp:SqlDataSource ID="DataSourceevaluaciondomiciliar" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="procCreditoMostrarTodo" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        </div>
                           <div class="input-group">
                              <br/>
             <span class="label label-success">UBICACION</span>
                                <br/>
                           <asp:DropDownList ID="ubicacion" runat="server" DataSourceID="DataSourcecampo" DataTextField="nomCampo" DataValueField="idCampo"></asp:DropDownList>
                            
                            <asp:SqlDataSource ID="DataSourcecampo" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="procCampoMostrarTodo" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                            <asp:SqlDataSource ID="DataSourceidcampo" runat="server"></asp:SqlDataSource>
                            
        </div>
                <div class="input-group">
                      <br/>
             <span class="label label-success">SERVICIO AGUA</span>
                                <br/>
                    <asp:DropDownList ID="DropDownservicioagua" runat="server" DataSourceID="DataSourcedecision" DataTextField="nombre" DataValueField="iddecision"></asp:DropDownList>
                     <asp:SqlDataSource ID="DataSourcedecision" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="procDecisionMostrarTodo" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

        </div>
                <div class="input-group">
                 <br/>
             <span class="label label-success">SERVICIO LUZ</span>
                                <br/>
                    
                <asp:DropDownList ID="DropDownservicioluz" runat="server" DataSourceID="DataSourcedecision1" DataTextField="nombre" DataValueField="iddecision"></asp:DropDownList>
                <asp:SqlDataSource ID="DataSourcedecision1" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="procDecisionMostrarTodo" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

                </div>
                    
                           <div class="input-group">
                 <br/>
             <span class="label label-success">SERVICIO BASURA</span>
                                <br/>
                               <asp:DropDownList ID="DropDownserviciobasura" runat="server" DataSourceID="DataSourcebasura" DataTextField="nombre" DataValueField="iddecision"></asp:DropDownList>
                     <asp:SqlDataSource ID="DataSourcebasura" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="procDecisionMostrarTodo" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    
               
                </div>

                                     <div class="input-group">
                 <br/>
             <span class="label label-success">SERVICIO CABLE</span>
                                <br/>
                                         <asp:DropDownList ID="DropDowncable" runat="server" DataSourceID="DataSourceservcable" DataTextField="nombre" DataValueField="iddecision"></asp:DropDownList>
                    
                                         <asp:SqlDataSource ID="DataSourceservcable" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="procDecisionMostrarTodo" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    
               
                </div>
                    
                        <div class="input-group">
                <br/>
                <asp:TextBox class="form-control floating-label" id="area" runat="server" type="text" placeholder="INGRESE AREA" data-hint="">
                 </asp:TextBox>
            </div>


                            <asp:LinkButton ID="linkBGuardar" CssClass="btn btn-success" runat="server">Guardar</asp:LinkButton>
                </div>
                </div>
                </div>
               
                   
                </div>
                                        

                            <asp:SqlDataSource ID="DataSourceguaevadom" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="procEvaluacionDomiciliarCrear" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:RouteParameter Name="idCredito" RouteKey="id" Type="Int32" />
                                    <asp:ControlParameter ControlID="ubicacion" Name="idcampo" PropertyName="SelectedValue" Type="Int32" />
                                    <asp:ControlParameter ControlID="DropDownservicioagua" Name="agua" PropertyName="SelectedValue" Type="int32" />
                                    <asp:ControlParameter ControlID="DropDownservicioluz" Name="luz" PropertyName="SelectedValue" Type="int32" />
                                    <asp:ControlParameter ControlID="DropDownserviciobasura" Name="serbasura" PropertyName="SelectedValue" Type="int32" />
                                    <asp:ControlParameter ControlID="DropDowncable" Name="sercable" PropertyName="SelectedValue" Type="int32" />
                                    <asp:ControlParameter ControlID="area" Name="area" PropertyName="Text" Type="Decimal" />
                                </SelectParameters>
                            </asp:SqlDataSource>


                                        

                            <asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="DataSourceguaevadom" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="idEvaDomiciliar">
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
                                </Fields>
                            </asp:DetailsView>



                                        

</asp:Content>
