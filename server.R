# 35000 calories = 10 pound

weightLoss <- function(pounds, calorie)
{
  x = 0   #Calorie reduction accumulator
  prediction = 0   #Number of days counter
  totalCalories = pounds * 3500 #Number of calores needed to reduce desired pounds
  while (x < totalCalories) #Calculating the number of days required
      {
          x = x + calorie
          prediction = prediction + 1
      }
  
 prediction #Total number of days
 
}

shinyServer(
  function(input,input1, output){
    output$inputValue1 <- renderPrint({input$pounds})
    output$inputValue2 <- renderPrint({input$calorie})
    output$prediction <- renderPrint({weightLoss(input$pounds,input$calorie)})
    
    
      
     
    
  }
)