Public Class EmployeeRepository

    Private context As New NW_DBContext()

    Public ReadOnly Property Employee() As IEnumerable(Of Employee)
        Get
            Return context.Employee
        End Get
    End Property

End Class
