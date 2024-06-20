Public Class Employees
    Inherits System.Web.UI.Page

    Private repo As New EmployeeRepository()
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Function GetEmployees() As IEnumerable(Of Employee)
        Return repo.Employee
    End Function

End Class