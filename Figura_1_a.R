
##########
#        #
# PACOTE #
#        #
##########

# Carregar pacote
  library(plotly)



#########
#       #
# DADOS #
#       #
#########

# Animais
  Animals <- c("<b>Giraffes</b>",    # NOTA: NESTE EXEMPLO E NECESSARIO ESTABELECER OS RECURSOS HTML NESTA ETAPA
               "<b>Orangutans</b>",
               "<b>Black-and-white</b> </br> </br> <b>snub-nosed</b> </br> <b>monkeys</b>"
               )

# Frequencia
  SF <- c(20, 14, 23)
  LA <- c(12, 18, 29)

# Percentual
  SFp <- prop.table(SF)
  LAp <- prop.table(LA)

# Rotulos
  SFr <- paste("<b>", round(SFp*100, 2), "% </b>", sep = "")
  LAr <- paste("<b>", round(LAp*100, 2), "% </b>", sep = "")

# Dados
  dados <- data.frame(Animals,
                      SF, SFp, SFr,
                      LA, LAp, LAr
                      )

# Texto para mouseover
  dados$SF_freq = paste("<b>Informacoes</b>\n",
                        paste("Zoologico: " , "San Francisco", sep = ""), 
                        paste("Frequencia: ", dados$SF       , sep = ""),
                        paste("Pencentual: ", dados$SFr      , sep = ""),
                        sep = "\n"
                        )
  dados$LA_freq = paste("<b>Informacoes</b>\n",
                        paste("Zoologico: " , "Los Angeles"  , sep = ""),
                        paste("Frequencia: ", dados$LA       , sep = ""),
                        paste("Pencentual: ", dados$LAr      , sep = ""),
                        sep = "\n"
                        )

# Base de dados completa
  dados



###########
#         #
# GRAFICO #
#         #
###########

# Atributos dos eixos
  ax = list(title =  list(text = "</br></br><b>Animais</b>",
            font = list(family = "Calibri", size = 24, color = 'black')),    # DEFINE TAMANHO E A COR DO ROTULO DO EIXO
            tickfont = list(family = "Calibri", size = 24, color = "black"), # DEFINE TAMANHO E A COR DOS ELEMENTOS DO EIXO
            showticklabels = TRUE,                                           # MOSTRA (TRUE) OU OCULTA (FALSE) ELEMENTOS DO EIXO
            zerolinecolor = 'rgb(255, 255, 255)',
            zerolinewidth = 2,
            gridcolor = 'rgb(255, 255, 255)'
            )
  ay = list(title =  list(text = "<b>Percentual (%)</b>",
            font = list(family = "Calibri", size = 24, color = 'black')),
            tickfont = list(family = "Calibri", size = 24, color = "black"),
            showticklabels = TRUE,
            tickformat = ".0%",
            zerolinecolor = 'rgb(255, 255, 255)',
            zerolinewidth = 2,
            gridcolor = 'rgb(255, 255, 255)'
            )

# Plot
  plot_ly(data = dados,
          x = ~Animals,
          y = ~SFp,
          text = ~SFr,                                                            # INSERE OS ROTULOS NAS BARRAS
          textfont = list(family = "Calibri", size = 22, color = toRGB("white")), # DEFINE O TAMANHO E A COR DOS ROTULOS
          textposition = 'auto',
          hoverinfo = "text",    # DEFINE QUE APENAS O TEXTO SELECIONADO IRA APARECER NO MOUSEOVER
          hovertext = ~SF_freq,  # TEXTO SELECIONADO PARA APARECER NO MOUSEOVER
          type = 'bar',
          name = '<b>San Francisco</b>',
          width = 1280,
          height = 860,
          marker = list(color = 'steelblue', line = list(color = 'rgb(8,48,107)', width = 1.6))
          ) %>%
  add_trace(y = ~LAp,
            text = ~LAr,
            hoverinfo = "text",
            hovertext = ~LA_freq,
            name = '<b>Los Angeles</b>',
            marker = list(color = '#5EA191', line = list(color = '#386057', width = 1.6))
            ) %>%
  layout(plot_bgcolor = 'rgb(230, 230, 230)',
         title = list(text = "</br> </br> <b>Mamiferos</b> </br> <b>(Zoologicos EUA)</b>", font = list(family = "Calibri", size = 26, color = 'black')), # DEFINE O TAMANHO E A COR DO TITULO DO GRAFICO
         legend = list(title = list(text = '<b>Zoologico</b>', font = list(family = "Calibri", size = 26, color = 'black')),                             # DEFINE O TAMANHO E A COR DO TITULO DA LEGENDA
                       font = list(family = "Calibri", size = 24, color = 'black')                                                                       # DEFINE O TAMANHO E A COR DOS ELEMENTOS DA LEGENDA
                       ),
         xaxis = ax,
         yaxis = ay,
         barmode = 'group',
         hoverlabel = list(font = list(family = "Calibri", size = 26, color = 'white')), # DEFINE O TAMANHO E A COR DO MOUSEOVER
         margin = list(autoexpand = FALSE, b = 380, t = 150, r = 360, l = 320)
         )

