# Carregar pacote
library(plotly)

# Dados
full = seq(from = -4, to = 4, by = 0.1)
ci = seq(from = -2, to = 2, by = 0.1)
x  = c(-4, full, 4) ; y  =      dnorm(x = x , mean = 0, sd = 1)
xa = c(-2,  ci , 2) ; ya = c(0, dnorm(x = ci, mean = 0, sd = 1), 0)

# Atributos dos eixos
ax = list(title = "", tickfont = list(family = "Calibri", size = 30, color = "black"), zerolinecolor = 'rgb(255, 255, 255)', zerolinewidth = 2, gridcolor = 'rgb(255, 255, 255)')
ay = list(title = "", tickfont = list(family = "Calibri", size = 30, color = "black"), zerolinecolor = 'rgb(255, 255, 255)', zerolinewidth = 2, gridcolor = 'rgb(255, 255, 255)')

# Margens
margens = list(autoexpand = FALSE, r = 787, l = 787, t = 385, b = 385)

# Grafico
plot_ly() %>%
add_trace(x = x,
          y = y,
          type = "scatter",
          name = 'Normal padrao',
          line = list(color = 'steelblue', width = 3),
          mode = 'lines',
          hoverlabel = list(font = list(family = "Calibri", size = 36, color = 'white'))
          ) %>%
add_polygons(x = xa,
             y = ya,
             color = I("steelblue"),
             name = "95% confidence interval",
             line = list(color = 'steelblue', width = 3),
             opacity = 0.5,
             hoverinfo = "text",
             hovertext  = "95% confidence interval",
             hoverlabel = list(font = list(family = "Calibri", size = 36, color = 'white'))
             )%>%
layout(plot_bgcolor = 'rgb(240, 240, 240)',
       title = "",
       legend = list(font = list(family = "Calibri", size = 30, color = 'black')),
       xaxis = ax,
       yaxis = ay,
       margin = margens,
       showlegend = TRUE)
