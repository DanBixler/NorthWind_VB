<%@ Page Title="Employees" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true"  CodeBehind="Employees.aspx.vb" Inherits="NorthWind_VB.Employees" %>
<%@ Import Namespace="NorthWind_VB" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>

        <div class="employee-table">
            <h2>Employees</h2>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>Last Name</th>
                        <th>First Name</th>
                        <th>Title</th>
                        <th>Hire Date</th>
                        <th>Home Phone</th>
                        <th>Extension</th>                        
                    </tr>
                </thead>
                <tbody>
                    <% For Each emp As Employee In GetEmployees() %>
                    <tr>
                        <td><%= emp.LastName %></td>
                        <td><%= emp.FirstName %></td>
                        <td><%= emp.Title %></td>
                        <td><%= emp.HireDate %></td>
                        <td><%= emp.HomePhone%></td>
                        <td><%= emp.Extension %></td>                        
                    </tr>
                    <% Next %>
                </tbody>
            </table>
        </div>

    </main>

</asp:Content>
