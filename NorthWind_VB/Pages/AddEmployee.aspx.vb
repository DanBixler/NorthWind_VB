Partial Class AddEmployee
    Inherits System.Web.UI.Page

    Private repo As New EmployeeRepository()

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            LoadReportsToDropdown()
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

    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As EventArgs)
        Dim employee As New Employee() With {
            .FirstName = txtFirstName.Text,
            .LastName = txtLastName.Text,
            .Title = txtTitle.Text,
            .TitleOfCourtesy = txtTitleOfCourtesy.Text,
            .BirthDate = Convert.ToDateTime(txtBirthDate.Text),
            .HireDate = Convert.ToDateTime(txtHireDate.Text),
            .Address = txtAddress.Text,
            .City = txtCity.Text,
            .Region = txtRegion.Text,
            .PostalCode = txtPostalCode.Text,
            .Country = txtCountry.Text,
            .HomePhone = txtHomePhone.Text,
            .Extension = txtExtension.Text,
            .Notes = txtNotes.Text,
            .ReportsTo = If(String.IsNullOrEmpty(ddlReportsTo.SelectedValue), CType(Nothing, Integer?), Integer.Parse(ddlReportsTo.SelectedValue))
        }

        If empPhoto.HasFile Then
            Dim photoBytes As Byte() = empPhoto.FileBytes
            employee.Photo = photoBytes
        End If

        repo.AddEmployee(employee)
        repo.SaveChanges()

        Response.Redirect("Employees.aspx")
    End Sub

End Class