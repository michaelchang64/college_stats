library(shiny)

shinyServer(function(input, output) {
  
  formulaText <- textOutput(function() {
    paste("You have selected ", input$name)
  })
  
  output$admissionsPlot <- renderPlot({
  })
})