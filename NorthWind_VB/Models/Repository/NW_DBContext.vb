﻿Imports System.Data.Entity
Public Class NW_DBContext

    Inherits DbContext

    Public Property Product() As DbSet(Of Product)
    Public Property Supplier() As DbSet(Of Supplier)
    Public Property Employee() As DbSet(Of Employee)
    Public Property Category() As DbSet(Of Category)
    Public Property Customer() As DbSet(Of Customer)

End Class
