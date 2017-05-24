library(shiny)

shinyServer(function(input, output) {
  
  formulaText <- reactive(function() {
    paste("", input$name)
  })
  
  output$name <- reactiveText(function() {
    formulaText()
  })
  
  output$admissionsPlot <- renderPlot({
    if (input$name == "Brown") {
      
    }
  })
})