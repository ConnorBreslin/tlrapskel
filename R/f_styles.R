# ==============================================================================
# FILE: R/f_styles.R
# ==============================================================================
#' Excel Style Definitions
#'
#' @description All Excel styles from original Styles.R
#' @export
f_styles <- function() {
  # Styles for Page titles
  pt <- createStyle(
    textDecoration = "bold",
    fontSize = 15
  )

  pt2 <- createStyle(textDecoration = "bold")

  # Styles for column headers
  ch <- createStyle(
    halign = "right",
    valign = "bottom",
    wrapText = TRUE,
    textDecoration = "bold"
  )

  ch_lined <- createStyle(
    halign = "right",
    valign = "bottom",
    wrapText = TRUE,
    textDecoration = "bold",
    border = "TopBottom",
    borderStyle = c("thin", "double")
  )

  ch_lined_left <- createStyle(
    halign = "left",
    valign = "bottom",
    wrapText = TRUE,
    textDecoration = "bold",
    border = "TopBottom",
    borderStyle = c("thin", "double")
  )

  # Style for column header (left aligned)
  chl <- createStyle(
    halign = "left",
    valign = "bottom",
    wrapText = TRUE,
    textDecoration = "bold"
  )

  # Style for column header (center)
  ch2 <- createStyle(
    halign = "center",
    valign = "bottom",
    wrapText = TRUE,
    textDecoration = "bold"
  )

  # Style for numbers
  ns <- createStyle(
    numFmt = "#,##0",
    halign = "right"
  )

  ns_bold <- createStyle(
    numFmt = "#,##0",
    halign = "right",
    textDecoration = "bold"
  )

  ns_italic <- createStyle(
    numFmt = "#,##0",
    halign = "right",
    textDecoration = "italic",
    border = "TopBottom",
    borderStyle = c("thin", "thin")
  )

  # Style for decimal numbers
  nsd <- createStyle(
    numFmt = "#,###.##",
    halign = "right"
  )

  ns_comma <- createStyle(
    numFmt = "#,##0",
    halign = "right"
  )

  ns_percent <- createStyle(
    numFmt = "#0.0",
    halign = "right"
  )

  num_resp <- createStyle(
    textDecoration = c("bold", "italic"),
    border = "TopBottom",
    borderStyle = c("thin", "thin")
  )

  # Style to right align cells
  ra <- createStyle(halign = "right")

  # Style to left align cells
  la <- createStyle(halign = "left")

  # Style for contents
  tw <- createStyle(wrapText = TRUE)

  # Style for left aligned text headings
  h3 <- createStyle(
    halign = "left",
    textDecoration = "bold",
    fontSize = 13
  )

  # small sample size style
  sh <- createStyle(halign = "right", fgFill = "#d3d3d3")

  sh_comma <- createStyle(halign = "right", fgFill = "#d3d3d3", numFmt = "#,##0")

  sh_percent <- createStyle(halign = "right", fgFill = "#d3d3d3", numFmt = "#0.0")

  # Style for column headers needed for maketable function
  hs <- createStyle(
    halign = "right",
    wrapText = TRUE,
    textDecoration = "bold"
  )

  hs2 <- createStyle(
    halign = "left",
    wrapText = TRUE,
    textDecoration = "bold"
  )

  ts <- createStyle(
    textDecoration = "bold",
    fontSize = 14
  )

  # Size 12 bold style
  s12_bold <- createStyle(
    textDecoration = "bold",
    fontSize = 12,
    halign = "left"
  )

  grey <- createStyle(
    fgFill = "#D9D9D9"
  )

  # White text
  wt <- createStyle(
    fontColour = "#ffffff"
  )

  list(
    pt = pt,
    pt2 = pt2,
    ch = ch,
    ch_lined = ch_lined,
    ch_lined_left = ch_lined_left,
    chl = chl,
    ch2 = ch2,
    ns = ns,
    ns_bold = ns_bold,
    ns_italic = ns_italic,
    nsd = nsd,
    ns_comma = ns_comma,
    ns_percent = ns_percent,
    num_resp = num_resp,
    ra = ra,
    la = la,
    tw = tw,
    h3 = h3,
    sh = sh,
    sh_comma = sh_comma,
    sh_percent = sh_percent,
    hs = hs,
    hs2 = hs2,
    ts = ts,
    s12_bold = s12_bold,
    grey = grey,
    wt = wt
  )
}
