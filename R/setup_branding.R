# ==============================================================================
# FILE: R/setup_branding.R
# ==============================================================================
#' Setup Branding Variables
#'
#' @description NISRA colors and logos setup
#' @export

setup_branding <- function() {

  #### NISRA COLOURS AND LOGOS ####
  ##### LOGOS #####

  # NISRA logo
  if (bilingual == TRUE) {
    nisra_logo <<-
      here("data/images/nisra-logo-unstacked-white.svg")
  } else {
    nisra_logo <<- here("data/images/English-only-white-logo.svg")
  }

  nisra_logo <<- paste0(
    "data:image/svg+xml,",
    readLines(nisra_logo) %>%
      paste(collapse = " ") %>%
      encodeURIComponent()
  )

  nisra_alt <<- "NISRA logo"

  # Departmental logo
  dep_logo <<- encodeURIComponent(
    paste0(
      here(), "/data/images/dept_logos/logo-white-unstacked-",
      nics_theme, ".svg"
    )
  )
  dep_alt <<- paste(toupper(nics_theme), "logo")

  # Accredited Official Statistics logo
  acc_official_stats <<- paste0(
    "data:image/svg+xml,",
    readLines(here(
      "data/images",
      "Accredited_Official_Statistics_Logo_English.svg"
    )) %>%
      paste(collapse = " ") %>%
      encodeURIComponent()
  )

  nat_alt <<- "Accredited Official Statistics logo"


  ##### COLOURS #####
  nisra_green_decoration <<- "#CEDC20"
  nisra_blue <<- "#3878c5"
  nisra_navy <<- "#00205b"
  nisra_col3_green <<- "#68a41e" # needs black text
  nisra_col4_purple <<- "#732777"
  nisra_col5_lilac <<- "#ce70d2" # needs black text

  ons_blue <<- "#12436d"
  ons_green <<- "#28a197"
  ons_red <<- "#801650"
  ons_orange <<- "#f46a25"

  invisible()
}
