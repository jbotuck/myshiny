library(shiny)
source("helpers.R")
# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Do you get enough hours of sleep?"),
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      selectInput("age", "How old are you?",choices = getAges()),
      numericInput(inputId = "hours",label = "How many hours of sleep do you get per day?",min = 0,max = 24,value = 0)
    ),
    
    mainPanel(
      textOutput("result")
    )
  )
 
))