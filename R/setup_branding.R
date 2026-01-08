# ==============================================================================
# FILE: R/setup_branding.R
# ==============================================================================
#' Setup Branding Variables
#'
#' @description NISRA colors and logos setup
#' @export

setup_branding <- function(env = parent.frame()) {

  #### NISRA COLOURS AND LOGOS ####
  ##### LOGOS #####

  # NISRA logo
  if (bilingual == TRUE) {
    nisra_logo <-
      here("data/images/nisra-logo-unstacked-white.svg")
  } else {
    nisra_logo <- here("data/images/English-only-white-logo.svg")
  }

  nisra_logo <- paste0(
    "data:image/svg+xml,",
    readLines(nisra_logo) %>%
      paste(collapse = " ") %>%
      encodeURIComponent()
  )

  nisra_alt <- "NISRA logo, links to NISRA homepage"

  # Departmental logo
  dep_logo <- encodeURIComponent(
    paste0(
      here(), "/data/images/dept_logos/logo-white-unstacked-",
      nics_theme, ".svg"
    )
  )
  dep_alt <- paste(toupper(nics_theme), "logo, links to ", toupper(nics_theme), "homepage")

  # Departmental link



  # Accredited Official Statistics logo
  acc_official_stats <- paste0(
    "data:image/svg+xml,",
    readLines(here(
      "data/images",
      "Accredited_Official_Statistics_Logo_English.svg"
    )) %>%
      paste(collapse = " ") %>%
      encodeURIComponent()
  )

  nat_alt <- "Accredited Official Statistics logo"


  ##### COLOURS #####
  nisra_green_decoration <- "#CEDC20"
  nisra_blue <- "#3878c5"
  nisra_navy <- "#00205b"
  nisra_col3_green <- "#68a41e" # needs black text
  nisra_col4_purple <- "#732777"
  nisra_col5_lilac <- "#ce70d2" # needs black text
  nisra_col6_olive <- "#434700"
  nisra_col7_brown <- "#A88F8F"
  nisra_col8_slate <- "#3b3b3b"
  nisra_col9_pink <- "#e64791"
  nista_col10_burgandy <- "#400b23"


  ons_blue <- "#12436d"
  ons_green <- "#28a197"
  ons_red <- "#801650"
  ons_orange <- "#f46a25"


  # Assign all variables to the calling environment
  assign("nisra_logo", nisra_logo, envir = env)
  assign("nisra_alt", nisra_alt, envir = env)
  assign("dep_logo", dep_logo, envir = env)
  assign("dep_alt", dep_alt, envir = env)
  assign("acc_official_stats", acc_official_stats, envir = env)
  assign("nat_alt", nat_alt, envir = env)
  assign("nisra_green_decoration", nisra_green_decoration, envir = env)
  assign("nisra_blue", nisra_blue, envir = env)
  assign("nisra_navy", nisra_navy, envir = env)
  assign("nisra_col3_green", nisra_col3_green, envir = env)
  assign("nisra_col4_purple", nisra_col4_purple, envir = env)
  assign("nisra_col5_lilac", nisra_col5_lilac, envir = env)
  assign("nisra_col6_olive", nisra_col6_olive, envir = env)
  assign("nisra_col7_brown", nisra_col7_brown, envir = env)
  assign("nisra_col8_slate", nisra_col8_slate, envir = env)
  assign("nisra_col9_pink", nisra_col9_pink, envir = env)
  assign("nista_col10_burgandy", nista_col10_burgandy, envir = env)
  assign("ons_blue", ons_blue, envir = env)
  assign("ons_green", ons_green, envir = env)
  assign("ons_red", ons_red, envir = env)
  assign("ons_orange", ons_orange, envir = env)

  invisible()
}
