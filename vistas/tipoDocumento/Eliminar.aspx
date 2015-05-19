<%@ Page Title="" Language="VB" MasterPageFile="~/layout.master" AutoEventWireup="false" CodeFile="Eliminar.aspx.vb" Inherits="vistas_tipoDocumento_Eliminar" %>


<asp:Content ID="Content4" ContentPlaceHolderID="parametrizacion" Runat="Server">
    <div class="panel panel-material-red-A400">
    <div class="panel-heading">
        
        <h3 class="panel-title"><i class="mdi-action-extension"></i> Eliminar Documento </h3>
    </div>
    <div class="panel-body ">
    <div class="row ">
        <div class="col-sm-4  ">
             <div class="label-material-red--A400 ">
             
                  <asp:TextBox ID="TbxNomTipoDocumento" runat="server" CssClass="form-control" placeholder="Ingresar el nuevo tipo de documento..."> </asp:TextBox >
            </div>
        </div>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="srcmostrartipodocumento" DataTextField="nomTipoDocumento" DataValueField="idTipoDocumento"></asp:DropDownList>
        <asp:SqlDataSource ID="srcmostrartipodocumento" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="procTipoDocumentoMostrarTodo" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    </div>
            <asp:Button ID="BtnTipoDocumentoCrear" runat="server" Text="Guardar" CssClass="btn btn-material-red " />
    </div>
</div>
               <asp:GridView ID="gridViewtipoDocumentoMostrarTodo" runat="server" AutoGenerateColumns="False" CssClass="table" DataKeyNames="idTipoDocumento" DataSourceID="dataSourceTipoDocumentoMostrarTodo">
    <Columns>
        <asp:BoundField DataField="idTipoDocumento" HeaderText="idTipoDocumento" ReadOnly="True" SortExpression="idTipoDocumento" />
        <asp:BoundField DataField="nomTipoDocumento" HeaderText="nomTipoDocumento" SortExpression="nomTipoDocumento" />
        <asp:CheckBoxField DataField="estado" HeaderText="estado" SortExpression="estado" />
    </Columns>
</asp:GridView>

<asp:SqlDataSource ID="dataSourceTipoDocumentoMostrarTodo" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="procTipoDocumentoEliminar" SelectCommandType="StoredProcedure">
    <SelectParameters>
        <asp:ControlParameter ControlID="DropDownList1" Name="id" PropertyName="SelectedValue" Type="Int32" />
    </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

