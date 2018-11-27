#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# The purpose of this App is to convert temperatures in Fahrenheit degrees to 
# Celsius degrees.  Enter the Fahrenheit temperature in the box, hit the submit  
# button to get the temperature in Celsius.
#

library(shiny)

shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Converting Fahrenheit to Celsius"),
    
    sidebarPanel(
      numericInput('temperature', 'degrees F', 90, min = 30, max = 200, step = 1
      ),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Results of conversion'),
      h4('Temperature in degrees Fahrenheit'),
      verbatimTextOutput("inputValue"),
      h4('Corresponds to degrees Celsius '),
      verbatimTextOutput("prediction")
    )
  )
)
