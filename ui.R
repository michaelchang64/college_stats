# ui.R

# Imported shiny packages. ggplot2 is the data visualization package used in app.
library(shiny)
library(ggplot2)

# Creates page that fits dimension of screen
shinyUI(fluidPage(
  
  # This is the title
  titlePanel(h1("College Admissions Data Visualizer")),
  
  # This creates the sidebar
  sidebarLayout(
    sidebarPanel(
      
      # Informs user what following dropdown menu is for
      helpText("Select a university to view admissions data."),
      
      # uni: selectInput is dropdown menu with list of universities under choices argument.
      # Default choice is Brown.
      selectInput("uni",
        label = "Select a university",
        choices = list("Brown", "Berkeley", "Yale"),
        selected = "Brown"),
      
      # Header for subsection wellPanel housing x- and y-variables within sidePanel
      h4("Variables"),
      
      # Informs user what following two dropdown menus are for
      helpText("Compare two variables in a scatterplot"),
      
      # xvar: dropdown menu of columns to be selected for x variable from college.data
      # dataframe housed in global.R.
      # yvar: dropdown menu of columns to be selected for y variable from college.data
      # dataframe housed in global.R.
      wellPanel(
        selectInput("xvar", "X-axis variable", vars, selected = vars[1]),
        selectInput("yvar", "Y-axis variable", vars, selected = vars[2]))
      ),
    
    # Location in central region of webpage housing reactive texts and scatterplot  
    mainPanel(
      h2(textOutput("uni")),
      plotOutput("plot1"),
      dataTableOutput("dt")
    )
  )
))