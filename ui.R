# ui.R

# Import shiny package with library() function
library(shiny)
library(ggplot2)

# Creates page that fits dimension of screen
shinyUI(fluidPage(
  # This is the title
  titlePanel(h1("College Admissions Data Visualizer")),
  # This creates the sidebar
  sidebarLayout(
    sidebarPanel(
      helpText("Select a university to view admissions data."),
      
      selectInput("uni",
        label = "Select a university",
        choices = list("Brown", "Berkeley", "Yale", "All Universities"),
        selected = "Brown"),
      
      h4("Variables"),
      helpText("Compare two variables in a scatterplot"),
      
      wellPanel(
        selectInput('xvar', 'X-axis variable', vars, selected = vars[1]),
        selectInput('yvar', 'Y-axis variable', vars, selected = vars[2]))
      ),
      
    mainPanel(
      h2(textOutput("uni")),
      plotOutput("plot1")
    )
  )
))