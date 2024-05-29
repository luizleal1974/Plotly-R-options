# Carregar pacote
library(plotly)

# Dados
x  = seq(from = -4, to = 4, by = 0.1) ; y  = dnorm(x = x , mean = 0, sd = 1)
xa = seq(from = -2, to = 2, by = 0.1) ; ya = dnorm(x = xa, mean = 0, sd = 1)

# Atributos dos eixos
ax = list(title = "Eixo x", zerolinecolor = 'rgb(255, 255, 255)', zerolinewidth = 2, gridcolor = 'rgb(255, 255, 255)')
ay = list(title = "Eixo y", zerolinecolor = 'rgb(255, 255, 255)', zerolinewidth = 2, gridcolor = 'rgb(255, 255, 255)')

# Margens
margens = list(autoexpand = FALSE, b = 200, t = 200, r = 500, l = 500)

# Rotulos
distr_norm = paste("<b>Distribuicao normal</b>"               ,
                   paste("Valor x: " , round(x, 2), sep = "") ,
                   paste("Valor y: " , round(y, 2), sep = "") ,
                   sep = "\n"
                   )

# Grafico
plot_ly() %>%
add_trace(x = xa,
          y = ya,
          type = "scatter",
          mode = "lines",
          fill = "tozeroy",
          fillcolor = "#b5cde1"
          ) %>%
add_trace(x = x ,
          y = y ,
          type = 'scatter',
          mode = 'lines',
          line = list(color = 'steelblue', width = 3),
          hoverinfo  = "text",
          hovertext  = distr_norm,
          hoverlabel = list(bgcolor = "ba0048", font = list(family = "Calibri", size = 26, color = 'white'))
          ) %>%
add_text(x = 0.0,
         y = 0.2,
         text = "1 - &#945;",
         textfont = list(family = "sans serif", size = 40, color = toRGB("#ff0000")),
         textposition = "middle center",
         name = '',
         hoverinfo  = "text",
         hovertext  = "Intervalo de confianca (1 - &#945;)", 
         hoverlabel = list(bgcolor = "#20b2aa", font = list(family = "Calibri", size = 36, color = 'white'))
         ) %>%
layout(plot_bgcolor = 'rgb(240, 240, 240)', title = "", xaxis = ax, yaxis = ay, margin = margens, showlegend = FALSE)
