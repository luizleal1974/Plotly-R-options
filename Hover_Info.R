library(plotly)

# Dados
x1 = c(0, 1, 2, 4, 5, NA, NA, 7,  9, 12, 13, 14, NA, 16, 20, 22, 28, 30, 31, 32)
y1 = c(0, 3, 4, 7, 8, NA, NA, 9, 15,  2,  8, 15, NA, 17, 19, 18, 16, 25, 34, 33)

# Atributos dos eixos
ax = list(title = "Eixo x", zerolinecolor = 'rgb(255, 255, 255)', zerolinewidth = 2, gridcolor = 'rgb(255, 255, 255)')
ay = list(title = "Eixo y", zerolinecolor = 'rgb(255, 255, 255)', zerolinewidth = 2, gridcolor = 'rgb(255, 255, 255)')

# Margens
margens = list(autoexpand = FALSE, r = 50)

# Gráfico
p1 = plot_ly() %>% add_trace(x = x1, y = y1, hoverinfo = "x+y+text+name", hovertext = "NOME", type = 'scatter', mode = 'lines+markers', name = 'nome') %>% layout(plot_bgcolor = 'rgb(240, 240, 240)', xaxis = ax, yaxis = ay, hoverlabel = list(font = list(family = "Calibri", size = 36, color = 'white')))
p2 = plot_ly() %>% add_trace(x = x1, y = y1, hoverinfo = "x+y+text"     , hovertext = "NOME", type = 'scatter', mode = 'lines+markers', name = 'nome') %>% layout(plot_bgcolor = 'rgb(240, 240, 240)', xaxis = ax, yaxis = ay, hoverlabel = list(font = list(family = "Calibri", size = 36, color = 'white')))
p3 = plot_ly() %>% add_trace(x = x1, y = y1, hoverinfo = "x+y+"         , hovertext = "NOME", type = 'scatter', mode = 'lines+markers', name = 'nome') %>% layout(plot_bgcolor = 'rgb(240, 240, 240)', xaxis = ax, yaxis = ay, hoverlabel = list(font = list(family = "Calibri", size = 36, color = 'white')))
p4 = plot_ly() %>% add_trace(x = x1, y = y1, hoverinfo = "x"            , hovertext = "NOME", type = 'scatter', mode = 'lines+markers', name = 'nome') %>% layout(plot_bgcolor = 'rgb(240, 240, 240)', xaxis = ax, yaxis = ay, hoverlabel = list(font = list(family = "Calibri", size = 36, color = 'white')))
p5 = plot_ly() %>% add_trace(x = x1, y = y1, hoverinfo = "y"            , hovertext = "NOME", type = 'scatter', mode = 'lines+markers', name = 'nome') %>% layout(plot_bgcolor = 'rgb(240, 240, 240)', xaxis = ax, yaxis = ay, hoverlabel = list(font = list(family = "Calibri", size = 36, color = 'white')))
p6 = plot_ly() %>% add_trace(x = x1, y = y1, hoverinfo = "none"         , hovertext = "NOME", type = 'scatter', mode = 'lines+markers', name = 'nome') %>% layout(plot_bgcolor = 'rgb(240, 240, 240)', xaxis = ax, yaxis = ay, hoverlabel = list(font = list(family = "Calibri", size = 36, color = 'white')))
subplot(p1, p2, p3, p4, p5, p6, nrows = 2) %>% layout(margin = margens, showlegend = FALSE)
