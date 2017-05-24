# ui.R

# Import shiny package with library() function
library(shiny)

# Creates page that fits dimension of screen
shinyUI(fluidPage(
  # This is the title
  titlePanel("Ivy League College Admissions"),
  # This creates the sidebar
  sidebarLayout(
    sidebarPanel(
      helpText("Select a university to view admissions data."),
      
      selectInput("var",
        label = "Select a university",
        choices = list("Brown", "Harvard", "Yale"),
        selected = "Brown"),
      
      dateRangeInput("dates",
        label = "Fall semester year range",
        start = 2005, end = 2015,
        min = 1999, max = 2016,
        format = "yyyy",
        startview = "year")
    ),
    mainPanel(
      textOutput("text1")
    )
  )
))