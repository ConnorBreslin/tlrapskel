# ==============================================================================
# FILE: R/f_contact.R
# ==============================================================================
#'
#' @description Creates contact information section -
#' Lead Statistician
#' Published By
#' Telephone number
#' Email address
#' @importFrom htmltools div
#' @export

f_contact <- function() {
  require(htmltools)
  div(
    class = "header",
    div(
      class = "row", style = "display:flex",
      div(
        style = "width: 100%; padding-left:15px; font-size: 120%;",
        p(strong("Published by: "), header_publisher),
        p(strong("Lead Statistician: "), lead_statistician),
        p(strong("Telephone: "), header_telephone),
        p(strong("Email: "), f_email(header_email))
      )
    )
  )
}
