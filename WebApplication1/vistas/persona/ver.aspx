<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/layout.master" CodeBehind="ver.aspx.vb" Inherits="WebApplication1.ver2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Formulario Ver Persona</title>
</asp:Content>

<asp:Content ID="Content10" ContentPlaceHolderID="crudpersona" runat="server">
            <div class="row">
            <div class="col-sm-6 col-sm-offset-3">
                <div class="panel panel-warning" >
                     <div class="panel-heading">
                            <h3 class="panel-title">Formulario ver Persona</h3>
                     </div>
                     <div class="panel-body">
                            <div class="form-group">

    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="cuiPersona" DataSourceID="DataSourceVerPersona">
        <Fields>
            <asp:BoundField DataField="cuiPersona" HeaderText="cuiPersona" ReadOnly="True" SortExpression="cuiPersona" />
            <asp:BoundField DataField="priNomPersona" HeaderText="priNomPersona" SortExpression="priNomPersona" />
            <asp:BoundField DataField="segNomPersona" HeaderText="segNomPersona" SortExpression="segNomPersona" />
            <asp:BoundField DataField="priApePersona" HeaderText="priApePersona" SortExpression="priApePersona" />
            <asp:BoundField DataField="segApePersona" HeaderText="segApePersona" SortExpression="segApePersona" />
            <asp:BoundField DataField="dirPersona" HeaderText="dirPersona" SortExpression="dirPersona" />
            <asp:BoundField DataField="telPersona" HeaderText="telPersona" SortExpression="telPersona" />
            <asp:BoundField DataField="idSexo" HeaderText="idSexo" SortExpression="idSexo" />
            <asp:TemplateField HeaderText="fechNacPersona" SortExpression="fechNacPersona">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" type="date" runat="server" Text='<%# Bind("fechNacPersona") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("fechNacPersona") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("fechNacPersona") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="idEstCivil" HeaderText="idEstCivil" SortExpression="idEstCivil" />
            <asp:CheckBoxField DataField="estado" HeaderText="estado" SortExpression="estado" />
            <asp:CommandField ShowEditButton="True">
                <controlstyle cssclass="btn btn-warning" />
            </asp:CommandField>
        </Fields>
    </asp:DetailsView>

    <asp:SqlDataSource ID="DataSourceVerPersona" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="procPersonaBuscar" SelectCommandType="StoredProcedure" UpdateCommand="procPersonaActualizar" UpdateCommandType="StoredProcedure">
        <SelectParameters>
            <asp:RouteParameter Name="cuiPersona" RouteKey="id" Type="Int32" />
        </SelectParameters>
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
                  </div>
            </div>
       </div>
</div>




</asp:Content>
