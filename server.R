library(shiny)


shinyServer(
# Define a server for the Shiny app
function(input, output) {
  
  # Fill in the spot we created for a plot
  output$histogram <- renderPlot({
    input$click
    # Render a barplot
    isolate({
      vector <- runif(input$number, 1, 200)
      hist(vector)
    })
  })
}
)


