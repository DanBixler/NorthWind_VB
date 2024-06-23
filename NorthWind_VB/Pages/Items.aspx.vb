Public Class Items
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Dim categoryId As Integer
            If Integer.TryParse(Request.QueryString("category"), categoryId) Then
                BindProducts(categoryId)
                SetCategoryName(categoryId)
            Else
                'Handle invalide or missing category ID
                Response.Write("Invalid category ID.")
            End If
        End If

    End Sub

    Private Sub BindProducts(categoryId As Integer)
        Dim db As New NW_DBContext()
        Dim products = db.Product.Where(Function(p) p.CategoryID = categoryId).ToList()
        gvProducts.DataSource = products
        gvProducts.DataBind()
    End Sub

    Private Sub SetCategoryName(categoryId As Integer)
        Dim db As New NW_DBContext
        Dim category = db.Category.FirstOrDefault(Function(c) c.CategoryID = categoryId)
        If category IsNot Nothing Then
            lblCategoryName.Text = category.CategoryName
        Else
            lblCategoryName.Text = "Products"
        End If
    End Sub

End Class