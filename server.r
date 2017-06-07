library(shiny)

# Define server logic required
shinyServer(function(input, output) {
  output$sllnPlot <- renderPlot({

    x <- rbinom(input$iter, size = 1, prob = input$p)
    plot(cumsum(x)/1:length(x),
         type="l",
         #lwd = 2,
         ylab = "Relative frequency",
         xlab = "Total number of candy, n",
         ylim = c(0,1))
    abline(h = input$p, lty = 3)
    mtext("p", adj = 1, side = 4, cex = 2, at = input$p, col = "blue")

    #number of red candy
    y <- input$iter * input$p
    output$times <- renderPrint({y})

  })
  
  
})