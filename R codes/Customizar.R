suppressWarnings(suppressMessages(library(plotly)))

# ====== Features (Function set by user) ====== #
features = function(p, x_pos, y_pos){
           margens = list(autoexpand = FALSE, b = 200, t = 200, r = 500, l = 500)
           ax = list(title = "Eixo x", zerolinecolor = 'rgb(255, 255, 255)', zerolinewidth = 2, gridcolor = 'rgb(255, 255, 255)')
           ay = list(title = "Eixo y", zerolinecolor = 'rgb(255, 255, 255)', zerolinewidth = 2, gridcolor = 'rgb(255, 255, 255)')
           layout(p, plot_bgcolor = 'rgb(240, 240, 240)', xaxis = ax, yaxis = ay,margin = margens, showlegend = TRUE) %>% add_annotations(xref = "x", yref = "y", x = x_pos, y = y_pos, xanchor = 'left', yanchor = 'bottom', text = "<b>NOME 2</b>", font = list(family = 'Calibri', size = 20, color = '#009999'), showarrow = FALSE)
           }

# ====== Lines (Function set by user) ====== #
curva = function(p, linha, x_val, y_val, curve_color){
        ROTULOS = paste("<b>Valores</b>", paste("x values: ", x_val, sep = ""), paste("y values: ", y_val, sep = ""), sep = "\n")
        NOME = paste("Curva ", linha, sep = "")
        add_trace(p, x = x_val, y = y_val, hoverinfo = "text", hovertext = ROTULOS, type = 'scatter', mode = 'lines', name = NOME, line = list(color = curve_color), showlegend = TRUE)
        }

# Dados
x1 = c(0, 1, 2, 3, 4) ; y1 = c(1, 2, 6, 8, 9)
x2 = c(0, 1, 2, 3, 4) ; y2 = c(2, 4, 5, 3, 1)

# Grafico
p = plot_ly()
p = p %>%
curva(linha = 1, x_val = x1, y_val = y1, curve_color = 'steelblue') %>%   # Function set by user
curva(linha = 2, x_val = x2, y_val = y2, curve_color = 'crimson') %>%     # Function set by user
features(x_pos = 1, y_pos = 8)                                            # Function set by user
p
