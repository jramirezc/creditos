<%@ Page Title="" Language="VB" MasterPageFile="~/layout.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="vistas_user_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Button ID="Button1" runat="server" Text="Button" />
    </br>
    <div class="row">
        <div class="  col-lg-3">
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="username" DataSourceID="mostrar" CssClass="table table-condensed table-striped">
    <Columns>
        <asp:BoundField DataField="username" HeaderText="username" ReadOnly="True" SortExpression="username" />
        <asp:BoundField DataField="pass" HeaderText="pass" SortExpression="pass" />
        <asp:BoundField DataField="rol" HeaderText="rol" SortExpression="rol" />
    </Columns>
</asp:GridView>
</div>
</div>

    <div class="row">
        <div class="  col-lg-2">
            <asp:TextBox ID="TextBox1" runat="server"  type="text" class="form-control floating-label" placeholder="Username"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server"  type="password" class="form-control floating-label" placeholder="Pass"></asp:TextBox>

        </div>
    </div>
    <div row>
        </br>
        </br>
    </div>


<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="idUsuario" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="idUsuario" HeaderText="idUsuario" ReadOnly="True" SortExpression="idUsuario" InsertVisible="False" />
        <asp:BoundField DataField="nomUsuario" HeaderText="nomUsuario" SortExpression="nomUsuario" />
        <asp:BoundField DataField="contraseñaUsuario" HeaderText="contraseñaUsuario" SortExpression="contraseñaUsuario" />
        <asp:BoundField DataField="idRol" HeaderText="idRol" SortExpression="idRol" />
        <asp:BoundField DataField="cuiPersona" HeaderText="cuiPersona" SortExpression="cuiPersona" />
        <asp:CheckBoxField DataField="estado" HeaderText="estado" SortExpression="estado" />
    </Columns>
</asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:creditoConnectionString %>" SelectCommand="procUsuarioLogin" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="nomUsuario" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox2" Name="contraseñaUsuario" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
<asp:SqlDataSource ID="mostrar" runat="server" ConnectionString="<%$ ConnectionStrings:creditoConnectionString %>" SelectCommand="
SELECT *FROM [tbl_usuario] WHERE (([username] = @username) AND ([pass] = @pass))

">
    <SelectParameters>
        <asp:ControlParameter ControlID="TextBox1" Name="username" PropertyName="Text" Type="String" />
        <asp:ControlParameter ControlID="TextBox2" Name="pass" PropertyName="Text" Type="String" />
    </SelectParameters>
    </asp:SqlDataSource>
    <asp:Button ID="Button2" runat="server" Text="Button"  class="btn btn-primary" data-toggle="modal" data-target="#simple-dialog"/>
    


    
    <asp:LinkButton  ID="Button3" runat="server"  class="btn btn-material-red-50" data-toggle="modal" data-target="#simple-dialog"  >AAA</asp:LinkButton>
  <h2>Simple Dialog</h2>

     <button class="btn btn-material-red-700">050</button>
<div id="simple-dialog" class="modal fade" tabindex="-1">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-body">
        <p>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </p>
      </div>
    </div>
  </div>
</div>
 
<!-- Simple checkbox with label -->
<div class="sample1">
  <div class="checkbox" >
    <label>
      <input type="checkbox" > Notifications
    </label>
  </div>
  <p class="hint">Notify me about updates to apps or games that I've downloaded</p>
</div>


    <style>
  #floating-action-button .btn {
    margin: 20px;
  }
  #floating-action-button h2 {
    padding: 14px;
    margin: 0;
    font-size: 16px;
    font-weight: 400;
  }
</style>
</asp:Content>

