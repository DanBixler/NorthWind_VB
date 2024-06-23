<%@ Page Title="Add Employee" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddEmployee.aspx.vb" Inherits="NorthWind_VB.AddEmployee" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Add Employee</h2>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="text-danger" />
    <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" placeholder="First Name"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName" ErrorMessage="First Name is required." CssClass="text-danger" />
    <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" placeholder="Last Name"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLastName" ErrorMessage="Last Name is required." CssClass="text-danger" />
    <asp:TextBox ID="txtTitle" runat="server" CssClass="form-control" placeholder="Title"></asp:TextBox>
    <asp:TextBox ID="txtTitleOfCourtesy" runat="server" CssClass="form-control" placeholder="Title of Courtesy"></asp:TextBox>
    <asp:TextBox ID="txtBirthDate" runat="server" CssClass="form-control" placeholder="Date of Birth"></asp:TextBox>
    <asp:TextBox ID="txtHireDate" runat="server" CssClass="form-control" placeholder="Hire Date"></asp:TextBox>
    <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" placeholder="Address"></asp:TextBox>
    <asp:TextBox ID="txtCity" runat="server" CssClass="form-control" placeholder="City"></asp:TextBox>
    <asp:TextBox ID="txtRegion" runat="server" CssClass="form-control" placeholder="Region"></asp:TextBox>
    <asp:TextBox ID="txtPostalCode" runat="server" CssClass="form-control" placeholder="Postal Code"></asp:TextBox>
    <asp:TextBox ID="txtCountry" runat="server" CssClass="form-control" placeholder="Country"></asp:TextBox>
    <asp:TextBox ID="txtHomePhone" runat="server" CssClass="form-control" placeholder="Home Phone"></asp:TextBox>
    <asp:TextBox ID="txtExtension" runat="server" CssClass="form-control" placeholder="Extension"></asp:TextBox>
    <asp:FileUpload ID="empPhoto" runat="server" CssClass="form-control" />
    <asp:TextBox ID="txtNotes" runat="server" CssClass="form-control" placeholder="Notes"></asp:TextBox> 
    <asp:DropDownList ID="ddlReportsTo" runat="server" CssClass="form-control"></asp:DropDownList>
    <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-primary" OnClick="btnSave_Click" />
</asp:Content>