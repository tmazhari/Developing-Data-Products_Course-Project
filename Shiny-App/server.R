# Wage Explorer 
# Shiny web application Server logic

library(shiny)
library(ISLR)
library(ggplot2)

shinyServer(function(input, output) {
  
  # Get the column which user has picked as x-axis variable  
  xData <- reactive({
    Wage[, input$xvar]
  })
  
  # Get the column which user has picked as color variable
  colorData <- reactive({
    Wage[, input$colorvar]
  }) 
  
  output$scatterPlot <- renderPlot({
    # Draw the scatterplot with the specified x-axis variable and color
    plot <- qplot(xData(), wage, color=colorData(), data=Wage, 
                  geom = "jitter", alpha = I(2 / 5),
                  size=I(3),
                  xlab=input$xvar)

    plot <- plot + labs(list(title = "Wage per X-axis by color", x = input$xvar, color = input$colorvar))
    
    # If add regression checkbox is checked, add regression smoothers to plot
    if (input$add_regression) {
      plot <- plot + geom_smooth(method="lm", formula = y ~ x)
    }
    
    plot
  })
})
