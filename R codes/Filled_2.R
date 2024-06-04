# Carregar pacote
library(plotly)

# Dados
x  = seq(from = -4, to = 4, by = 0.1) ; y  = dnorm(x = x , mean = 0, sd = 1)
xa = seq(from = -2, to = 2, by = 0.1) ; ya = dnorm(x = xa, mean = 0, sd = 1)

# Atributos dos eixos
ax = list(title = "", tickfont = list(family = "Calibri", size = 30, color = "black"), zerolinecolor = 'rgb(255, 255, 255)', zerolinewidth = 2, gridcolor = 'rgb(255, 255, 255)')
ay = list(title = "", tickfont = list(family = "Calibri", size = 30, color = "black"), zerolinecolor = 'rgb(255, 255, 255)', zerolinewidth = 2, gridcolor = 'rgb(255, 255, 255)')

# Margens
margens = list(autoexpand = FALSE, r = 520, l = 520, t = 250, b = 250)

# Grafico
plot_ly() %>%
add_trace(x = x ,
          y = y ,
          type = 'scatter',
          mode = 'lines',
          name = 'Normal padrao',
          line = list(color = 'steelblue', width = 3),
          hoverlabel = list(font = list(family = "Calibri", size = 36, color = 'white'))
          ) %>%
add_trace(x = xa,
          y = ya,
          type = "scatter",
          mode = "lines",
          name = "95% confidence interval",
          line = list(color = 'steelblue', width = 3),
          fill = "tozeroy",
          fillcolor = "#c7d9e8",
          hoverinfo = "text",
          hovertext  = "95% confidence interval",
          hoverlabel = list(font = list(family = "Calibri", size = 36, color = 'white'))
          ) %>%
layout(plot_bgcolor = 'rgb(240, 240, 240)',
       title = "",
       legend = list(font = list(family = "Calibri", size = 30, color = 'black')),
       xaxis = ax,
       yaxis = ay,
       margin = margens,
       showlegend = TRUE)
