

weightLoss <- function(pounds, calorie)
{
  x = 0   #Calorie reduction counter
  days = 0   #Number of days counter
  totalCalories = pounds * 3500 #Number of calores needed to reduce desired pounds
  while (x < totalCalories) #Calculating the number of days required
      {
          x = x + calorie
          days = days + 1
      }
  

 days #Total number of days
 
}

shinyServer(
  function(input,input1, output, output1){
    output$inputValue1 <- renderPrint({input$pounds})
    output$inputValue2 <- renderPrint({input$calorie})
    output$days <- renderPrint({weightLoss(input$pounds,input$calorie)})
    
    
    
    
      
     
    
  }
)