#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram

shinyUI(pageWithSidebar(
  headerPanel("Weight Loss Management Plan"),
  sidebarPanel(
    numericInput('pounds', 'Number of pounds you would like to lose up to a maximum of 50', 10, min = 5, max = 50, step= 5),
    submitButton('Submit'),
    numericInput('calorie', 'Daily calorie reduction up to a maximum of 800', 100, min = 100, max = 800, step = 50),
    submitButton('Submit')
    
  ),
  mainPanel(
    h3('Results of the plan'),
    h4('The number of pounds you want to lose is:'),
    verbatimTextOutput("inputValue1"),
    h4('The planned daily calorie reduction is:'),
    verbatimTextOutput("inputValue2"),
    h4('Which requires:'),
    verbatimTextOutput("days"),
    h4('days.')
  )
  
))
