--- 
title       : Wage Explorer
subtitle    : Developing Data Products Course Project
author      : Tahmoores Mazhari
job         : Coursera Student
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
--- 

## Introduction

This presentation is to pitch the project of "Developing Data Products" course. The last course in Data Science Specialization offered through coursera.com. In this project we have created a Shiny application called "Wage Explorer" using the Shiny framework and have it hosted online. This presentation is to provide a brief information on this application and the data that it uses.

The Wage Explorer Shiny application can be accessed at:  
[https://tmazhari.shinyapps.io/Shiny-App/](https://tmazhari.shinyapps.io/Shiny-App/)

Source code for this application is available on Github at:  
[https://github.com/tmazhari/Developing-Data-Products_Course-Project](https://github.com/tmazhari/Developing-Data-Products_Course-Project)

--- .class #id 

## Wage Explorer

This application displays an interactive plot. In this plot user can investigate the distribution of wage amount per an optional variable (x-axis) and then color the plot conditional on another variable (color). 
User may change the x-axis variable by selecting an option from "X-axis Variable" dropdown and change the color variable by picking an option from "Color Legend variable" dropdown. By changing these two variables the diagram updates and new results get displayed.

Note that if x-axis is set as "Age", then user has an option to add regression smoothers to the plot. When this option is checked, the application fits a linear model for every class in color variable. So it can be better seen if there is a different relationship for different x-axis groups.

---

## Wage Dataset

The application uses Wage dataset available in ISLR package in R. This dataset includes Wage and 11 other variables for a group of 3000 workers in the Mid-Atlantic region. This data was manually assembled by Steve Miller from the March 2011 Supplement to Current Population Survey data. Here is the structure of this dataset.


```
## 'data.frame':	3000 obs. of  12 variables:
##  $ year      : int  2006 2004 2003 2003 2005 2008 2009 2008 2006 2004 ...
##  $ age       : int  18 24 45 43 50 54 44 30 41 52 ...
##  $ sex       : Factor w/ 2 levels "1. Male","2. Female": 1 1 1 1 1 1 1 1 1 1 ...
##  $ maritl    : Factor w/ 5 levels "1. Never Married",..: 1 1 2 2 4 2 2 1 1 2 ...
##  $ race      : Factor w/ 4 levels "1. White","2. Black",..: 1 1 1 3 1 1 4 3 2 1 ...
##  $ education : Factor w/ 5 levels "1. < HS Grad",..: 1 4 3 4 2 4 3 3 3 2 ...
##  $ region    : Factor w/ 9 levels "1. New England",..: 2 2 2 2 2 2 2 2 2 2 ...
##  $ jobclass  : Factor w/ 2 levels "1. Industrial",..: 1 2 1 2 2 2 1 2 2 2 ...
##  $ health    : Factor w/ 2 levels "1. <=Good","2. >=Very Good": 1 2 1 2 1 2 2 1 2 2 ...
##  $ health_ins: Factor w/ 2 levels "1. Yes","2. No": 2 2 1 1 1 1 1 1 1 1 ...
##  $ logwage   : num  4.32 4.26 4.88 5.04 4.32 ...
##  $ wage      : num  75 70.5 131 154.7 75 ...
```

---

## Pairs Plot

This plot shows empirical correlation between wage and some other variables from dataset. 




```r
featurePlot(x=Wage[,c("year","age","education","jobclass")], y=Wage$wage, plot="pairs")
```

![plot of chunk unnamed-chunk-3](assets/fig/unnamed-chunk-3-1.png)
