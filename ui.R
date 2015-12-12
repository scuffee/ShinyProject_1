library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Weight loss management plan"),
  sidebarPanel(
    numericInput('pounds', 'Number of pounds you would like to lose up to a maximum of 50', 10, min = 5, max = 50, step= 5),
    submitButton('Submit'),
    numericInput('calorie', 'Daily calorie reduction up to a maximum of 800', 100, min = 100, max = 800, step = 50),
    submitButton('Submit')
    
  ),
  mainPanel(
    h3('Results of th plan'),
    h4('The number of pounds you want to lose is:'),
    verbatimTextOutput("inputValue1"),
    h4('The planned daily calorie reduction is:'),
    verbatimTextOutput("inputValue2"),
    h4('Which requires:'),
    verbatimTextOutput("days"),
    h4('days.')
  )
  
))