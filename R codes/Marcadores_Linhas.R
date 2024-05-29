library(plotly)

# Dados
x1 = c(0, 1, 2, 3, 4) ; y1 = c(1, 2, 6, 8, 9)
x2 = c(5, 8, 9)       ; y2 = c(2, 6, 8)
x3 = c(2, 4, 6)       ; y3 = c(4, 2, 0)

# Atributos dos eixos
ax = list(title = "Eixo x", zerolinecolor = 'rgb(255, 255, 255)', zerolinewidth = 2, gridcolor = 'rgb(255, 255, 255)')
ay = list(title = "Eixo y", zerolinecolor = 'rgb(255, 255, 255)', zerolinewidth = 2, gridcolor = 'rgb(255, 255, 255)')

# Margens
margens = list(autoexpand = FALSE, b = 200, t = 200, r = 500, l = 500)

# Grafico
titulo_grafico = "</br> </br> </br> </br> </br> Grafico"
plot_ly() %>%
add_trace(x = x1, y = y1, type = 'scatter', mode = 'markers'        , marker = list(color = '#5EA191'   ,  size = 19 )                                              ) %>%
add_trace(x = x2, y = y2, type = 'scatter', mode = 'lines'          ,   line = list(color = 'steelblue' , width = 10 )                                              ) %>%
add_trace(x = x3, y = y3, type = 'scatter', mode = 'lines+markers'  ,   line = list(color = '#d8ae2d'   , width = 8  ), marker = list(color = '#000000', size = 14) ) %>%
layout(plot_bgcolor = 'rgb(240, 240, 240)',
       title = titulo_grafico,
       xaxis = ax,
       yaxis = ay,
       margin = margens,
       showlegend = FALSE
       )
