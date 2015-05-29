<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/layout.master" CodeBehind="ver.aspx.vb" Inherits="WebApplication1.ver" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="usuario" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="parametrizacion" runat="server">
    <%Response.Write(Page.RouteData.Values("accion"))%>
    <%Response.Write(Page.RouteData.Values("tabla"))%>
    <%Response.Write(Page.RouteData.Values("id"))%>
    <br />
    <div class="row">
        <div class="col-sm-5">
            <%ver()%>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
      <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control "></asp:TextBox>
            <%        If (String.Equals(Page.RouteData.Values("accion").ToString, "actualizar")) Then%>
            <asp:DropDownList runat="server" ID="estado" CssClass="form-control">
    <asp:ListItem Text="Activo" Value="1"  />
    <asp:ListItem Text="Inactivo" Value="0"/>
</asp:DropDownList>
                <asp:LinkButton ID="LinkButton1" class="btn btn-warning" runat="server">Actualizar</asp:LinkButton>


            <%End If
                
                %>
            <input type="button" value="Cancelar" class="btn btn-danger" onclick="history.back(-1)" />

        </div>
    </div>

    
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="credito" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="letras" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="presona" runat="server">
</asp:Content>
