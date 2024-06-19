Imports System.Data.Entity
Public Class NW_DBContext

    Inherits DbContext

    Public Property Product() As DbSet(Of Product)

End Class
