# Carregar pacote
library(plotly)

# Dados
x  = seq(from = -3  , to = 3, by = 0.001) ;  y =  dnorm(x = x , mean = 0, sd = 1)
xa = seq(from = 1.35, to = 3, by = 0.001) ; ya =  dnorm(x = xa, mean = 0, sd = 1)

# Margens
margens = list(autoexpand = FALSE, r = 787, l = 787, t = 385, b = 385)

# Atributos dos eixos
ax = list(title = "",
          zerolinecolor = 'rgb(255, 255, 255)',
          zerolinewidth = 2,
          gridcolor = 'rgb(255, 255, 255)', 
          showticklabels = FALSE)
ay = list(title = "",
          zerolinecolor = 'black',
          zerolinewidth = 3,
          gridcolor = 'rgb(255, 255, 255)', 
          showticklabels = FALSE)

# Grafico
plot_ly() %>%
add_trace(x = xa,
          y = ya,
          type = "scatter",
          mode = "lines",
          fill = "tozeroy",
          fillcolor = "steelblue"
          ) %>%
add_trace(x = x ,
          y = y ,
          type = "scatter",
          mode = "lines",
          line = list(color = 'black', width = 3),
          hoverinfo = "text",
          hovertext = "Representação do p-valor"
          ) %>%
layout(plot_bgcolor = 'rgb(240, 240, 240)',
       title = "",
       xaxis = ax,
       yaxis = ay,
       margin = margens,
       showlegend = FALSE,
       hoverlabel = list(font = list(family = "Calibri", size = 20, color = 'white'))
       ) %>%
add_text(x = 1.67,
         y = (dnorm(x = 2) * 0.73),
         text = "&#945;",
         textfont = list(family = "sans serif", size = 30, color = toRGB("white")),
         textposition = "middle center",
         name = '',
         hoverinfo = "text",
         hoverlabel = list(bgcolor = "steelblue"),
         hovertext = "Regiao de rejeicao da hipotese nula (&#945;)"
         ) %>%
add_annotations(xref = "paper",
                yref = "paper",
                x = 0.8,
                y = 0.1,
                xanchor = 'left',
                yanchor = 'bottom',
                text = "Regiao de rejeicao da </br> </br> &nbsp; &nbsp; &nbsp; hipotese nula (&#945;)",
                font = list(family = 'Calibri', size = 20, color = 'steelblue'),
                showarrow = FALSE,
                align = "left"
                ) %>%
add_annotations(xref = "paper",
                yref = "paper",
                x = 0.62,
                y = 0.73,
                xanchor = 'left',
                yanchor = 'bottom',
                text = "p-valor maior que &#945; </br> </br> &nbsp; &nbsp; (nao rejeita H<sub>0</sub>)",
                font = list(family = 'Calibri', size = 20, color = '#912c2c'),
                showarrow = FALSE,
                align = "left"
                ) %>%
add_annotations(xref = "paper",
                yref = "paper",
                x =  0.42,
                y = -0.24,
                xanchor = 'left',
                yanchor = 'bottom',
                text = "p-valor menor que &#945; (rejeita H<sub>0</sub>)",
                font = list(family = 'Calibri', size = 20, color = '#912c2c'),
                showarrow = FALSE,
                align = "left"
                ) %>%
add_annotations(x  = 3.0  , # arrow x end
                y  = 0.3  , # arrow y end
                ax = 1.054, # arrow x start
                ay = 0.3  , # arrow y start
                xref  = "x",
                yref  = "y",
                axref = "x",
                ayref = "y",
                text = ""  ,
                showarrow  = TRUE,
                arrowhead  = 3,
                arrowsize  = 1,
                arrowwidth = 2,
                arrowcolor = "#912c2c"
                ) %>%
add_annotations(x  =  3.0  , # arrow x end
                y  = -0.054, # arrow y end
                ax =  1.96 , # arrow x start
                ay = -0.054, # arrow y start
                xref  = "x",
                yref  = "paper",
                axref = "x",
                ayref = "paper",
                text = ""  ,
                showarrow  = TRUE,
                arrowhead  = 3,
                arrowsize  = 1,
                arrowwidth = 2,
                arrowcolor = "#912c2c"
                ) %>%
add_segments(x = 1.1,
             y = 0.3,
             xend = 1.1,
             yend = 0.02,
             line = list(color = '#912c2c'),
             inherit = FALSE,
             showlegend = FALSE,
             hoverinfo = "none"
             ) %>%
add_annotations(x  =  2.0 , # arrow x end
                y  = -0.06, # arrow y end
                ax =  2.0 , # arrow x start
                ay =  0.05, # arrow y start
                xref  = "x",
                yref  = "paper",
                axref = "x",
                ayref = "paper",
                text = ""  ,
                showarrow  = TRUE,
                arrowhead  = 0,
                arrowsize  = 1,
                arrowwidth = 2,
                arrowcolor = "#912c2c"
                )
