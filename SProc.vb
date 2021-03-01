        Dim sqlCon As New SqlConnection("")
        Dim sqlCmd As New SqlCommand()
        sqlCon.Open()
 
        Try
            With sqlCmd
                .CommandText = "sp_InsertquoteStartDate"
                .CommandType = CommandType.StoredProcedure
                .Connection = sqlCon
                .Parameters.AddWithValue("@Param1", Param1)
                .Parameters.AddWithValue("@Param2", Param2)
             
                .ExecuteNonQuery()
            End With
        Catch ex As Exception
 
            MessageBox(ex.Message, "Error executing 'sp_InsertquoteStartDate'", MessageBoxButtons.OK, MessageBoxIcon.Error)
 
        Finally
            sqlCon.Close()
            sqlCon.Dispose()
            sqlCmd.Dispose()
 
        End Try
