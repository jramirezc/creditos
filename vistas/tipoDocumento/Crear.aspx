<%@ Page Title="" Language="VB" MasterPageFile="~/layout.master" AutoEventWireup="false" CodeFile="Crear.aspx.vb" Inherits="vistas_tipoDocumento_tipoDocumentoMostrarTodoCrear" %>


<asp:Content ID="Content4" ContentPlaceHolderID="parametrizacion" Runat="Server">
 <div class="panel panel-primary">
    <div class="panel-heading">
        
        <h3 class="panel-title"><i class="mdi-action-extension"></i> Ingreso de Tipo de Documento </h3>
    </div>
    <div class="panel-body ">
    <div class="row ">
        <div class="col-sm-4  ">
             <div class="label-material-green-50  ">
                <asp:TextBox ID="TbxNomTipoDocumento" runat="server" CssClass="form-control" placeholder="Ingresar el nombre de tipo de documento..."> </asp:TextBox>
            </div>
        </div>
    </div>
            <asp:Button ID="BtnTipoDocumentoCrear" runat="server" Text="Guardar" CssClass="btn btn-material-green" />
    </div>
</div>
    <asp:GridView ID="GridViewTipoDocumentoCrear" runat="server" AutoGenerateColumns="False" DataKeyNames="idTipoDocumento" DataSourceID="DataSourceTipoDocuementoCrear">
        <Columns>
            <asp:BoundField DataField="idTipoDocumento" HeaderText="idTipoDocumento" InsertVisible="False" ReadOnly="True" SortExpression="idTipoDocumento" />
            <asp:BoundField DataField="nomTipoDocumento" HeaderText="nomTipoDocumento" SortExpression="nomTipoDocumento" />
            <asp:CheckBoxField DataField="estado" HeaderText="estado" SortExpression="estado" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="DataSourceTipoDocuementoCrear" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="procTipoDocumentoCrear" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="TbxNomTipoDocumento" Name="nomDocumento" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>


