'------------------------------------------------------------------------------
' <auto-generated>
'     This code was generated from a template.
'
'     Manual changes to this file may cause unexpected behavior in your application.
'     Manual changes to this file will be overwritten if the code is regenerated.
' </auto-generated>
'------------------------------------------------------------------------------

Imports System
Imports System.Collections.Generic

Partial Public Class Territory
    Public Property TerritoryID As String
    Public Property TerritoryDescription As String
    Public Property RegionID As Integer

    Public Overridable Property Region As Region
    Public Overridable Property Employees As ICollection(Of Employee) = New HashSet(Of Employee)

End Class
