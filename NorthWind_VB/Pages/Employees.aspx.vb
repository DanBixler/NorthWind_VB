Imports System.Drawing.Imaging

Partial Class Employees
    Inherits System.Web.UI.Page

    Private repo As New EmployeeRepository()
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            BindEmployees()
        End If
    End Sub

    Protected Sub BindEmployees()
        gvEmployees.DataSource = GetEmployees()
        gvEmployees.DataBind()
    End Sub
    Protected Function GetEmployees() As IEnumerable(Of Employee)
        Return repo.Employee.ToList()
    End Function

    Protected Sub btnAddEmployee_Click(ByVal sender As Object, ByVal e As EventArgs)
        Response.Redirect("AddEmployee.aspx")
    End Sub

    Protected Sub gvEmployees_RowCommand(ByVal sender As Object, ByVal e As GridViewCommandEventArgs)
        Dim employeeId As Integer = Convert.ToInt32(e.CommandArgument)
        If e.CommandName = "Edit" Then
            Response.Redirect("EditEmployee.aspx?id=" & employeeId)
        ElseIf e.CommandName = "Delete" Then
            DeleteEmployee(employeeId)
            BindEmployees()
        End If
    End Sub

    Private Sub DeleteEmployee(employeeId As Integer)
        Dim employee = repo.FindEmployeeById(employeeId)
        If employee IsNot Nothing Then
            repo.RemoveEmployee(employee)
            repo.SaveChanges()
        End If
    End Sub

End Class