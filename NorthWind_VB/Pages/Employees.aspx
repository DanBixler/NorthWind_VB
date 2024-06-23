<%@ Page Title="Employees" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true"  CodeBehind="Employees.aspx.vb" Inherits="NorthWind_VB.Employees" %>
<%@ Import Namespace="NorthWind_VB" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <div class="employee-table">
            <h2>Employees</h2>           
            <asp:GridView ID="gvEmployees" runat="server" AutoGenerateColumns="False" CssClass="table table-striped" OnRowCommand="gvEmployees_RowCommand">
                <Columns>
                    <asp:BoundField DataField="LastName" HeaderText="Last Name" />
                    <asp:BoundField DataField="FirstName" HeaderText="First Name" />
                    <asp:BoundField DataField="Title" HeaderText="Title" />
                    <asp:BoundField DataField="HireDate" HeaderText="Hire Date" DataFormatString="{0:yyyy-MM-dd}" />
                    <asp:BoundField DataField="HomePhone" HeaderText="Home Phone" />
                    <asp:BoundField DataField="Extension" HeaderText="Extension" />
                    <asp:TemplateField HeaderText="Photo">
                        <ItemTemplate>
                            <img src='<%# ResolveUrl("~/ImageHandler.ashx?type=employee&id=" & Eval("EmployeeID")) %>' alt="Employee Photo" style="width:50px;height:50px;" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Actions">
                        <ItemTemplate>
                            <asp:Button ID="btnEditEmployee" runat="server" Text="Edit" CssClass="btn btn-secondary btn-sm" CommandName="Edit" CommandArgument='<%# Eval("EmployeeID") %>' />
                            <asp:Button ID="btnDeleteEmployee" runat="server" Text="Delete" CssClass="btn btn-danger btn-sm" CommandName="Delete" CommandArgument='<%# Eval("EmployeeID") %>' OnClientClick="return confirm('Are you sure you want to delete this employee?');" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:Button ID="btnAddEmployee" runat="server" Text="Add Employee" CssClass="btn btn-primary mb-3" OnClick="btnAddEmployee_Click" />
        </div>
    </main>

</asp:Content>
