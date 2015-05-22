<%@ Page Title="" Language="VB" MasterPageFile="~/layout.master" AutoEventWireup="false" CodeFile="Index.aspx.vb" Inherits="vistas_Persona_Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content7" ContentPlaceHolderID="Persona" Runat="Server">
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cuiPersona" DataSourceID="srcpersonamostrartodo">
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
    <asp:SqlDataSource ID="srcpersonamostrartodo" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="procPersonaMostrarTodo" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SrcMostrartodoPersona" runat="server"></asp:SqlDataSource>

    <asp:LinkButton ID="LinkButton1" CssClass ="btn btn-success" runat="server">Nuevo</asp:LinkButton>

</asp:Content>

