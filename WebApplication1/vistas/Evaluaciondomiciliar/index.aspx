    <%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/layout.master" CodeBehind="index.aspx.vb" Inherits="WebApplication1.index1" %>

    <asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
        <title> Evaluacion Domiciliar</title>
        </asp:Content>

    <asp:Content ID="Content11" ContentPlaceHolderID="Crudevaluaciondomiciliar" runat="server">

        <div class="panel panel-material-blue-grey" >
            <div class="panel-heading">
                <h3 class="panel-title">Evaluaciones Domicilares del Credito # <% Response.Write(Page.RouteData.Values("id")) %></h3>
            </div>
                
    
                <div class="panel-body">
                        <div class="col-sm-11">
                            <asp:GridView ID="GridViewmostrar" runat="server" AutoGenerateColumns="False" DataKeyNames="idEvaDomiciliar" DataSourceID="DataSourcemostrasevaluacionfinanciera">
                                <Columns>
                                    <asp:BoundField DataField="idEvaDomiciliar" HeaderText="idEvaDomiciliar" InsertVisible="False" ReadOnly="True" SortExpression="idEvaDomiciliar" />
                                    <asp:BoundField DataField="idCredito" HeaderText="idCredito" SortExpression="idCredito" />
                                    <asp:TemplateField HeaderText="Campo" SortExpression="idCampo">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("idCampo") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("idCampo") %>' Visible="False"></asp:Label>
                                            <asp:DataList ID="DataList1" runat="server" DataKeyField="idCampo" DataSourceID="campoVerNombre">
                                                <ItemTemplate>
                                                    <asp:Label ID="nomCampoLabel" runat="server" Text='<%# Eval("nomCampo") %>' />
                                                </ItemTemplate>
                                            </asp:DataList>
                                            <asp:SqlDataSource ID="campoVerNombre" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="procCampoBuscar" SelectCommandType="StoredProcedure">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="Label1" Name="id" PropertyName="Text" Type="Int32" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:CheckBoxField DataField="agua" HeaderText="agua" SortExpression="agua" />
                                    <asp:CheckBoxField DataField="luz" HeaderText="luz" SortExpression="luz" />
                                    <asp:CheckBoxField DataField="serBasura" HeaderText="Servicio de Basura" SortExpression="serBasura" />
                                    <asp:CheckBoxField DataField="serCable" HeaderText="Servicio de Cable" SortExpression="serCable" />
                                    <asp:BoundField DataField="area" HeaderText="Area (m2)" SortExpression="area" />
                                    <asp:CheckBoxField DataField="estado" HeaderText="estado" SortExpression="estado" />
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:HyperLink ID="HyperLink1" runat="server" href='<%# Eval("idEvaDomiciliar", "evaluaciondomiciliar/ver/{0}") %>' Text="<i class='fa fa-eye fa-2x'></i>"></asp:HyperLink>
                                            <asp:HyperLink ID="HyperLink2" runat="server" href='<%# Eval("idEvaDomiciliar", "evaluaciondomiciliar/ver/{0}/vobo") %>' class=""><i class='fa fa-check-square fa-2x'></i>  </asp:HyperLink>

                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>

                           
                            <asp:SqlDataSource ID="DataSourcemostrasevaluacionfinanciera" runat="server" ConnectionString="<%$ ConnectionStrings:erickBD %>" SelectCommand="procEvaluacionDomiciliarMostrarTodo" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:RouteParameter Name="id" RouteKey="id" Type="Int32" DefaultValue="0" />
                                </SelectParameters>
                            </asp:SqlDataSource>



                            </div>

                                <div class="col-sm-1 ">
                                    <a type="button" href="Evaluaciondomiciliar/crear" class="btn btn-fab btn-raised  btn-material-green-600 "data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Tooltip on bottom"><i class="fa fa-plus-circle"></i></a>
                                    

                                </div>
              

                </div>

    </div>



    </asp:Content>

