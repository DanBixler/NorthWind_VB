<%@ Page Title="Items" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Items.aspx.vb" Inherits="NorthWind_VB.Items" %>
<%@ Import Namespace="NorthWind_VB" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <div class="container">
            <h2><asp:Label ID="lblCategoryName" runat="server" Text="Products"></asp:Label></h2>
            <asp:GridView ID="gvProducts" runat="server" AutoGenerateColumns="False" CssClass="table table-striped">
                <Columns>
                    <asp:BoundField DataField="ProductName" HeaderText="Product Name" />                  
                    <asp:BoundField DataField="UnitPrice" HeaderText="Price" DataFormatString="{0:C}" />
                    <asp:BoundField DataField="QuantityPerUnit" HeaderText="Quantity per Unit" />
                </Columns>
            </asp:GridView>
        </div>
    </main>
</asp:Content>