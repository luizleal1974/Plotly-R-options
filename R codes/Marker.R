
library(plotly)

# Dados
Fuel = c("Gasoline", "Gasoline", "Gasoline", "Kerosene", "Kerosene", "Kerosene", "Diesel", "Diesel", "Diesel", "Biodiesel", "Biodiesel", "Biodiesel", "Biodiesel", "Solar (HSD)", "Solar (HSD)", "Solar (HSD)", "Solar (HSD)")
Km = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17)
Gallon = c(7, 9, 8, 1, 3, 4, 13, 11, 15, 20, 22, 23, 21, 6, 9, 7, 8)
dados = data.frame(Fuel, Km, Gallon)
dados

# Variáveis
x = dados$Km
y = dados$Gallon
Grupo = dados$Fuel # VARIAVEL DE SEGMENTACAO

# Rotulos
rotulos = unique(Grupo)

# Cores
n = length(rotulos)
cores = scales::hue_pal()(n)

# Simbolos
vals <- schema(F)$traces$scatter$attributes$marker$symbol$values
vals <- grep("[a-z]", vals, value = TRUE)                              # LISTA DE SIMBOLOS
vals_chosen = c("circle", "asterisk-open", "x", "triangle-up", "star") # SIMBOLOS ESCOLHIDOS PARA COMPOR O GRAFICO

# Atributos dos eixos
ax = list(title = list(text = "<b>Km</b>", font = list(family = "Calibri", size = 26, color = 'black')),
          tickfont = list(family = "Calibri", size = 26, color = "black"),
          zerolinecolor = 'rgb(255, 255, 255)',
          zerolinewidth = 2,
          gridcolor = 'rgb(255, 255, 255)')
ay = list(title = list(text = "<b>Gallon</b>", font = list(family = "Calibri", size = 26, color = 'black')),
          tickfont = list(family = "Calibri", size = 26, color = "black"),
          zerolinecolor = 'rgb(255, 255, 255)',
          zerolinewidth = 2,
          gridcolor = 'rgb(255, 255, 255)')

# Grafico
p <- plot_ly()

for(i in 1:n){
p <- add_trace(p,
               x = x[Grupo==rotulos[i]],
               y = y[Grupo==rotulos[i]],
               type = 'scatter',
               mode = 'markers',
               name = rotulos[i],
               marker = list(symbol = vals_chosen[i], color = cores[i], size  = 20)
               )
              }

p %>%
layout(plot_bgcolor = 'rgb(240, 240, 240)',
       legend = list(title = list(text = '<b>Fuel</b>'), font = list(family = "Calibri", size = 24, color = 'black')),
       title = "",
       xaxis = ax,
       yaxis = ay,
       hoverlabel = list(font = list(family = "Calibri", size = 30, color = 'white'))
       )
