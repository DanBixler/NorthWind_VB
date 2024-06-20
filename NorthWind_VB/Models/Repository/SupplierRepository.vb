Public Class SupplierRepository

    Private context As New NW_DBContext()

    Public ReadOnly Property Supplier As IEnumerable(Of Supplier)
        Get
            Return context.Supplier
        End Get
    End Property

End Class
