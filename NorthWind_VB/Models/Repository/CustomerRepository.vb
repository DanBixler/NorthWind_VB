Public Class CustomerRepository

    Private context As New NW_DBContext()

    Public ReadOnly Property Customer() As IEnumerable(Of Customer)
        Get
            Return context.Customer
        End Get
    End Property

End Class
