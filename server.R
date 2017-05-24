library(shiny)

shinyServer(function(input, output) {
  
  output$uni <- renderText({
    paste("Comparing ", input$xvar, " and ", input$yvar, " for ", input$uni)
  })
  
  # Reactive expression with ggvis plot
  vis <- reactive({
    brown.data %>% ggvis(~xvar, ~yvar) %>% layer_points() %>%
      add_axis("x", title_offset = 40) %>%
      add_axis("y", title_offset = 65) %>%
      layer_smooths()
  })
  
  bind_shiny(vis, "plot1")
})