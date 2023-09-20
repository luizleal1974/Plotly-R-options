
# Function
  f = function(x, tab = TRUE){
  result = data.frame(prop.table(table(x)))
  if(tab == TRUE){return(result)}
  library(plotly) ; p = plot_ly(x = x, type = "histogram", marker = list(color = "#69b3a2", line = list(color = "black", width = 2))) # THIS LINE MUST BE THE LAST.
  }

# Packages
  library(shiny)
  library(plotly)

# ui
  ui <- fluidPage(    plotlyOutput(outputId = "PLOT_2_1"), dataTableOutput(outputId = "TAB_2_1")    )

# server
  server <- function(input, output) {
            values = c(0, 1, 2, 3, 3, 4, 4, 5, 5, 5, 5, 6, 6, 7, 8, 9)
            output$PLOT_2_1 <- renderPlotly({   f(x = values, tab = FALSE)  }) # PLOT WILL BE SHOWN IN SHINY APP.
            output$TAB_2_1 <- renderDataTable({ f(x = values, tab = TRUE)   }) # PLOT WILL NOT BE SHOWN IN SHINY APP.
            }

# Run app
  shinyApp(ui, server)

