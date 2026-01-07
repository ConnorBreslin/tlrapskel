# ==============================================================================
# FILE: R/f_email.R
# ==============================================================================
#'
#' @description Creates a simple mailto: hyperlink for email addresses
#' in HTML output
#' @importFrom htmltools div
#' @export

f_email <- function(email) {
  a(href = paste0("mailto:", email), email)
}
