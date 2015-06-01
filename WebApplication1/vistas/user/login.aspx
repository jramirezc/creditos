<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/layout.master" CodeBehind="login.aspx.vb" Inherits="WebApplication1.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Inicio de Sesion</title>
    </asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="usuario" Runat="Server">
          <%  
              If (Not IsNothing(Session("usuario"))) Then%>
                  <div class="alert alert-dismissable alert-success">
    <button type="button" class="close" data-dismiss="alert">×</button>
   Inisio sesion  <strong>Correctamente!</strong> Bienvenido <strong> <%Response.Write((Session("usuario").ToString()))%>. </strong>
</div>         
              <%Else
              
                      If (Not IsNothing(Session("mensaje"))) Then
                          If (Session("mensaje").Equals("ci")) Then
                              Session.Remove("mensaje")
                   %>
                             <div class="alert alert-dismissable alert-warning">
    <button type="button" class="close" data-dismiss="alert">×</button>
   ERROR: <strong></strong>  <strong>Contraseña Incorrecta. </strong>
</div>
                
              <%End If
              End If
                %> 
    <%    If (Not IsNothing(Session("mensaje"))) Then
            If (Session("mensaje").Equals("un")) Then
                Session.Remove("mensaje")
                   %>
                             <div class="alert alert-dismissable alert-warning">
    <button type="button" class="close" data-dismiss="alert">×</button>
   ERROR: <strong></strong>  <strong>Usuario No Encontrado. </strong>
</div>
                
              <%End If
              End If
                %>           
     
     <div class="container">

          <div class="row ">
    <div class="col-sm-4 col-sm-offset-4 well">

        <h2 class="form-signin-heading text-center">Inicia Sesion</h2>
      
            <asp:TextBox type="text" id="inputEmail" runat="server"  class="form-control text-center input-lg" placeholder="Username" required="" autofocus=""></asp:TextBox>
            <asp:TextBox type="password" id="inputPassword" runat="server"  class="form-control text-center input-lg" placeholder="Contrasña" required=""></asp:TextBox>
      
        <div class="valida" style="display:nne">
          
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="idUsuario" DataSourceID="validalogin">
                <Columns>
                    <asp:BoundField DataField="idUsuario" HeaderText="idUsuario" ReadOnly="True" SortExpression="idUsuario" InsertVisible="False" />
                    <asp:BoundField DataField="nomUsuario" HeaderText="nomUsuario" SortExpression="nomUsuario" />
                    <asp:BoundField DataField="contraseñaUsuario" HeaderText="contraseñaUsuario" SortExpression="contraseñaUsuario" />
                    <asp:BoundField DataField="idRol" HeaderText="idRol" SortExpression="idRol" />
                    <asp:BoundField DataField="cuiPersona" HeaderText="cuiPersona" SortExpression="cuiPersona" />
                    <asp:CheckBoxField DataField="estado" HeaderText="estado" SortExpression="estado" />
                </Columns>
            </asp:GridView>
          
            <asp:SqlDataSource ID="validalogin" runat="server" ConnectionString="<%$ ConnectionStrings:tonyBD %>" SelectCommand="procUsuarioLogin" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="inputEmail" Name="nomUsuario" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="inputPassword" Name="contraseñaUsuario" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
          
        </div>
        <asp:LinkButton id="login" runat="server" class="btn btn-lg btn-material-blue-grey-300  btn-block" type="submit">Inciar Sesion</asp:LinkButton>
           </div>
              
  <div>
     <br /><br />
   
                  <div  style="display:none">
 


              <%
                  End If
                  %>
    </div>

 <hr />
    <hr /><hr /><hr /><hr /><hr /><hr /><hr /><hr /><hr /><hr /><hr /><hr /><hr /><hr /><hr /><hr /><hr /><hr /><hr /><hr /><hr /><hr /><hr /><hr /><hr /><hr /><hr /><hr /><hr /><hr /><hr /><hr />
    </div>
    </div>
          </div>
</asp:Content>

