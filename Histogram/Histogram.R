
###########################################
###########################################
##                                       ##
##   QUEBRAS DEFINIDAS AUTOMATICAMENTE   ##
##                                       ##
###########################################
###########################################

library(plotly)

# Dados
dados = data.frame(Valores = c(19,
                               20, 25, 26, 27, 28, 28, 29,
                               30, 32, 33, 36,
                               40, 47, 49,
                               50, 51)
                                      )
x = dados$Valores

# === QUEBRAS DEFINIDAS AUTOMATICAMENTE === #
quebras = hist(x, breaks = "FD", plot = FALSE)$breaks
if(max(quebras) == max(x)){quebras = c(quebras, max(x) + unique(diff(quebras)))} else {quebras = quebras}

# Rotulo
tab = table(cut(x, breaks = quebras, include.lowest = FALSE, right = FALSE))
rotulo = paste(names(tab), " </br> </br> ", as.numeric(tab), sep = "")
m = 0 ; for(i in 1:length(rotulo)) m[i] = mean(as.numeric(unlist(strsplit(trimws(x = gsub(pattern = '[^[:alnum:] ]' , replacement = " " , x = names(tab)))[i], " "))))

# Atributos dos eixos
ax = list(title =  list(text = "<b>Valores</b>",
                          font = list(family = "Calibri", size = 28, color = 'black') # DEFINE TAMANHO E A COR DO ROTULO DO EIXO
                          ),
          tickfont = list(family = "Calibri", size = 28, color = "black"),
          showticklabels = TRUE, # PODEM OCORRER CASOS EM QUE SEJA MELHOR OMITIR
          range = c(0.9 * min(quebras), 1.01 * max(quebras)),
          autotick = F,
          tickmode = "array",
          tickvals = quebras,
          zerolinecolor = 'rgb(255, 255, 255)',
          zerolinewidth = 2,
          gridcolor = 'rgb(255, 255, 255)'
          )
ay = list(title =  list(text = "<b>Frequencia</b>",
                          font = list(family = "Calibri", size = 28, color = 'black') # DEFINE TAMANHO E A COR DO ROTULO DO EIXO
                          ),
          tickfont = list(family = "Calibri", size = 28, color = "black"),
          range = c(0, max(tab) * 1.3),  # NECESSARIO DEFINIR MANUALMENTE
          zerolinecolor = 'rgb(0, 0, 0)',
          zerolinewidth = 2,
          gridcolor = 'rgb(255, 255, 255)'
          )
# Histograma
titulo = paste("<b>Histograma </br> </br> media = ", round(mean(x), 1), " ; mediana = ", median(x), "</b>", sep = "")
plot_ly() %>%
add_text(x = m,
         y = as.numeric(tab),
         text = rotulo,
         textfont = list(family = "sans serif", size = 30, color = toRGB("black")),
         textposition = "top center",
         hoverinfo = "none",
         name = ''
         ) %>%
add_histogram(x = x,
              marker = list(color = "#69b3a2", line = list(color = "black", width = 2)),
              name = ''
              ) %>%
layout(plot_bgcolor = 'rgb(240, 240, 240)',
       title = list(text = titulo, font = list(family = "Calibri", size = 28, color = 'black')),
       xaxis = ax,
       yaxis = ay,
       hoverlabel = list(font = list(family = "Calibri", size = 32, color = 'white')),
       margin = list(autoexpand = FALSE, t = 90, l = 90, r = 40, b = 70), 
       showlegend = FALSE)
