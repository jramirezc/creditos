<%@ Page Title="" Language="VB" MasterPageFile="~/layout.master" AutoEventWireup="false" CodeFile="index.aspx.vb" Inherits="vistas_credito_index" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <title> Creditos</title>
    </asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="credito" Runat="Server">

   <div class="panel panel-material-blue-grey" >
                     <div class="panel-heading">
                            <h3 class="panel-title">Creditos</h3>
                     </div>
                     <div class="panel-body">
    <div class="row">
        <div class="col-sm-11">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table ">
            </asp:GridView>
            <asp:SqlDataSource ID="vercreditos" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="SELECT * FROM [Tbl_Campo]"></asp:SqlDataSource>
        </div>
        <div class="col-sm-1 ">

            <a type="button" href="\credito/crear" class="btn btn-fab btn-raised  btn-material-green-600 "data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Tooltip on bottom"><i class="fa fa-plus-circle"></i></a>
        </div>
    </div>
    </div>

    </div>

</asp:Content>