---
title       : "Simple regression"
subtitle    : "Simple regression Shiny application"
author      : geoscientist
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [bootstrap]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Shiny app functionality
  
  
1. Goal - creating simple interactive web application
  for exploratory scatterplots and linear models
2. Prototype (version 0.1) based on *mtcars* dataset
3. Scatterplots for any two variables in dataset
4. Provide linear regression formula

--- .class #id 

## User interface
  
  
User inerface include some elements:  
1. Title  
2. Interactive inputs (two selectors for variables in scatterplot)  
3. Text formula for selected regression model  
4. Scatterplot with regression line for selected features.  

--- .class #id 


## Server manipulations
  
  
1. Build reactive linear regression model for selected features
2. Render linear model formula
3. Render scatterplot with regression line

--- .class #id 

## Development Plans
  
  
1. Application for Exploratory Data Analysis  
2. Different datasets / import dataframes from CSV  
3. Train machine learning models  
4. Interactive Prediction  

https://geoscientist.shinyapps.io/firstapp    
