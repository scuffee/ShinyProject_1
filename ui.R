library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Days needed to lose 10 pounds by reducing calories"),
  sidebarPanel(
    numericInput('calorie', 'Daily calorie reduction', 100, min = 100, max = 1000, step = 50),
    submitButton('Submit')
    
  ),
  mainPanel(
    h3('Results of prediction'),
    h4('You entered a  reduction of'),
    verbatimTextOutput("inputValue"),
    h4('calories daily.'),
    h4('Which resulted in the predicition of'),
    verbatimTextOutput("prediction"),
    h4('days required.')
  )
  
))