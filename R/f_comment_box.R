# ==============================================================================
# FILE: R/f_comment_box.R
# ==============================================================================
#' Create comment box
#'
#' @description Create comment box
#' @export

f_comment_box <- function(colour_style = "red", text_words = NA) {
  if (!report_final) {
    div(
      p(class = paste0("statusbox_", colour_style), text_words)
    )
  }
}
