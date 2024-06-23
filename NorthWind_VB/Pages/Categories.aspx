<%@ Page Title="Categories" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Categories.aspx.vb" Inherits="NorthWind_VB.Categories" %>
<%@ Import Namespace="NorthWind_VB" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>

        <div class="category-table">
            <h2>Products</h2>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>Category</th>                       
                        <th>Description</th>                                                                 
                    </tr>
                </thead>
                <tbody>
                    <% For Each cat As Category In GetCategory() %>              
                    <tr>                        
                        <td><a href="Items.aspx?category=<%= cat.CategoryID %>" class="btn btn-primary btn-block" role="button">
                            <%= cat.CategoryName %>
                        </a></td>
                        <td><%= cat.Description %></td>
                     <%Next %>
                    </tr>                  
                </tbody>
            </table>            
        </div>

    </main>

</asp:Content>