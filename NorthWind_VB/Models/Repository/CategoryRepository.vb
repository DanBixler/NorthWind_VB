Public Class CategoryRepository

    Private context As New NW_DBContext()

    Public ReadOnly Property Category As IEnumerable(Of Category)
        Get
            Return context.Category
        End Get
    End Property

End Class
