library(shiny)
library(ggplot2)
library(dplyr)

shinyServer(function(input, output, session) {
  
  college.data.filtered <- college.data
  
  filter.uni <- reactive({
    # Filtering universities
    uni <- paste0("%", input$uni, "%")
    college.data.filtered <- college.data.filtered %>% filter(School %like% uni)
    
    college.data.filtered <- as.data.frame(college.data.filtered)
  })
  
  output$uni <- renderText({
    paste("Comparing ", input$xvar, " and ", input$yvar, " for ", input$uni)
  })
  
  output$uni <- renderText({
    paste("Comparing ", input$xvar, " and ", input$yvar, " for ", input$uni)
  })
  
  output$plot1 <- renderPlot({

    ggplot(college.data.filtered, aes(input$xvar, input$yvar)) + geom_point()
  })
  
})
