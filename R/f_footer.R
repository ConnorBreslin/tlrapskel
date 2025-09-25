# ==============================================================================
# FILE: R/f_footer.R
# ==============================================================================
#' Add footer to page
#'
#' @description Create footer at bottom of page
#' @export

f_footer <- function() {
  HTML('
<footer style="color: #ffffff; background-color: #00205b;">
  <div class="col-wide" data-analytics="footer">
    <div class="row" style = "display: flex;">
      <div class="column left">
        <footerheading>Links</footerheading>
        <ul>
          <li><a href="https://www.nisra.gov.uk/" class="link" style="color: #ffffff">NISRA</a></li>
          <li><a href="https://www.nidirect.gov.uk" class="link" style="color: #ffffff">NIDirect</a></li>
          <li><a href="https://www.gov.uk/" class="link" style="color: #ffffff">GOV.UK</a></li>
          <li><a href="https://data.nisra.gov.uk/" class="link" style="color: #ffffff">NISRA Data Portal</a></li>
          <li><a href="https://build.nisra.gov.uk/" class="link" style="color: #ffffff">Census Flexible Table Builder</a></li>
        </ul>
      </div>
      <div class="column right">
        <footerheading>Follow NISRA</h3></footerheading>
        <ul>
          <li><a href="https://www.facebook.com/nisra.gov.uk" class="link" style="color: #ffffff">Facebook</a></li>
          <li><a href="https://twitter.com/NISRA" class="link" style="color: #ffffff">X (Twitter)</a></li>
          <li><a href="https://www.youtube.com/user/nisrastats" class="link" style="color: #ffffff">YouTube</a></li>
        </ul>
      </div>
    </div>
    <div class="flex-list">
      <ul>
        <li><a href="https://www.nisra.gov.uk/crown-copyright" class="link" style="color: #ffffff">&copy Crown Copyright</a></li>
        <li><a href="https://www.nisra.gov.uk/contact" class="link" style="color: #ffffff">Contact us</a></li>
        <li><a href="https://www.nisra.gov.uk/terms-and-conditions" class="link" style="color: #ffffff">Terms and conditions</a></li>
        <li><a href="https://www.nisra.gov.uk/cookies" class="link" style="color: #ffffff">Cookies</a></li>
        <li><a href="https://www.nisra.gov.uk/nisra-privacy-notice" class="link" style="color: #ffffff">Privacy</a></li>
        <li><a href="https://datavis.nisra.gov.uk/dissemination/accessibility-statement-visualisations.html" class="link" style="color: #ffffff">Accessibility Statement</a></li>
      </ul>
    </div>
  </div>
</footer>
')
}
