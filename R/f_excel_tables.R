# ==============================================================================
# FILE: R/f_excel_tables.R
# ==============================================================================
#' Create Single Excel Table
#'
#' @description Creates formatted Excel table
# Function to add a single table to an excel worksheet.
# Required parameters are title, info (accessibility requirement),
# dataframe(df), sheet and tablename
#' @export

f_single_excel <- function(title, info, notes = c(NA), df, sheet, tablename,
                           num_cols = NA,
                           pct_cols = NA) {

  styles <- f_styles()
  
  r <- 1

  writeData(new_workbook,
            sheet = sheet,
            x = paste0(title),
            startRow = r,
            colNames = FALSE
  )

  addStyle(new_workbook, sheet,
           style = styles$pt,
           rows = r,
           cols = 1
  )

  r <- r + 1

  writeData(new_workbook,
            sheet = sheet,
            x = paste0(info),
            startRow = r,
            colNames = FALSE
  )

  r <- r + 1
  if (is.na(notes[1])) {


  } else {
    writeData(new_workbook,
              sheet = sheet,
              x = paste0(notes),
              startRow = r,
              colNames = FALSE
    )

    addStyle(new_workbook,
             sheet = sheet,
             style = styles$pt2,
             rows = r,
             cols = 1
    )

    r <- r + length(notes)
  }

  writeDataTable(new_workbook,
                 sheet = sheet,
                 x = df,
                 startRow = r,
                 tableStyle = "none",
                 tableName = tablename,
                 withFilter = FALSE,
                 bandedRows = FALSE,
                 headerStyle = ch,
                 keepNA = TRUE
  )

  # Applies style to cells of table
  addStyle(new_workbook,
           sheet = sheet,
           style = styles$chl,
           rows = r,
           cols = 1
  )

  addStyle(new_workbook,
           sheet = sheet,
           style = styles$ns,
           rows = r + 1:(r + nrow(df)),
           cols = num_cols,
           gridExpand = TRUE
  )

  addStyle(new_workbook,
           sheet = sheet,
           style = styles$ns_percent,
           rows = r + 1:(r + nrow(df)),
           cols = pct_cols,
           gridExpand = TRUE
  )
}
