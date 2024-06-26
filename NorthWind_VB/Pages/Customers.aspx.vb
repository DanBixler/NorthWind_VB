Public Class Customers
    Inherits System.Web.UI.Page

    Private repo As New CustomerRepository()
    Public Const PageSize As Integer = 15

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Public Function GetCustomers() As IEnumerable(Of Customer)
        Return repo.Customer
    End Function

    Protected ReadOnly Property CurrentPage As Integer
        Get
            Dim page As Integer = 1
            If Not String.IsNullOrEmpty(Request.QueryString("page")) AndAlso Integer.TryParse(Request.QueryString("page"), page) Then
                Return Math.Max(1, page)
            End If
            Return page
        End Get
    End Property

    Protected ReadOnly Property TotalPages As Integer
        Get
            Dim suppliers = GetCustomers().ToList()
            Return Math.Ceiling(suppliers.Count / PageSize)
        End Get
    End Property

End Class