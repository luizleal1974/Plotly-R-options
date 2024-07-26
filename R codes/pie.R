library(plotly)

# Dados
dados = data.frame(Id = 1:17, Amostra = c(rep('Ferro', 4), rep('Chumbo', 5), rep('Cobalto', 8)))

# Tabela
tabela = as.data.frame(table(dados$Amostra))
tabela$rotulo = paste(tabela$Var1, "\n", round(prop.table(tabela$Freq)*100, digits = 2), "%", sep = '')
tabela$hover_texto = paste('Quantidade: ', tabela$Freq, sep = '')

# Definir cores
cores = c("#cf3476", "#aea1ff", "#51CC51")

# Grafico
p1 = plot_ly(data = tabela,
             labels = ~Var1,
             values = ~Freq,
             type = 'pie',
             textposition = 'inside',
             textinfo = 'text',
             insidetextfont = list(color = '#FFFFFF'),
             textfont = list(family = "Calibri", size = 24),
             text = ~rotulo,
             hoverinfo = 'text',
             hovertext = ~hover_texto,
             marker = list(colors = cores, line = list(color = '#FFFFFF', width = 1)),
             showlegend = FALSE
             ) %>%
     layout(title = list(text = "</br> <b>(a)</b>",
                         font = list(family = "Calibri", size = 26, color = 'black')
                         ),
            hoverlabel = list(font = list(family = "Calibri", size = 24, color = 'white')),
            margin = list(autoexpand = FALSE,t = 50)
            )

p2 = plot_ly(data = tabela,
             labels = ~Var1,
             values = ~Freq,
             type = 'pie',
             textposition = 'inside',
             textinfo = 'label+percent',
             insidetextfont = list(color = '#FFFFFF'),
             textfont = list(family = "Calibri", size = 24),
             hoverinfo = 'text',
             hovertext = ~hover_texto,
             marker = list(colors = cores, line = list(color = '#FFFFFF', width = 1)),
             showlegend = TRUE
             ) %>%
     layout(title = list(text = "</br> <b>(b)</b>",
                         font = list(family = "Calibri", size = 26, color = 'black')
                         ),
            legend = list(title = list(text = '<b>Elementos</b>', font = list(family = "Calibri", size = 26, color = 'black')),
                          font = list(family = "Calibri", size = 26, color = 'black')
                          ),
            hoverlabel = list(font = list(family = "Calibri", size = 24, color = 'white')),
            margin = list(autoexpand = FALSE,t = 50, r = 150)
            )

# Show plots
  p1 ; p2