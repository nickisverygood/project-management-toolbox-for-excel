Attribute VB_Name = "ArthimiticCompare"
Public Function IFSmaller(ori As Variant, compare As Variant, result As Variant) As Variant
    On Error Resume Next
    If ori < compare Then
        IFSmaller = result
    Else
        IFSmaller = ori
    End If
End Function

Public Function IFBigger(ori As Variant, compare As Variant, result As Variant) As Variant
    On Error Resume Next
    If ori > compare Then
        IFBigger = result
    Else
        IFBigger = ori
    End If
End Function

Public Function BandLimit(ori As Variant, Low As Variant, High As Variant) As Variant
    On Error Resume Next
    If ori > High Then
        BandLimit = High
    ElseIf ori < Low Then
        BandLimit = Low
    Else
        BandLimit = ori
    End If
End Function

Public Function ZeroAsNA(ori As Variant) As Variant
    If ori = 0 Then
        ZeroAsNA = CVErr(xlErrNA)
    Else
        ZeroAsNA = ori
    End If
End Function
Sub SetZero()
        Selection.Value2 = 0
     Debug.Print ActiveSheet.CodeName
    If ActiveSheet.CodeName = "Worksheet___7" Then
        range(Evaluate("INDIRECT(""$B$4"")")).Calculate
    End If
End Sub

