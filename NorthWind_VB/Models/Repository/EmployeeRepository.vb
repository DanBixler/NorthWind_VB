Public Class EmployeeRepository

    Private context As New NW_DBContext()

    Public ReadOnly Property Employee() As IEnumerable(Of Employee)
        Get
            Return context.Employee
        End Get
    End Property

    Public Function GetEmployees() As List(Of Employee)
        Return context.Employee.ToList()
    End Function

    Public Sub AddEmployee(emp As Employee)
        context.Employee.Add(emp)
        context.SaveChanges()
    End Sub

    Public Sub RemoveEmployee(emp As Employee)
        context.Employee.Remove(emp)
        context.SaveChanges()
    End Sub

    Public Function FindEmployeeById(id As Integer) As Employee
        Return context.Employee.Find(id)
    End Function

    Public Sub SaveChanges()
        context.SaveChanges()
    End Sub

End Class
