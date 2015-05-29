<%@ Page Title="" Language="VB" MasterPageFile="~/layout.master" AutoEventWireup="false" CodeFile="Crear.aspx.vb" Inherits="vistas_Persona_Crear" %>


<asp:Content ID="Content6" ContentPlaceHolderID="letras" Runat="Server">
   
     <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title"><i class="mdi-action-extension">'</i>Formulario</h3>
         </div>
       

         <div class="panel-body ">
                    <div class="row ">
                        <div class="col-sm-4  ">
                            
                          <span class="label label-success">Ingrese</span>
                            <div class="label-material-green-50  ">
                                <asp:TextBox ID="TbxPrimerNombre" runat="server" CssClass="form-control floating-label" placeholder="Ingrese Primer Nombre"> </asp:TextBox>
                          </div>

                           <br />
                            <span class="label label-success">Ingrese</span>
                            <div class="label-material-green-50  ">
                                <asp:TextBox ID="TbxSegundoNombre" runat="server" CssClass="form-control floating-label" placeholder="Ingrese el segundo nombre"> </asp:TextBox>
                          </div>
                             
                            <br />
                            <span class="label label-success">Ingrese</span>
                            <div class="label-material-green-50  ">
                                <asp:TextBox ID="TbxPrimerApellido" runat="server" CssClass="form-control floating-label" placeholder="Ingrese Primer Apellido"> </asp:TextBox>
                          </div>
                             
                            <br />
                            <span class="label label-success">Ingrese</span>
                            <div class="label-material-green-50  ">
                                <asp:TextBox ID="TbxSegundoApellido" runat="server" CssClass="form-control floating-label" placeholder="Ingrese Segundo Apellido"> </asp:TextBox>
                          </div>
                             
                              <br />
                            <span class="label label-success">Ingrese</span>
                            <div class="label-material-green-50  ">
                                <asp:TextBox ID="TbxDireccionPersona" runat="server" CssClass="form-control floating-label" placeholder="Direccion de Persona"> </asp:TextBox>
                          </div>
                             
                               <br />
                            <span class="label label-success">Ingrese</span>
                            <div class="label-material-green-50  ">
                                <asp:TextBox ID="TbxTelefonoPersona" runat="server" CssClass="form-control floating-label" placeholder="Telefono Persona"> </asp:TextBox>
                          </div>

                                <br />
                            <span class="label label-success">Ingrese</span>
                            <div class="label-material-green-50  ">
                                <asp:dropdownlist runat="server" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="nomSexo" DataValueField="idSexo"></asp:dropdownlist>

                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="procSexoMostrarTodo" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                  
                                    <br />
                            <span class="label label-success">Ingrese</span>
                            <div class="label-material-green-50  ">
                                <asp:TextBox ID="TbxFechaNacimiento" runat="server" CssClass="form-control floating-label" placeholder="Ingrese Fecha de Nacimiento"> </asp:TextBox>
                          </div>

                                  <br />
                            <span class="label label-success">Ingrese</span>
                                 <div class="label-material-green-50  ">
                                <asp:dropdownlist runat="server" CssClass="form-control" DataSourceID="srcmuestratodoestadocivil"  DataValueField="idEstCivil" DataTextField="nomEstCivil"></asp:dropdownlist>
                                </div>
            
 <<asp:linkbutton id="btnGrabaLetraPago" runat="server" CssClass="btn btn-success">Grabar</asp:linkbutton>
                                 


                              

                          
                                    
                                 </div>
                               

                            

                        </div>
                    </div>

              </div>
         </div>

           <asp:SqlDataSource ID="srcmuestratodoestadocivil" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="procEstadoCivilMostrarTodo" SelectCommandType="StoredProcedure">
                                     </asp:SqlDataSource>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cuiPersona" DataSourceID="guardarpersona1">
        <Columns>
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
        </Columns>
     </asp:GridView>



       
        



     <asp:SqlDataSource ID="guardarpersona1" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="procPersonaMostrarTodo" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
     <asp:SqlDataSource ID="guardarpersona" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="procPersonaMostrarTodo" SelectCommandType="StoredProcedure"></asp:SqlDataSource>



       
        



</asp:Content>

