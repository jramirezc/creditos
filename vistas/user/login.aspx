<%@ Page Title="" Language="VB" MasterPageFile="~/layout.master" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="vistas_user_login" %>

<%@ Import Namespace="System.IO" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
    
    
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
      
        <div class="valida" style="display:none">
          
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
          
            <asp:SqlDataSource ID="validalogin" runat="server" ConnectionString="<%$ ConnectionStrings:creditoConnectionString %>" SelectCommand="procUsuarioLogin" SelectCommandType="StoredProcedure">
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
                 
                   Dim bytesToEncode As Byte()
                   bytesToEncode = Encoding.UTF8.GetBytes("http://216.227.134.162/ost/legend-of-zelda-hyrule-symphony/uihrpvxoat/12-ocarina-medley.mp3")

                   Dim encodedText As String
                   encodedText = Convert.ToBase64String(bytesToEncode)
                   
                   audio.Src = "data:audio/mpeg;base64," +encodedText
                   %>
              <audio controls >
                 
   <source id="audio" runat="server" src="" type="audio/mpeg" />  
                     
   Este código no funciona en este navegador.
                     
</audio>


    

    <audio id="player" src="http://216.227.134.162/ost/legend-of-zelda-hyrule-symphony/uihrpvxoat/12-ocarina-medley.mp3 "  controls>
</audio>
<div>
    <button onclick="document.getElementById('player').play();">Reproducir</button>
    <button onclick="document.getElementById('player').pause();">Pausa</button>
    <button onclick="document.getElementById('player').volume += 0.1;">Subir Volumen</button>
    <button onclick="document.getElementById('player').volume -= 0.1;">Bajar Volumen</button>
</div>


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

