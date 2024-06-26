<%@ Page Title="Customers" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true"  CodeBehind="Customers.aspx.vb" Inherits="NorthWind_VB.Customers" %>
<%@ Import Namespace="NorthWind_VB" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>

        <div class="customer-table">
            <h2>Customers</h2>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>Customer Name</th>
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
                    <% Dim customers = GetCustomers().ToList() %>
                    <% For i As Integer = (CurrentPage - 1) * PageSize To Math.Min(CurrentPage * PageSize - 1, customers.Count - 1) %>
                    <tr>
                        <td><%= customers(i).CompanyName %></td>
                        <td><%= customers(i).ContactName %></td>
                        <td><%= customers(i).ContactTitle %></td>
                        <td><%= customers(i).Address %></td>
                        <td><%= customers(i).City%></td>
                        <td><%= customers(i).PostalCode %></td> 
                        <td><%= customers(i).Country %></td>
                        <td><%= customers(i).Phone %></td>
                    </tr>
                    <% Next %>
                </tbody>
            </table>
            <div class="pagination">
                <ul class="pagination">
                    <% For i As Integer = 1 To TotalPages %>
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