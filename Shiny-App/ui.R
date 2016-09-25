# Wage Explorer 
# Shiny web application UI definition 

library(shiny)
library(markdown)

shinyUI(navbarPage("Wage Explorer",
          # Diagram Panel
          tabPanel("Diagram",
            sidebarLayout(
              sidebarPanel(
                helpText("Explore wage by two other variables. Change the x-axis variable and color",
                         "by selecting a new option from following dropdowns."),
                selectInput("xvar",
                            label = strong("X-axis Variable"), 
                            choices = list("year","age","maritl","race","education","jobclass"), 
                            selected = "age"),
                       
                selectInput("colorvar",
                            label = strong("Color Legend variable"), 
                            choices = list("year","age","maritl","race","education", "jobclass"), 
                            selected = "jobclass"),
                       
                  # Visible only if x-axis is Age
                conditionalPanel(condition = "input.xvar == 'age'",
                                 checkboxInput(inputId = "add_regression",
                                 label = strong("Add Regression Smoothers"),
                                 value = FALSE))
              ),
              mainPanel(
                # Diagram
                plotOutput("scatterPlot")
             )
           )
         ),
         # About Panel
         tabPanel("About",
           mainPanel(
             # About application
             includeMarkdown("about.md")
           )
         )
    )
)