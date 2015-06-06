<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/layout.master" CodeBehind="index.aspx.vb" Inherits="WebApplication1.index1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <title>Formulario Persona</title>
    </asp:Content>

<asp:Content ID="Content10" ContentPlaceHolderID="crudpersona" runat="server">
    <div class="panel panel-material-blue-grey" >
                     <div class="panel-heading">
                            <h3 class="panel-title">Persona</h3>
                     </div>
                     <div class="panel-body">
    <div class="row">
        <div class="col-sm-11">
     
            
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cuiPersona" DataSourceID="DataSourceMostrarPersona">
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
        
          <asp:HyperLinkField DataNavigateUrlFields="cuiPersona" DataNavigateUrlFormatString="~/persona/ver/{0}" DataTextField="cuiPersona" DataTextFormatString="&lt;i class=&quot;fa fa-eye fa-2x&quot;&gt;&lt;/i&gt;" >
                    <ControlStyle CssClass="btn btn-material-blue" />
                    </asp:HyperLinkField>
        
        </Columns>
            </asp:GridView>
                   
            <asp:SqlDataSource ID="DataSourceMostrarPersona" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="procPersonaMostrarTodo" SelectCommandType="StoredProcedure" UpdateCommand="procPersonaActualizar @cuiPersona, @priNomPersona, @segNomPersona, @priApePersona, @segApePersona, @dirPersona, @telPersona, @idSexo, @fechNacPersona, @idEstCivil. @estado">
                <UpdateParameters>
                    <asp:Parameter Name="cuiPersona" />
                    <asp:Parameter Name="priNomPersona" />
                    <asp:Parameter Name="segNomPersona" />
                    <asp:Parameter Name="priApePersona" />
                    <asp:Parameter Name="segApePersona" />
                    <asp:Parameter Name="dirPersona" />
                    <asp:Parameter Name="telPersona" />
                    <asp:Parameter Name="idSexo" />
                    <asp:Parameter Name="fechNacPersona" />
                    <asp:Parameter Name="idEstCivil" />
                    <asp:Parameter Name="estado" />
                </UpdateParameters>
            </asp:SqlDataSource>

                   
        </div>
      <div class="col-sm-1 ">
                                <a type="button" href="\persona/crear" class="btn btn-fab btn-raised  btn-material-green-600 "data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Tooltip on bottom"><i class="fa fa-plus-circle"></i></a>
                            </div>
    </div>
    </div>

    </div>


</asp:Content>
