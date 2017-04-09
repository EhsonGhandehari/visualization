
library(shiny)
library(RCurl)
library(leaflet)
library(RJSONIO)
library(plyr)
source('url.R')
source('geoCode.R')

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    
        dataInput<-eventReactive(input$Find, {
                cbind(geoCode(input$address))
        }, ignoreNULL = FALSE)
        
        output$mymap <- renderLeaflet({
                leaflet() %>%
                addTiles() %>% 
                addMarkers(data=dataInput())
        })

        })
        

          

          