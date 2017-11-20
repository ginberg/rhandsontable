library(rhandsontable)

shinyUI(fluidPage(
  titlePanel("Search Data File"),
  helpText("Cells that match with the search expression will be highlighted."),
  
  rHandsontableOutput("hot")
))
