# ==============================================================================
# FILE: R/f_email.R
# ==============================================================================
#' Used by f_contact
#'
#' @description Creates a mailto: hyperlink for email addresses
#' @importFrom htmltools div
#' @export

f_email <- function(email) {
  a(href = paste0("mailto:", email), email)
}
