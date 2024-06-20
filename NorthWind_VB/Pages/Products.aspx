<%@ Page Title="Products" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.vb" Inherits="NorthWind_VB.Products" %>
<%@ Import Namespace="NorthWind_VB" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>

        <div class="product-table">
            <h2>Products</h2>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>Product Name</th>
                        <th>Quantity Per Unit</th>
                        <th>Unit Price</th>
                        <th>Units In Stock</th>
                        <th>Units On Order</th>
                        <th>Discontinued</th>                                            
                    </tr>
                </thead>
                <tbody>
                    <% Dim products = GetProducts().ToList() %>
                    <% For i As Integer = (CurrentPage - 1) * PageSize To Math.Min(CurrentPage * PageSize - 1, products.Count - 1) %>
                    <tr>
                        <td><%= products(i).ProductName %></td>
                        <td><%= products(i).QuantityPerUnit %></td>
                        <td><%= products(i).UnitPrice %></td>
                        <td><%= products(i).UnitsInStock %></td>
                        <td><%= products(i).UnitsOnOrder%></td>
                        <td><%= products(i).Discontinued %></td>                        
                    </tr>
                    <% Next %>
                </tbody>
            </table>

            <div class="pagination">
                <ul class="pagination">
                    <% For i As Integer = 1 To TotalPages%>
                    <% If i = CurrentPage Then %>
                    <li class="page-item active"><a class="page-link" href="?page=<%= i %>"><%= i %></a></li>
                    <% Else %>
                    <li class="page-item"><a class="page-link" href="?page=<%= i %>"><%= i %></a></li>
                    <% End If %>
                    <% Next %>
                </ul>
            </div>
        </div>

    </main>

</asp:Content>