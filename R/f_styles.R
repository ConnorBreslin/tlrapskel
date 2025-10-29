# ==============================================================================
# FILE: R/f_styles.R
# ==============================================================================
#' Excel Style Definitions
#'
#' @description All Excel styles from original Styles.R
#' @export
f_styles <- function() {
  pt <- openxlsx::createStyle(
    textDecoration = "bold",
    fontSize = 15
  )

  pt2 <- openxlsx::createStyle(textDecoration = "bold")

  # Styles for column headers
  ch <- openxlsx::createStyle(
    halign = "right",
    valign = "bottom",
    wrapText = TRUE,
    textDecoration = "bold"
  )

  # Column header (left aligned)
  chl <- openxlsx::createStyle(
    halign = "left",
    valign = "bottom",
    wrapText = TRUE,
    textDecoration = "bold"
  )

  # Column header (center)
  ch2 <- openxlsx::createStyle(
    halign = "center",
    valign = "bottom",
    wrapText = TRUE,
    textDecoration = "bold"
  )

  # Numbers
  ns <- openxlsx::createStyle(
    numFmt = "#,##0",
    halign = "right"
  )

  # Decimal numbers
  nsd <- openxlsx::createStyle(
    numFmt = "#,###.##",
    halign = "right"
  )

  ns_comma <- openxlsx::createStyle(
    numFmt = "#,##0",
    halign = "right"
  )

  ns_percent <- openxlsx::createStyle(
    numFmt = "#0.0",
    halign = "right"
  )

  # Alignments
  ra <- openxlsx::createStyle(halign = "right")
  la <- openxlsx::createStyle(halign = "left")

  # Text wrap (contents)
  tw <- openxlsx::createStyle(wrapText = TRUE)

  # Left-aligned text heading
  h3 <- openxlsx::createStyle(
    halign = "left",
    textDecoration = "bold",
    fontSize = 13
  )

  # Small sample size styles
  sh <- openxlsx::createStyle(halign = "right", fgFill = "#d3d3d3")
  sh_comma <- openxlsx::createStyle(halign = "right", fgFill = "#d3d3d3", numFmt = "#,##0")
  sh_percent <- openxlsx::createStyle(halign = "right", fgFill = "#d3d3d3", numFmt = "#0.0")

  # Column headers for maketable
  hs <- openxlsx::createStyle(
    halign = "right",
    wrapText = TRUE,
    textDecoration = "bold"
  )

  hs2 <- openxlsx::createStyle(
    halign = "left",
    wrapText = TRUE,
    textDecoration = "bold"
  )

  ts <- openxlsx::createStyle(
    textDecoration = "bold",
    fontSize = 14
  )

  # Return a named list
  list(
    pt = pt,
    pt2 = pt2,
    ch = ch,
    chl = chl,
    ch2 = ch2,
    ns = ns,
    nsd = nsd,
    ns_comma = ns_comma,
    ns_percent = ns_percent,
    ra = ra,
    la = la,
    tw = tw,
    h3 = h3,
    sh = sh,
    sh_comma = sh_comma,
    sh_percent = sh_percent,
    hs = hs,
    hs2 = hs2,
    ts = ts
  )
}
