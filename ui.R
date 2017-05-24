# ui.R

# Import shiny package with library() function
library(shiny)
library(ggplot2)

# Creates page that fits dimension of screen
shinyUI(fluidPage(
  # This is the title
  titlePanel("College Admissions Data"),
  # This creates the sidebar
  sidebarLayout(
    sidebarPanel(
      helpText("Select a university to view admissions data."),
      
      selectInput("uni",
        label = "Select a university",
        choices = list("Brown", "Harvard", "UC Berkeley", "Yale"),
        selected = "Brown"),
      
      h4("Variables"),
      helpText("Compare two variables in a scatterplot"),
      
      fluidRow(
        column(5,
          selectInput('x', 'X', names(brown.data))
        ),
        column(5,
          selectInput('y', 'Y', names(brown.data), names(brown.data)[[2]]))
      )
    ),
    mainPanel(
      h3(textOutput("uni"))
      #plotOutput("admissionsPlot")
    )
  )
))