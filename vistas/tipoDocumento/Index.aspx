<%@ Page Title="" Language="VB" MasterPageFile="~/layout.master" AutoEventWireup="false" CodeFile="Index.aspx.vb" Inherits="vistas_tipoDocumento_Index" %>


<asp:Content ID="Content4" ContentPlaceHolderID="parametrizacion" Runat="Server">
           <div class="row">
  <div class="col-md-8">
 
    <asp:GridView ID="gridViewtipoDocumentoMostrarTodo" runat="server" AutoGenerateColumns="False" CssClass="table" DataKeyNames="idTipoDocumento" DataSourceID="dataSourceTipoDocumentoMostrarTodo">
    <Columns>
        <asp:BoundField DataField="idTipoDocumento" HeaderText="idTipoDocumento" ReadOnly="True" SortExpression="idTipoDocumento" />
        <asp:BoundField DataField="nomTipoDocumento" HeaderText="nomTipoDocumento" SortExpression="nomTipoDocumento" />
        <asp:CheckBoxField DataField="estado" HeaderText="estado" SortExpression="estado" />
    </Columns>
</asp:GridView>
</div>

               
 <div class="col-md-4">
    <a ID="btncreartipodocumento" runat="server" Class="btn btn-material-teal-700" href="\tipoDocumento/crear"><i class="mdi-av-my-library-add"></i> Crear</a>
     </div>
<asp:SqlDataSource ID="dataSourceTipoDocumentoMostrarTodo" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="procTipoDocumentoMostrarTodo" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
</div>
</asp:Content>

