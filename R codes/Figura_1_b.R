
########################
#                      #
# Distribuicao Poisson #
#                      #
########################

# Carregar pacote
  library(plotly)

# Dados
  k = 0:30 ; L = c(1, 5, 9, 14) ; pk = list() ; for(i in 1:length(L)) pk[[i]] = dpois(x = k, lambda = L[i])
  dfr = data.frame(k, pk[[1]], pk[[2]], pk[[3]], pk[[4]])
  head(dfr)

# Atributos dos eixos
  ax = list(title = list(text = TeX("k"),
            font = list(size = 20, color = 'black')),
            tickfont = list(size = 20, color = "black"),
            zerolinecolor = 'rgb(255, 255, 255)',
            zerolinewidth = 2,
            gridcolor = 'rgb(255, 255, 255)'
            )
  ay = list(title = list(text = TeX("P \\left \\{ X = k \\right \\}"),
            font = list(size = 20, color = 'black')),
            tickfont = list(size = 20, color = "black"),
            zerolinecolor = 'rgb(255, 255, 255)', zerolinewidth = 2,
            gridcolor = 'rgb(255, 255, 255)'
            )

# Grafico (adicionar plot por meio de looping)
  LEGENDA = 0 ; for(i in 1:length(L)) LEGENDA[i] = paste('\\lambda = ', L[i], sep = "")
  p <- plot_ly()
  for(i in 1:length(L)){
    p <- add_trace(p,
                   x = k,
                   y = pk[[i]],
                   name = TeX(LEGENDA[i]),
                   type = 'scatter',
                   mode = 'markers+lines',
                   line = list(width = 1)
                   )
  }
  p %>%
  layout(plot_bgcolor = 'rgb(240, 240, 240)',
         title = list(text = "\n \n \n <b>Distribuicao Poisson</b>", font = list(size = 18, color = 'black')),
         legend = list(x = 10,
                       y = 0.88,
                       font = list(size = 18, color = 'black')    # NOTA: NESTE EXEMPLO A LEGENDA ESTA  SENDO 
                       ),                                         #       ALOCADA  MANUALMENTE  POR  MEIO DOS
         annotations = list(xref = 'paper',                       #       ARGUMENTOS 'legend' E 'annotations'
                            x = 1,
                            y = 0.36,
                            xanchor = 'left',
                            yanchor = 'middle',
                            text = '&nbsp; <b>Parametros</b>',
                            font = list(size = 16, color = 'black'),
                            showarrow = FALSE
                            ),
         xaxis = ax,
         yaxis = ay,
         images = list(list(source = "https://images.plot.ly/language-icons/api-home/r-logo.png",  # INSERIR IMAGEM
                            xref = "x",
                            yref = "y",
                            x = 26,
                            y = 0.38,
                            sizex = 5,
                            sizey = 5,
                            opacity = 0.6,
                            layer = "below"
                            )
                       ),
         margin = list(autoexpand = FALSE, b = 200, t = 200, r = 500, l = 500)
         ) %>%
  config(mathjax = 'cdn')  # ESTE COMANDO PERMITE ESCREVER EQUACOES 'LaTeX'

