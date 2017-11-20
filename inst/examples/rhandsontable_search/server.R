library(rhandsontable)

shinyServer(function(input, output, session) {
  
  output$hot = renderRHandsontable({
    if (!is.null(input$hot)) {
      DF = hot_to_r(input$hot)
    } else {
      DF = read.csv("life_expectancy.csv", stringsAsFactors = FALSE)
    }
    
    rhandsontable(DF, search = TRUE) %>%
      hot_table(highlightCol = TRUE, highlightRow = TRUE)
  })
  
})
