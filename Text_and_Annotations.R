library(plotly)

# Dados
x1 = c(0, 1, 2, 3, 4) ; y1 = c(1, 2, 6, 8, 9)

# Margens
margens = list(autoexpand = FALSE, b = 200, t = 200, r = 500, l = 500)

# Atributos dos eixos
ax = list(title = "Eixo x", zerolinecolor = 'rgb(255, 255, 255)', zerolinewidth = 2, gridcolor = 'rgb(255, 255, 255)')
ay = list(title = "Eixo y", zerolinecolor = 'rgb(255, 255, 255)', zerolinewidth = 2, gridcolor = 'rgb(255, 255, 255)')

# Grafico
plot_ly() %>%
add_trace(x = x1, y = y1, type = 'scatter', mode = 'markers') %>%
layout(plot_bgcolor = 'rgb(240, 240, 240)', xaxis = ax, yaxis = ay,margin = margens, showlegend = FALSE) %>%
add_annotations(xref = "paper",
                yref = "paper",
                x = 1,
                y = 0.2,
                xanchor = 'left',
                yanchor = 'bottom',
                text = "<b>NOME 1 \nANDRE LUIZ LEAL</b>",
                font = list(family = 'Calibri', size = 20, color = '#009999'),
                showarrow = FALSE,
                align = "left"
                ) %>%
add_annotations(xref = "x",
                yref = "y",
                x = 2,
                y = 6,
                xanchor = 'left',
                yanchor = 'bottom',
                text = "<b>NOME 2 \nLUIZ HENRIQUE LEAL</b>",
                font = list(family = 'Calibri', size = 20, color = '#009999'),
                showarrow = FALSE,
                align = "center"
                )
