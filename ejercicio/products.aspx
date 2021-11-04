<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="products.aspx.cs" Inherits="ejercicio.products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <section id="content">
        <div class="row">
            <div class="col-lg-12">
                <section class="panel">
                    <header class="panel-heading">
                        <div class="col-md-4 col-md-offset-4">
                            <h1>Añade productos</h1>
                        </div>    
                    </header>
                    <div class="panel-body">
                        <div class="row">
                                
                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Cantidad" runat="server" />
                                        <asp:TextBox ID="txtcantidad" runat="server" TextMode="Number" CssClass="form-control input-sm" placeholder="0"/>

                                    </div>
                                </div>
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Nombre producto" runat="server" />
                                        <asp:TextBox ID="txtnombre" runat="server" CssClass="form-control input-sm" placeholder="Escribe un nombre"/>

                                    </div>
                                </div>
                             </div>
                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Precio" runat="server" />
                                        <asp:TextBox ID="txtprecio" runat="server" TextMode="Number" CssClass="form-control input-sm" placeholder="0"/>

                                    </div>
                                </div>
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Tipo" runat="server" />
                                        <asp:DropDownList runat="server" CssClass="form-control input-sm" ID="drpTipo">
                                            <asp:ListItem Text="Favoritos" />
                                            <asp:ListItem Text="Carrito" />
                                        </asp:DropDownList>

                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3 col-md-offset-2">
                                    <asp:Button Text="Agregar" runat="server" ID="btnSubmit" OnClick="btnSubmit_Click"/>
                                </div>
                            </div>
                        
                        </div>
                    
                        <div class="row">
                            <div class="col-md-6">
                                <asp:ListView ID="lstFav" runat="server">
                                    <EmptyDataTemplate>
                                        <h3>Añade productos</h3>
                                    </EmptyDataTemplate>
                                    <LayoutTemplate>
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th>Nombre Producto</th>
                                                    <th>Precio</th>
                                                </tr>
                                            </thead>
                                            <tbody id="ItemPlaceholder" runat="server">
                                            </tbody>
                                        </table>
                                    </LayoutTemplate>
                                    <ItemTemplate>
                                        <tr>
                                            <td><asp:Label Text='<%# Eval("Nombre") %>' runat="server" /></td>
                                            <td><asp:Label Text='<%# Eval("Precio") %>' runat="server" /></td>
                                        </tr>
                                    </ItemTemplate>
                                    <AlternatingItemTemplate>
                                        <tr>
                                            <td><asp:Label Text='<%# Eval("Nombre") %>' runat="server" /></td>
                                            <td><asp:Label Text='<%# Eval("Precio") %>' runat="server" /></td>
                                            <td><asp:Label Text='<%# Eval("Cantidad") %>' runat="server" /></td>
                                        </tr>
                                    </AlternatingItemTemplate>
                                </asp:ListView>
                            </div>
                            <div class="col-md-6">
                                <asp:ListView ID="lstCarrito" runat="server">
                                    <EmptyDataTemplate>
                                        <h3>Añade productos</h3>
                                    </EmptyDataTemplate>
                                    <LayoutTemplate>
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th>Nombre Producto</th>
                                                    <th>Precio</th>
                                                    <th>Cantidad</th>
                                                </tr>
                                            </thead>
                                            <tbody id="ItemPlaceholder" runat="server">
                                            </tbody>
                                        </table>
                                    </LayoutTemplate>
                                    <ItemTemplate>
                                        <tr>
                                            <td><asp:Label Text='<%# Eval("Nombre") %>' runat="server" /></td>
                                            <td><asp:Label Text='<%# Eval("Precio") %>' runat="server" /></td>
                                            <td><asp:Label Text='<%# Eval("Cantidad") %>' runat="server" /></td>
                                        </tr>
                                    </ItemTemplate>
                                    <AlternatingItemTemplate>
                                        <tr>
                                            <td><asp:Label Text='<%# Eval("Nombre") %>' runat="server" /></td>
                                            <td><asp:Label Text='<%# Eval("Precio") %>' runat="server" /></td>
                                            <td><asp:Label Text='<%# Eval("Cantidad") %>' runat="server" /></td>
                                        </tr>
                                    </AlternatingItemTemplate>
                                </asp:ListView>
                                
                                <asp:Label ID="textoTotal" Text="Total=0" runat="server" />
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </section>
</asp:Content>
