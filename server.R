library(shiny)
library(ggplot2)
library(dplyr)

shinyServer(function(input, output, session) {
  
  selectedData <- reactive({
    subset(college.data, college.data[1] == input$uni, select = c(input$xvar, input$yvar))
  })
  
  output$uni <- renderText({
    paste("Comparing ", input$xvar, " and ", input$yvar, " for ", input$uni)
  })
  
  output$plot1 <- renderPlot({
    p <- ggplot(selectedData(), aes(x = selectedData()[input$xvar], y = selectedData()[input$yvar])) +
      geom_point()
    p + labs(x = input$xvar, y = input$yvar) 
  })

})