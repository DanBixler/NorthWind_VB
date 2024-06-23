Partial Class EditEmployee
    Inherits System.Web.UI.Page

    Private repo As New EmployeeRepository()
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Dim employeeId As Integer
            If Integer.TryParse(Request.QueryString("id"), employeeId) Then
                LoadEmployee(employeeId)
                LoadReportsToDropdown()
            Else
                Response.Redirect("Employees.aspx")
            End If
        End If
    End Sub

    Private Sub LoadEmployee(employeeId As Integer)
        Dim employee = repo.FindEmployeeById(employeeId)
        If employee IsNot Nothing Then
            txtFirstName.Text = employee.FirstName
            txtLastName.Text = employee.LastName
            txtTitle.Text = employee.Title
            txtTitleOfCourtesy.Text = employee.TitleOfCourtesy
            txtBirthDate.Text = If(employee.BirthDate.HasValue, employee.BirthDate.Value.ToString("yyyy-MM-dd"), String.Empty)
            txtHireDate.Text = If(employee.HireDate.HasValue, employee.HireDate.Value.ToString("yyyy-MM-dd"), String.Empty)
            txtAddress.Text = employee.Address
            txtCity.Text = employee.City
            txtRegion.Text = employee.Region
            txtPostalCode.Text = employee.PostalCode
            txtCountry.Text = employee.Country
            txtHomePhone.Text = employee.HomePhone
            txtExtension.Text = employee.Extension
            ddlReportsTo.SelectedValue = If(employee.ReportsTo.HasValue, employee.ReportsTo.Value.ToString(), String.Empty)
        Else
            Response.Redirect("Employees.aspx")
        End If
    End Sub

    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As EventArgs)
        Dim employeeId As Integer
        If Integer.TryParse(Request.QueryString("id"), employeeId) Then
            Dim employee = repo.FindEmployeeById(employeeId)
            If employee IsNot Nothing Then
                employee.FirstName = txtFirstName.Text
                employee.LastName = txtLastName.Text
                employee.Title = txtTitle.Text
                employee.TitleOfCourtesy = txtTitleOfCourtesy.Text
                employee.BirthDate = If(String.IsNullOrEmpty(txtBirthDate.Text), CType(Nothing, DateTime?), DateTime.Parse(txtBirthDate.Text))
                employee.HireDate = If(String.IsNullOrEmpty(txtHireDate.Text), CType(Nothing, DateTime?), DateTime.Parse(txtHireDate.Text))
                employee.Address = txtAddress.Text
                employee.City = txtCity.Text
                employee.Region = txtRegion.Text
                employee.PostalCode = txtPostalCode.Text
                employee.Country = txtCountry.Text
                employee.HomePhone = txtHomePhone.Text
                employee.Extension = txtExtension.Text
                employee.ReportsTo = If(String.IsNullOrEmpty(ddlReportsTo.SelectedValue), CType(Nothing, Integer?), Integer.Parse(ddlReportsTo.SelectedValue))

                If empPhoto.HasFile Then
                    Dim photoBytes As Byte() = empPhoto.FileBytes
                    employee.Photo = photoBytes
                End If

                repo.SaveChanges()
                Response.Redirect("Employees.aspx")
            End If
        End If
    End Sub

    Private Sub LoadReportsToDropdown()
        Dim employees = repo.GetEmployees()
        ddlReportsTo.DataSource = employees
        ddlReportsTo.DataTextField = "FullName"
        ddlReportsTo.DataValueField = "EmployeeID"
        ddlReportsTo.DataBind()

        ddlReportsTo.Items.Insert(0, New ListItem("-- Select Supervisor --", ""))
    End Sub

End Class