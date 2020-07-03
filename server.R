library(shiny)
library(dplyr)
library(DT)

# Define server logic required to draw a histogram
server <- function(input, output, session) {
  
    # load CSV
    BreweryData <- read.csv("breweries.csv")
    BreweryData <- subset(BreweryData, select = -X)
  
    # render data table  
    output$dataTable <- renderDT(
        BreweryData,
        options = list(autoWidth = TRUE),
        filter = "top" 
    )
}
