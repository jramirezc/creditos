<%@ Page Title="" Language="C#" MasterPageFile="~/layout.master" AutoEventWireup="true" CodeFile="create.aspx.cs" Inherits="vistas_Letra_pago_create" %>


<asp:Content ID="Content5" ContentPlaceHolderID="letras" Runat="Server">
    <div class="panel panel-primary">
    <div class="panel-heading">
        
        <h3 class="panel-title"><i class="mdi-action-extension"></i> Ingrese la letra de pago </h3>
    </div>
    <div class="panel-body ">
    <div class="row ">
        <div class="col-sm-4  ">
             <div class="label-material-green-50  ">
                <asp:TextBox ID="TbxLetraPago" runat="server" CssClass="form-control" placeholder="Ingreso de letra de pago"> </asp:TextBox>
            </div>
        </div>
    </div>
            <asp:Button ID="BtnLetraPagoCrear" runat="server" Text="Guardar" CssClass="btn btn-material-green" />
    </div>
</div>
    <asp:GridView ID="GridViewLetraPagoCrear" runat="server" AutoGenerateColumns="False" DataKeyNames="idletPago" DataSourceID="DataSourceLetraPagoCrear">
        <Columns>
            <asp:BoundField DataField="idletPago" HeaderText="idletPago" InsertVisible="False" ReadOnly="True" SortExpression="idletPago" />
            <asp:BoundField DataField="idCredito" HeaderText="idCredito" SortExpression="idCredito" />
            <asp:CheckBoxField DataField="letraPago" HeaderText="letraPago" SortExpression="letraPago" />
            <asp:BoundField DataField="Saldo" HeaderText="Saldo" SortExpression="Saldo" />
            <asp:CheckBoxField DataField="interesxMora" HeaderText="interesxMora" SortExpression="interesxMora" />
            <asp:CheckBoxField DataField="estado" HeaderText="estado" SortExpression="estado" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="DataSourceLetraPagoCrear" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="procLetraPagoCrear" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="TbxLetraPago" Name="letraPago" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>

