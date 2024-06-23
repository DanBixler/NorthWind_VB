
Imports System.Web
Imports System.Web.Services

Public Class ImageHandler
    Implements System.Web.IHttpHandler


    Sub ProcessRequest(ByVal context As HttpContext) Implements IHttpHandler.ProcessRequest
        Try
            Dim imageType As String = context.Request.QueryString("type")
            Dim imageId As Integer

            If Integer.TryParse(context.Request.QueryString("id"), imageId) Then
                Using db As New NW_DBContext()
                    Select Case imageType.ToLower()
                        Case "employee"
                            ServerEmployeeImage(db, imageId, context)
                        Case "category"
                            ServerCategoryImage(db, imageId, context)
                    End Select
                End Using
            End If
        Catch ex As Exception
            context.Response.Write("Error: " & ex.Message)
        End Try
    End Sub

    Private Sub ServerEmployeeImage(db As NW_DBContext, employeeID As Integer, context As HttpContext)
        Dim employee = db.Employee.SingleOrDefault(Function(e) e.EmployeeID = employeeID)
        If employee IsNot Nothing AndAlso employee.Photo IsNot Nothing Then
            context.Response.ContentType = "image/bmp"
            context.Response.BinaryWrite(employee.Photo)
        End If
    End Sub

    Private Sub ServerCategoryImage(db As NW_DBContext, categoryID As Integer, context As HttpContext)
        Dim category = db.Category.SingleOrDefault(Function(c) c.CategoryID = categoryID)
        If category IsNot Nothing AndAlso category.Picture IsNot Nothing Then
            context.Response.ContentType = "image/bmp"
            context.Response.BinaryWrite(category.Picture)
        End If
    End Sub

    ReadOnly Property IsReusable() As Boolean Implements IHttpHandler.IsReusable
        Get
            Return False
        End Get
    End Property

End Class