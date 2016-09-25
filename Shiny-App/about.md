## Wage Explorer

This Shiny application investigates wage by varibale on x-axis and colors the dots conditional on color variabale. This app uses Wage dataset available in ISLR package in R. This app is the project for "Developing Data Products" course offered through coursera.com.

You may change the x-axis variable by selecting an option from "X-axis Variable" dropdown and change the color variable by picking an option from "Color Legend variable" dropdown. By changing these two variables the diagram updates and new results get displayed.

Note that if x-axis is set as "Age", then user has an option to add regression smoothers to the plot. When this option is checked, the application fits a linear model for every class in color variable. So it can be better seen if there is a different relationship for different x-axis groups.
