# ==============================================================================
# FILE: R/f_email.R
# ==============================================================================
#' Used by f_contact
#'
#' @description Create email mailto link
#' @importFrom htmltools div
#' @export

f_email <- function(email) {
  a(href = paste0("mailto:", email), email)
}
