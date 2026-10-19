# Recommended citation: https://an-ethz.github.io/pwr4exp/authors.html
pwr4exp_reference <- utils::bibentry(
  bibtype = "Article",
  key = "Wang2025pwr4exp",
  title = "Invited review: Enhancing quality of dairy cattle research through adequate power analysis",
  author = c(
    utils::person("Kai", "Wang"),
    utils::person("Usman", "Arshad"),
    utils::person("Mutian", "Niu")
  ),
  journal = "Journal of Dairy Science",
  year = "2025",
  volume = "108",
  number = "9",
  pages = "8981-9003",
  doi = "10.3168/jds.2024-25793"
)

research_group_label <- function() {
  tags$span(class = "research-group-name", "Animal Nutrition, ETH Zurich")
}

citation_reference_ui <- function() {
  tags$p(
    class = "citation-reference",
    paste0(
      "Wang K, Arshad U, Niu M (", pwr4exp_reference$year, "). ",
      pwr4exp_reference$title, ". "
    ),
    tags$em(pwr4exp_reference$journal, .noWS = "outside"),
    paste0(
      ", ", pwr4exp_reference$volume, "(", pwr4exp_reference$number, "), ",
      gsub("-", "–", pwr4exp_reference$pages, fixed = TRUE), ". "
    ),
    tags$a(
      paste0("doi:", pwr4exp_reference$doi),
      href = paste0("https://doi.org/", pwr4exp_reference$doi),
      target = "_blank", rel = "noopener noreferrer", .noWS = "outside"
    )
  )
}

citation_panel <- function(download_id, show_heading = TRUE) {
  div(
    class = "citation-panel",
    if (show_heading) tags$h3(icon("quote-left"), " How to cite"),
    tags$p("If you use this app or the pwr4exp package in your research, please cite:"),
    citation_reference_ui(),
    downloadButton(download_id, "Download citation (.bib)", class = "btn-light")
  )
}
