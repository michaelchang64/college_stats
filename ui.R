# ui.R

# Import shiny package with library() function
library(shiny)
library(ggvis)

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
        choices = list("Brown", "UC Berkeley", "Yale"),
        selected = "Brown"),
      
      h4("Variables"),
      helpText("Compare two variables in a scatterplot"),
      
      fluidRow(
        column(6,
          selectInput('xvar', 'X', names(brown.data))
        ),
        column(6,
          selectInput('yvar', 'Y', names(brown.data), names(brown.data)[[2]]))
      )
    ),
    mainPanel(
      h3(textOutput("uni")),
      ggvisOutput("plot1")
    )
  )
))