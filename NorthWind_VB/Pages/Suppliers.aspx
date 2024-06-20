<%@ Page Title="Suppliers" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true"  CodeBehind="Suppliers.aspx.vb" Inherits="NorthWind_VB.Suppliers" %>
<%@ Import Namespace="NorthWind_VB" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>

        <div class="supplier-table">
            <h2>Suppliers</h2>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>Company Name</th>
                        <th>Contact Name</th>
                        <th>Contact Title</th>
                        <th>Address</th>
                        <th>City</th>
                        <th>Postal Code</th>
                        <th>Country</th>
                        <th>Phone</th>                       
                    </tr>
                </thead>
                <tbody>
                    <% Dim suppliers = GetSuppliers().ToList() %>
                    <% For i As Integer = (CurrentPage - 1) * PageSize To Math.Min(CurrentPage * PageSize - 1, suppliers.Count - 1) %>
                    <tr>
                        <td><%= suppliers(i).CompanyName %></td>
                        <td><%= suppliers(i).ContactName %></td>
                        <td><%= suppliers(i).ContactTitle %></td>
                        <td><%= suppliers(i).Address %></td>
                        <td><%= suppliers(i).City%></td>
                        <td><%= suppliers(i).PostalCode %></td> 
                        <td><%= suppliers(i).Country %></td>
                        <td><%= suppliers(i).Phone %></td>
                    </tr>
                    <% Next %>
                </tbody>
            </table>
            <div class="pagination">
                <ul class="pagination">
                    <% For i As Integer = 1 To TotalPages %>
                    <li class="page-item"><a class="page-link" href="?page=<%= i %>"><%= i %></a></li>
                    <% Next %>
                </ul>
            </div>
        </div>

    </main>

</asp:Content>