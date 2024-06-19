Public Class ProductRepository

    Private context As New NW_DBContext()

    Public ReadOnly Property Product As IEnumerable(Of Product)
        Get
            Return context.Product
        End Get
    End Property

End Class
