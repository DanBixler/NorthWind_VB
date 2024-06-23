<%@ Page Title="Edit Employee" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditEmployee.aspx.vb" Inherits="NorthWind_VB.EditEmployee" %>
<%@ Import Namespace="NorthWind_VB" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Edit Employee</h2>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="text-danger" />

    <div class="form-group">
        <label for="txtFirstName">First Name</label>
        <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" placeholder="First Name"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName" ErrorMessage="First Name is required." CssClass="text-danger" />
    </div>

    <div class="form-group">
        <label for="txtLastName">Last Name</label>
        <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" placeholder="Last Name"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLastName" ErrorMessage="Last Name is required." CssClass="text-danger" />
    </div>

    <div class="form-group">
        <label for="txtTitle">Title</label>
        <asp:TextBox ID="txtTitle" runat="server" CssClass="form-control" placeholder="Title"></asp:TextBox>
    </div>

     <div class="form-group">
        <label for="txtTitleOfCourtesy">Title of Courtesy</label>
        <asp:TextBox ID="txtTitleOfCourtesy" runat="server" CssClass="form-control" placeholder="Title of Courtesy"></asp:TextBox>
    </div>

    <div class="form-group">
        <label for="txtBirthDate">Date of Birth</label>
        <asp:TextBox ID="txtBirthDate" runat="server" CssClass="form-control" placeholder="Date of Birth"></asp:TextBox>
    </div>

    <div class="form-group">
        <label for="txtHireDate">Hire Date</label>
        <asp:TextBox ID="txtHireDate" runat="server" CssClass="form-control" placeholder="Hire Date"></asp:TextBox>
    </div>

     <div class="form-group">
        <label for="txtAddress">Address</label>
        <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" placeholder="Address"></asp:TextBox>
    </div>

    <div class="form-group">
        <label for="txtCity">City</label>
        <asp:TextBox ID="txtCity" runat="server" CssClass="form-control" placeholder="City"></asp:TextBox>
    </div>

     <div class="form-group">
        <label for="txtRegion">Region</label>
        <asp:TextBox ID="txtRegion" runat="server" CssClass="form-control" placeholder="Region"></asp:TextBox>
    </div>

     <div class="form-group">
        <label for="txtPostalCode">Postal Code</label>
        <asp:TextBox ID="txtPostalCode" runat="server" CssClass="form-control" placeholder="PostalCode"></asp:TextBox>
    </div>

     <div class="form-group">
        <label for="txtCountry">Country</label>
        <asp:TextBox ID="txtCountry" runat="server" CssClass="form-control" placeholder="Country"></asp:TextBox>
    </div>    

    <div class="form-group">
        <label for="txtHomePhone">Home Phone</label>
        <asp:TextBox ID="txtHomePhone" runat="server" CssClass="form-control" placeholder="Home Phone"></asp:TextBox>
    </div>

    <div class="form-group">
        <label for="txtExtension">Extension</label>
        <asp:TextBox ID="txtExtension" runat="server" CssClass="form-control" placeholder="Extension"></asp:TextBox>
    </div>

    <div class="form-group">
        <label for="empPhoto">Photo</label>
        <asp:FileUpload ID="empPhoto" runat="server" CssClass="form-control" />
    </div>

     <div class="form-group">
        <label for="ddlReportsTo">Reports To</label>
        <asp:DropDownList ID="ddlReportsTo" runat="server" CssClass="form-control">
        </asp:DropDownList>
    </div>

    <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-primary" OnClick="btnSave_Click" />
</asp:Content>