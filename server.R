library(shiny)
source("helpers.R")


shinyServer(function(input, output) {
  output$result <- renderText(ifelse(isEnough(input$age, input$hours),
              "Yes you do sleep enough!", "No you do not get enough sleep!"))
})
