library(plotly)

# Dados
dados1 = data.frame(  x1 = c(0, 1, 2, 3, 4), y1 = c(1, 2, 6, 8, 9)  )
dados2 = data.frame(  x2 = c(5, 8, 9)      , y2 = c(2, 6, 8)        )
dados3 = data.frame(  x3 = c(2, 4, 6)      , y3 = c(4, 2, 0)        )

# Grafico
p = ggplot() +
geom_point(data = dados1, mapping = aes(x = x1, y = y1), colour = '#5EA191'   , size = 5) +
 geom_line(data = dados2, mapping = aes(x = x2, y = y2), colour = 'steelblue' , linewidth = 3) +
 geom_line(data = dados3, mapping = aes(x = x3, y = y3), colour = '#d8ae2d'   , linewidth = 4) +
geom_point(data = dados3, mapping = aes(x = x3, y = y3), colour = '#000000'   , size = 6) +
labs(title = "Pacote ggplot2", x = "Eixo x", y = "Eixo y") +
theme(plot.title = element_text(hjust = 0.5))
ggplotly(p)