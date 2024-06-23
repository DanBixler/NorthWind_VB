Public Class Categories
    Inherits System.Web.UI.Page

    Private repo As New CategoryRepository()
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Public Function GetCategory() As IEnumerable(Of Category)
        Return repo.Category
    End Function

End Class