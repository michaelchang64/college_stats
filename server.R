# Imported shiny packages. ggplot2 is the data visualization package used in app
library(shiny)
library(ggplot2)

shinyServer(function(input, output, session) {
  
  # Reactive object selectedData stores modified version of college.data data.frame
  # that is modified based on university name, xvar, and yvar
  selectedData <- reactive({
    subset(college.data, college.data[1] == input$uni, select = c(input$xvar, input$yvar))
  })
  
  # output$uni is title text for scatterplot that reacts to changes in uni, xvar, and yvar
  output$uni <- renderText({
    paste("Comparing ", input$xvar, " and ", input$yvar, " for ", input$uni)
  })
  
  # output$plot1 is scatterplot that reacts to changes in uni, xvar, and yvar
  output$plot1 <- renderPlot({
    p <- ggplot(selectedData(), aes(x = selectedData()[input$xvar], y = selectedData()[input$yvar])) +
      geom_point()
    p + labs(x = input$xvar, y = input$yvar) +
      theme(aspect.ratio = .5) + theme_bw()
  })

})