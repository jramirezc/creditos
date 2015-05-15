<%@ Page Title="" Language="VB" MasterPageFile="~/layout.master" AutoEventWireup="false" CodeFile="index.aspx.vb" Inherits="vistas_Letra_pago_index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="parametrizacion" Runat="Server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="letras" Runat="Server">
    <%   If (Page.RouteData.Values("id")) Then
            Response.Write("Credito No.")
        
        
            Response.Write(Page.RouteData.Values("id").ToString())
        %>

 <div class="row text-center">

    <div class="col-sm-4 col-sm-offset-4">
       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table" DataKeyNames="idletPago" DataSourceID="letradepago">
           <Columns>
               <asp:BoundField DataField="idletPago" HeaderText="idletPago" ReadOnly="True" SortExpression="idletPago" />
               <asp:BoundField DataField="idCredito" HeaderText="idCredito" SortExpression="idCredito" />
               <asp:BoundField DataField="letraPago" HeaderText="letraPago" SortExpression="letraPago" />
               <asp:BoundField DataField="Saldo" HeaderText="Saldo" SortExpression="Saldo" />
               <asp:BoundField DataField="interesxMora" HeaderText="interesxMora" SortExpression="interesxMora" />
               <asp:CheckBoxField DataField="estad" HeaderText="estad" SortExpression="estad" />
           </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="letradepago" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="procLetrasPagoBuscarxCredito" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:RouteParameter Name="id" RouteKey="id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</div>
   
    <%
    Else
        Response.Write("No hay Id Credito")
    End If
        %>
</asp:Content>