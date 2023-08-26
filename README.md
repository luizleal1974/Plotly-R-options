# 1. Customização de gráficos HTML

<p align="justify">Os códigos em linguagem de programação R disponíveis neste repositório fornecem as seguintes customizações para gráficos HTML:</p>

<p align="justify">
<li><a target='_blank' rel='noopener noreferrer' href='https://github.com/luizleal1974/Plotly-R-options/blob/main/Figura_1_a.R'><code>Figura_1_a.R</code></a>: Customização de mouseover e fonte.</li>
<li><a target='_blank' rel='noopener noreferrer' href='https://github.com/luizleal1974/Plotly-R-options/blob/main/Figura_1_b.R'><code>Figura_1_b.R</code></a>: Inserção de imagem e equações LaTex. <code>Nota: Adiciona gráficos de linhas utilizando looping.</code></li>
<li><a target='_blank' rel='noopener noreferrer' href='https://github.com/luizleal1974/Plotly-R-options/blob/main/Figura_1_c.R'><code>Figura_1_c.R</code></a>: Customização de fonte no ggplot.</li>
</p>

<p align="justify">Para reproduizr a Figura 1 utilize o código abaixo.</p>

```{r}
# Figura 1
path1 = "https://github.com/luizleal1974/Plotly-R-options/raw/main/Figura_1_a.R"
path2 = "https://github.com/luizleal1974/Plotly-R-options/raw/main/Figura_1_b.R"
path3 = "https://github.com/luizleal1974/Plotly-R-options/raw/main/Figura_1_c.R"
p1 = devtools::source_url(path1) ; p2 = devtools::source_url(path2) ; p3 = devtools::source_url(path3)
p1 ; p2 ; p3
```

<p align="center">
<img src="Figura_1.gif" alt="Drawing"/>
Figura 1. Gráficos HTML.
</p>

</br>

# 2. Customizar marcadores e linhas

<p align="justify">Sugestão de código de programação em R para customizar marcadores e linhas. Para reproduizr a Figura 2 utilize o código abaixo.</p>

```{r}
library(plotly)

# Dados
x1 = c(0, 1, 2, 3, 4) ; y1 = c(1, 2, 6, 8, 9)
x2 = c(5, 8, 9)       ; y2 = c(2, 6, 8)
x3 = c(2, 4, 6)       ; y3 = c(4, 2, 0)

# Atributos dos eixos
ax = list(title = "Eixo x", zerolinecolor = 'rgb(255, 255, 255)', zerolinewidth = 2, gridcolor = 'rgb(255, 255, 255)')
ay = list(title = "Eixo y", zerolinecolor = 'rgb(255, 255, 255)', zerolinewidth = 2, gridcolor = 'rgb(255, 255, 255)')

# Margens
margens = list(autoexpand = FALSE, b = 200, t = 200, r = 500, l = 500)

# Grafico (Figura 2)
titulo_grafico = "</br> </br> </br> </br> </br> Grafico"
plot_ly() %>%
add_trace(x = x1, y = y1, type = 'scatter', mode = 'markers'        , marker = list(color = '#5EA191' ,    size = 19 )                                              ) %>%
add_trace(x = x2, y = y2, type = 'scatter', mode = 'lines'          ,   line = list(color = 'steelblue' , width = 10 )                                              ) %>%
add_trace(x = x3, y = y3, type = 'scatter', mode = 'lines+markers'  ,   line = list(color = '#d8ae2d'   , width = 8  ), marker = list(color = '#000000', size = 14) ) %>%
layout(plot_bgcolor = 'rgb(240, 240, 240)', title = titulo_grafico, xaxis = ax, yaxis = ay, margin = margens, showlegend = FALSE)
```

<p align="center">
<img src="Figura_2.png" alt="Drawing"/>
</p>

<div style="text-align:center">Figura 2. Marcadores e linhas.</div>

</br>

# 3. Função definida pelo programador

<p align="justify">Para criar uma função que retorne gráficos em HTML é necessário utilizar o comando <code>print</code>.</p>

```{r}
# Function
f = function(x, tab = TRUE, plt = FALSE){
result = data.frame(prop.table(table(x)))
library(plotly) ; p = plot_ly(x = x, type = "histogram", marker = list(color = "#69b3a2", line = list(color = "black", width = 2))) 
if(tab == TRUE){return(result)}
if(plt == TRUE){print(p)}
}

# Data set
values = c(0, 1, 2, 3, 3, 4, 4, 5, 5, 5, 5, 6, 6, 7, 8, 9)

# Output
f(x = values, tab = TRUE, plt = FALSE)
f(x = values, tab = FALSE, plt = TRUE)
```
