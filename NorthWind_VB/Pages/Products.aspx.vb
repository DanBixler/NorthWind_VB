Public Class Products
    Inherits System.Web.UI.Page

    Private repo As New ProductRepository()
    Public Const PageSize As Integer = 15

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Function GetProducts() As IEnumerable(Of Product)
        Return repo.Product
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
            Dim products = GetProducts().ToList()
            Return Math.Ceiling(products.Count / PageSize)
        End Get
    End Property

End Class