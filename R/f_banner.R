# ==============================================================================
# FILE: R/f_banner.R
# ==============================================================================
#' Create Report Banner
#'
#' @description Creates HTML banner with logos and title
#' @importFrom htmltools div
#' @export

f_banner <- function(title, subtitle = "") {
  div(
    div(
      style = "background-color: var(--nics-banner-bg); padding: 10px",
      div(
        class = "grid mtb",
        if (statistic_type == "as") {
          div(
            style = "display: flex; justify-content: space-between; align-items: center;",
            # Position nisra logo to the left
            div(
              style = "flex: 1; display: flex; justify-content: flex-start;",
              a(img(src = nisra_logo, alt = "NISRA logo", width = "220px"))
            ),
            div(
              style = "flex: 1; display: flex; justify-content: center;",
              img(src = acc_official_stats, alt = nat_alt, width = "100px")
            ),
            # Position the department logo to the right
            div(
              style = "flex: 1; display: flex; justify-content: flex-end;",
              a(img(src = dep_logo, alt = dep_alt, width = "200px"))
            )
          )
        } else {
          # If the national statistics logo isn't present space between department and nisra logo
          div(
            style = "display: flex; justify-content: space-between; align-items: center;",
            a(img(src = nisra_logo, alt = "NISRA logo", width = "220px")),
            a(img(src = dep_logo, alt = dep_alt, width = "200px"))
          )
        }
      ),
      div(
        style = "display: flex; justify-content: center; text-align: center;",
        h1(style = "color: #ffffff; font-size: 30px;
            text-transform: capitalize;", class = "toc-ignore", title)
      ),
      div(style = "font-size: 18px; color: #ffffff; display: flex;
          justify-content: center; text-align: center;", subtitle)
    ),
    div(style = paste0("background-color: var(--nics-banner-highlight);
                       height: 9px; width: 100%;"))
  )
}
