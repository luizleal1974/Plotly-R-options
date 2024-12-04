library(plotly)

# Dados
Planta = c("A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "B", "B", "B", "B", "B", "B", "B", "B", "B", "B", "A", "A", "A", "A", "A", "A", "A", "A", "B", "B", "B", "B", "B", "B", "B", "B", "B", "B", "A", "A", "A", "A", "A", "A", "B", "B", "B", "B", "B", "B", "A", "A", "A", "A", "A", "A", "A", "A", "B", "B", "B", "B", "B", "B", "B", "B", "B", "B", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "B", "B", "B", "B", "B", "B", "B", "B", "B", "B")
Na = c(351, 196, 368, 500, 473, 559, 939, 785, 474, 469, 436, 365, 674, 771, 578, 694, 406, 956, 992, 1372, 591, 529, 533, 511, 438, 491, 469, 576, 377, 518, 621, 394, 998, 705, 482, 968, 1565, 1350, 892, 724, 819, 1099, 915, 894, 419, 815, 245, 413, 697, 633, 1194, 1011, 747, 722, 882, 702, 670, 589, 512, 554, 1813, 1400, 565, 493, 921, 665, 1092, 923, 627, 695, 705, 595, 608, 769, 1132, 1162, 1091, 811, 874, 739, 1479, 1378, 580, 380, 585, 607, 1039, 626)
dados = data.frame(Planta, Na)

# Atributos dos eixos
ax = list(title = 'Na',
          zerolinecolor = 'rgb(255, 255, 255)',
          zerolinewidth = 2,
          gridcolor = 'rgb(255, 255, 255)'
          )
ay = list(title = 'Densidade',
          zerolinecolor = 'rgb(0, 0, 0)',
          zerolinewidth = 2,
          gridcolor = 'rgb(255, 255, 255)'
          )

# Densidade kernel: 1 variavel
fit = density(x = dados$Na, bw = "nrd0", kernel = "gaussian") # Silverman’s 'rule of thumb'
plot_ly(x = fit$x,
        y = fit$y,
        type = "scatter",
        mode = "lines",
        line = list(color = "#588ebb", width = 4)
        ) %>%
layout(plot_bgcolor = 'rgb(240, 240, 240)',
       title = "Densidade kernel",
       xaxis = ax,
       yaxis = ay
       )

# Densidade kernel: por variavel de segmentacao
value = dados$Na
categ = dados$Planta
grupo = unique(categ)
cores = c("#588ebb", "#ff084a") # Dois grupos
fit = list()
for(i in 1:length(grupo)) fit[[i]] = density(x = value[which(categ == grupo[i])], bw = "nrd0", kernel = "gaussian") # Silverman’s 'rule of thumb'
p <- plot_ly()
for(i in 1:length(grupo)){
 p <- add_trace(p,
                x = fit[[i]]$x,
                y = fit[[i]]$y,
                name = grupo[i],
                type = 'scatter',
                mode = 'lines',
                line = list(color = cores[i], width = 4)
                )
}
p %>%
layout(plot_bgcolor = 'rgb(240, 240, 240)',
       title = list(text = "Densidade kernel"),
       legend = list(title = list(text = "Planta")),
       xaxis = ax,
       yaxis = ay
       )
