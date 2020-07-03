library(dplyr)
library(shiny)
library(tidyr)

# Import Data
BreweryData <- read.csv("breweries.csv")


# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("List of US Brewpubs"),

    fluidRow(column(3, div(dataTableOutput("dataTable"))))))


    

