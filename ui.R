library(shiny)

shinyUI(
# Use a fluid Bootstrap layout
fluidPage(    
  
  # Give the page a title
  titlePanel("Trial app"),
  
  # Generate a row with a sidebar
  sidebarLayout(      
    
    # Define the sidebar with one input
    sidebarPanel(width = 3,
      sliderInput("number", 
                  label = "Sample size",
                  step = 1,
                  min = 100,
                  max = 1000,
                  value = 250
                  ),
      actionButton("click",
                   "Click")
      ),

    
    
    # Create a spot for the barplot
    mainPanel(width = 9,
      plotOutput("histogram")  
    )
  ),
    
  )
)