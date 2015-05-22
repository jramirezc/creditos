<%@ Page Title="" Language="C#" MasterPageFile="~/layout.master" AutoEventWireup="true" CodeFile="ver.aspx.cs" Inherits="vistas_Letra_pago_ver" %>


<asp:Content ID="Content6" ContentPlaceHolderID="letras" Runat="Server">
</br>
</br>
<div class="col-sm-6 col-sm-offset-3">
    <div class="panel panel-success">
        <div class="panel-heading">
            <h3 class="panel-title"><i class="glyphicon glyphicon-list-alt"></i>  Formulario</h3>
        </div>



                <div class="panel-body ">
                    <div class="row ">
                        <div class="col-sm-4  ">

                            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" OnPageIndexChanging="DetailsView1_PageIndexChanging"></asp:DetailsView>
                        
                        </div>
                    </div>
                </div>
     

    </div>
</div>
</asp:Content>


