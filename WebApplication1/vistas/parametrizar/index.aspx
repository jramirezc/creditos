﻿<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/layout.master" CodeBehind="index.aspx.vb" Inherits="WebApplication1.prueba" %>

<%@ Import Namespace="System.Data" %>
<%@Import Namespace=" System.Web.UI.Page"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="usuario" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    <asp:Label ID="Label1" runat="server" Text="Rol"></asp:Label>  
<div class="row">
    <div class="col-sm-6">
        <table class="table table-condensed">
            <tr>
              <th>id</th>
              <th>nombre</th>
              <th>Estado</th>
              <th>accion</th>
            </tr>   
            <%escribir(Label1.Text.ToString)%>
        </table>
    </div>
    <div class="col-sm-1 ">
          <%btncrear(Label1.Text.ToString)%>
           
        </div>
</div>
    

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tonyBD %>" SelectCommand="procRolMostrarTodo" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    <asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-primary" >Rol</asp:LinkButton>
      <asp:LinkButton ID="LinkButton3" runat="server" CssClass="btn btn-primary">Sexo</asp:LinkButton>
    <asp:LinkButton ID="LinkButton4" runat="server" CssClass="btn btn-primary">Estado</asp:LinkButton>
    <asp:LinkButton ID="LinkButton5" runat="server" CssClass="btn btn-primary">EstCivil</asp:LinkButton>
    <asp:LinkButton ID="LinkButton6" runat="server" CssClass="btn btn-primary">TipCredito</asp:LinkButton>
    <asp:LinkButton ID="LinkButton7" runat="server" CssClass="btn btn-primary">TipDocumento</asp:LinkButton>
    <asp:LinkButton ID="LinkButton8" runat="server" CssClass="btn btn-primary">Permiso</asp:LinkButton>
    <asp:LinkButton ID="LinkButton9" runat="server" CssClass="btn btn-primary">Campo</asp:LinkButton>



    

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="parametrizacion" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="credito" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="letras" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="presona" runat="server">
</asp:Content>
