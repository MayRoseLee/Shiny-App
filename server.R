#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)



Celsius<- function(temperature) (temperature -32)/1.8

shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$temperature})
    output$prediction <- renderPrint({Celsius(input$temperature)})
  }
)