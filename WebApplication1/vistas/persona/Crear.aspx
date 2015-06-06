<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/layout.master" CodeBehind="Crear.aspx.vb" Inherits="WebApplication1.Crear1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Formulario Persona</title>
    </asp:Content>

<asp:Content ID="Content10" ContentPlaceHolderID="crudpersona" runat="server">
    <div class="row">
        <div class="col-sm-6 col-sm-offset-3">
            <div class="panel panel-success" >
                <div class="panel-heading">
                    <h3 class="panel-title">Formulario Crear Persona</h3>
                </div>
                     <div class="panel-body">
                        <div class="form-group">

                <div class="input-group">
                    <br/>
                    <asp:TextBox class="form-control floating-label" id="cuiPersona" runat="server" type="text" placeholder="CUI Persona" data-hint="">
                     </asp:TextBox>
                </div>

                <div class="input-group">
                    <br/>
                    <asp:TextBox class="form-control floating-label" id="priNomPersona" runat="server" type="text" placeholder="Primer nombre" data-hint="">
                     </asp:TextBox>
                </div>

                <div class="input-group">
                    <br/>
                    <asp:TextBox class="form-control floating-label" id="segNomPersona" runat="server" type="text" placeholder="Segundo Nombre" data-hint="">
                     </asp:TextBox>
                </div>

                <div class="input-group">
                    <br/>
                    <asp:TextBox class="form-control floating-label" id="priApePersona" runat="server" type="text" placeholder="Primer Apellido" data-hint="">
                     </asp:TextBox>
                </div>
                   <div class="input-group">
                    <br/>
                    <asp:TextBox class="form-control floating-label" id="segApePersona" runat="server" type="text" placeholder="Segundo Apellido" data-hint="">
                     </asp:TextBox>
                </div>

                <div class="input-group">
                    <br/>
                    <asp:TextBox class="form-control floating-label" id="dirPersona" runat="server" type="text" placeholder="Dirección" data-hint="">
                     </asp:TextBox>
                </div>

                <div class="input-group">
                    <br/>
                    <asp:TextBox class="form-control floating-label" id="telPersona" runat="server" type="text" placeholder="Telefono" data-hint="">
                     </asp:TextBox>
                </div>

                <div class="input-group">
                    <br/>
                     <span class="label label-success">Sexo</span>
                    <br/>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="DataSourceMostrarsSexo" DataTextField="nomSexo" DataValueField="idSexo"></asp:DropDownList>
                    <asp:SqlDataSource ID="DataSourceMostrarsSexo" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="procSexoMostrarTodo" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                </div>
                <div class="input-group">
                    <br/>
                     <span class="label label-success">Fecha de Nacimiento</span>
                    <br/>
                    <asp:TextBox class="form-control floating-label" id="fechNacPersona" runat="server" type="date" placeholder="" data-hint="">
                     </asp:TextBox>
                </div>
                            
                            
                <div class="input-group">
                    <br/>
                     <span class="label label-success">Estado Civil</span>
                    <br/>
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="DataSourceMostrarTodoEstadoCivil" DataTextField="nomEstCivil" DataValueField="idEstCivil"></asp:DropDownList>

                    <asp:SqlDataSource ID="DataSourceMostrarTodoEstadoCivil" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="procEstCivilMostrarTodo" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    
                           </div>
                    <br/>
                    <asp:LinkButton ID="Guardar" CssClass="btn btn-success" runat="server">Guardar </asp:LinkButton>
                   
                            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="cuiPersona" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
                                <Fields>
                                    <asp:BoundField DataField="cuiPersona" HeaderText="cuiPersona" ReadOnly="True" SortExpression="cuiPersona" />
                                    <asp:BoundField DataField="priNomPersona" HeaderText="priNomPersona" SortExpression="priNomPersona" />
                                    <asp:BoundField DataField="segNomPersona" HeaderText="segNomPersona" SortExpression="segNomPersona" />
                                    <asp:BoundField DataField="priApePersona" HeaderText="priApePersona" SortExpression="priApePersona" />
                                    <asp:BoundField DataField="segApePersona" HeaderText="segApePersona" SortExpression="segApePersona" />
                                    <asp:BoundField DataField="dirPersona" HeaderText="dirPersona" SortExpression="dirPersona" />
                                    <asp:BoundField DataField="telPersona" HeaderText="telPersona" SortExpression="telPersona" />
                                    <asp:BoundField DataField="idSexo" HeaderText="idSexo" SortExpression="idSexo" />
                                    <asp:BoundField DataField="fechNacPersona" HeaderText="fechNacPersona" SortExpression="fechNacPersona" />
                                    <asp:BoundField DataField="idEstCivil" HeaderText="idEstCivil" SortExpression="idEstCivil" />
                                    <asp:CheckBoxField DataField="estado" HeaderText="estado" SortExpression="estado" />
                                    <asp:CommandField ShowInsertButton="True" />
                                </Fields>
                            </asp:DetailsView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="procPersonaCrear" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="cuiPersona" Name="cuiPersona" PropertyName="Text" Type="Int32" />
                                    <asp:ControlParameter ControlID="priNomPersona" Name="priNomPersona" PropertyName="Text" Type="String" />
                                    <asp:ControlParameter ControlID="segNomPersona" Name="segNomPersona" PropertyName="Text" Type="String" />
                                    <asp:ControlParameter ControlID="priApePersona" Name="priApePersona" PropertyName="Text" Type="String" />
                                    <asp:ControlParameter ControlID="segApePersona" Name="segApePersona" PropertyName="Text" Type="String" />
                                    <asp:ControlParameter ControlID="dirPersona" Name="dirPersona" PropertyName="Text" Type="String" />
                                    <asp:ControlParameter ControlID="telPersona" Name="telPersona" PropertyName="Text" Type="String" />
                                    <asp:ControlParameter ControlID="DropDownList1" Name="idSexo" PropertyName="SelectedValue" Type="Int32" />
                                    <asp:ControlParameter ControlID="fechNacPersona" DbType="Date" Name="fechNacPersona" PropertyName="Text" />
                                    <asp:ControlParameter ControlID="DropDownList2" Name="idEstCivil" PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                
                        </div>
                    </div>
            </div>
        </div>
</div>



</asp:Content>
