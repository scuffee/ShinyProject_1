# 35000 calories = 10 pound

weightLoss <- function(calorie)
{
  x = 0   #calorie reduction accumulator
  prediction = 0   # number of days counter
  while (x < 35000)
      {
          x = x + calorie
          prediction = prediction + 1
      }
  
  prediction #Total number of days
 
}

shinyServer(
  function(input, output){
    output$inputValue <- renderPrint({input$calorie})
    output$prediction <- renderPrint({weightLoss(input$calorie)})
    
      
     
    
  }
)