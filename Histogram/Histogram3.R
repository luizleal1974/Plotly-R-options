
#######################################
#######################################
##                                   ##
##   QUEBRAS DEFINIDAS MANUALMENTE   ##
##                                   ##
#######################################
#######################################

library(plotly)

# Dados
dados = data.frame(Valores = c(59, 59, 55, 35, 38, 36, 44, 38, 37, 54, 36, 55, 39, 41, 52, 26, 44, 57, 51, 38, 46, 29, 34, 40, 58, 42, 58, 45, 39, 47, 42, 50, 44, 36, 58, 35, 48, 35, 38, 35, 40, 41, 31, 43, 51, 39, 29, 51, 44, 29, 35, 30, 51, 59, 49, 60, 21, 35, 49, 42, 51, 26, 40, 66, 52, 35, 46, 48, 49, 47, 42, 57, 39, 47, 32, 33, 35, 39, 43, 38, 52, 54, 69, 35, 46, 36, 33, 38, 38, 35, 43, 38, 31, 29, 48, 51, 30, 59, 49, 59, 68, 47, 42, 40, 55, 49, 59, 27, 51, 70, 40, 37, 38, 45, 46, 33, 39, 44, 45, 39, 57, 70, 36, 49, 48, 35, 51, 44, 42, 45, 48, 58, 45, 36, 59, 56, 36, 45, 33, 33, 48, 38, 44, 48, 56, 45, 59, 46, 48, 47, 66, 41, 55, 35, 55, 52, 63, 51, 70, 47, 48, 52, 39, 43, 75, 27, 58, 52, 19, 61, 41, 35, 46, 39, 58, 24, 70, 35, 42, 36, 44, 37, 57, 71, 35, 43, 48, 44, 35, 46, 43, 21, 58, 43, 49, 38, 39, 39, 34, 43, 48, 46, 61, 29, 50, 50, 44, 35, 34, 32, 38, 40, 48, 62, 47, 36, 57, 42, 42, 50, 41, 30, 50, 35, 35, 28, 46, 25, 50, 48, 29, 48, 49, 31, 45, 33, 51, 37, 30, 31, 40, 50, 49, 43, 37, 60, 50, 53, 38, 35, 42, 41, 35, 48, 44, 52, 28, 46, 56, 47, 32, 62, 43, 48, 22, 50, 31, 23, 47, 31, 43, 75, 39, 24, 51, 39, 43, 55, 40, 38, 51, 43, 41, 39, 34, 42, 66, 43, 68, 43, 61, 24, 51, 36, 49, 48, 58, 46, 46, 37, 44, 29, 53, 60, 55, 38, 50, 26, 33, 24, 39, 34, 37, 47, 48, 66, 39, 45, 44, 38, 45, 51, 47, 56, 67, 40, 48, 43, 55, 42, 50, 28, 34, 49, 30, 25, 58, 66, 35, 72, 50))
x = dados$Valores

# === QUEBRAS DEFINIDAS MANUALMENTE === #
# Set number of breaks
quebras = seq(from = 10, to = 80, by = 10)
if(max(quebras) == max(x)){quebras = c(quebras, max(x) + unique(diff(quebras)))} else {quebras = quebras}

# Rotulo
tab = table(cut(x, breaks = quebras, include.lowest = FALSE, right = FALSE))
rotulo = paste(names(tab), " </br> </br> ", as.numeric(tab), sep = "")
m = 0 ; for(i in 1:length(rotulo)) m[i] = mean(as.numeric(unlist(strsplit(trimws(x = gsub(pattern = '[^[:alnum:] ]' , replacement = " " , x = names(tab)))[i], " "))))
nbinsx = length(tab) # TALVEZ SEJA NECESSARIO DEFINIR MANUALMENTE. CHECAR O RESULTADO FINAL.

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
              nbinsx = nbinsx,
              name = ''
              ) %>%
layout(plot_bgcolor = 'rgb(240, 240, 240)',
       title = list(text = titulo, font = list(family = "Calibri", size = 28, color = 'black')),
       xaxis = ax,
       yaxis = ay,
       hoverlabel = list(font = list(family = "Calibri", size = 32, color = 'white')),
       margin = list(autoexpand = FALSE, t = 90, l = 90, r = 40, b = 70), 
       showlegend = FALSE)
