library(shiny)

# Define UI
shinyUI(pageWithSidebar(
  
  # Application title.
  headerPanel("Law of Large Numbers"),
  sidebarPanel(
    helpText("In a jar, there are two kinds of candy, red and blue.",
             "You can choose the total number of candy that you take",
             "out and the probability of red candy."),
    numericInput(inputId = "iter", 
                 label = strong("Total number of candy that you take out, n"), 
                 value = 10, 
                 min = 1, 
                 max = 1000),
    sliderInput("p", 
                label = strong("Probability of red candy, p"), 
                min = 0.01,
                max = 0.99, 
                value = 0.5)
  ),
  # Show a plot of the generated stochastic process
  mainPanel(
    plotOutput("sllnPlot")
  )
))