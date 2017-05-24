# ui.R

# Import shiny package with library() function
library(shiny)
library(ggplot2)

# Creates page that fits dimension of screen
shinyUI(fluidPage(
  # This is the title
  titlePanel("Ivy League College Admissions"),
  # This creates the sidebar
  sidebarLayout(
    sidebarPanel(
      helpText("Select a university to view admissions data."),
      
      selectInput("name",
        label = "Select a university",
        choices = list("Brown", "Harvard", "Yale"),
        selected = "Brown")
      
      
    ),
    mainPanel(
      h3(textOutput("name")),
      
      plotOutput("admissionsPlot")
    )
  )
))