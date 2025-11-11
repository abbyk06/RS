server <- function(input, output) {
   output$selected_value <- renderText({input$slider})
  output$selected_option <- renderText({input$dropdown})
  output$selected_date <- renderText({input$date})
   output$txtout <- renderText({
     paste(input$txt1, input$txt2,
           input$txt3, input$txt4, input$txt5,
           input$txt6, input$txt7, input$txt8,
           sep = " " )
   })
    output$plot <- renderPlot({
    ggplot(mtcars, aes(x = wt, y = mpg)) + geom_point()
  })
 }


# to Run App 
shinyApp(ui = ui, server = server)