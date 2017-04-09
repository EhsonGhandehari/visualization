library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Name the location:"),
 
    textInput("address","Location:","White House, Washington DC"),
    mainPanel(
            actionButton("Find", "Find it!"),
            br(),br(),
            leafletOutput("mymap")
    )
))
