library(plotly)

# Dados
dfr = data.frame(x = c(1, 5, 7, 9), y = c(3, 2, 8, 7))
dst = data.frame(x = c(1, 5, 7, 9), y = c(-1, 0, 1, 0.5))

# Atributos dos eixos
ax = list(title = "Eixo x" ,
          showline = TRUE, 
          linewidth = 1, 
          linecolor = 'black', 
          mirror = TRUE
          )
ay = list(title = "Eixo y" ,
          showline = TRUE, 
          linewidth = 1, 
          linecolor = 'black', 
          mirror = TRUE
          )

# Border around plot
p1 = plot_ly(dfr, x = ~x, y = ~y, type = 'scatter', mode = 'lines')
p2 = plot_ly(dfr, x = ~x, y = ~y, type = 'scatter', mode = 'lines') %>% layout(xaxis = ax, yaxis = ay)
p3 = plot_ly(dst, x = ~x, y = ~y, type = 'scatter', mode = 'lines')
p4 = plot_ly(dst, x = ~x, y = ~y, type = 'scatter', mode = 'lines') %>% layout(xaxis = ax, yaxis = ay)
subplot(p1, p2, p3, p4, nrows = 2) %>% layout(showlegend = FALSE)

