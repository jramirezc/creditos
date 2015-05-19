<%@ Page Title="" Language="C#" MasterPageFile="~/layout.master" AutoEventWireup="true" CodeFile="prueba.aspx.cs" Inherits="vistas_Letra_pago_prueba" %>


<asp:Content ID="Content6" ContentPlaceHolderID="letras" Runat="Server">

    <div class="panel panel-material-red-700">
          <div class="panel-heading">
               <h1 class="panel-title"><i class="glyphicon glyphicon-list-alt "></i>  Formulario</h1>
          </div>
  
  <div class="panel-body">
        <div class="row ">
            <div class="col-sm-4  ">
                      
                <span class="label label-success">Ingresar</span>      
                        <div class="label-material-green-50  ">  
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control floating-label" placeholder="Ingreso ID Credito"></asp:TextBox>

                         </div>          
                
                      <br />
                     
                <h6>Textarea</h6>
  <textarea class="form-control" placeholder="textarea label"></textarea>
  <textarea class="form-control floating-label" placeholder="textarea floating label"></textarea>

                            

                          

            </div>
        </div>

  
  </div>

    </div>
</asp:Content>

