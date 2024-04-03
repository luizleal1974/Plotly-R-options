# 1. Customização de gráficos HTML

<p></p>

<p></p>

### 1.1 Introdução

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

<p></p>

<p></p>

### 1.2 Customização adicional

<p align="justify">O código abaixo fornece uma sugestação adicional de customizações para mouseover.</p>

```{r}
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
```

</br>

# 2. Customizar marcadores e linhas

<p></p>

<p></p>

### 2.1 Introdução

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
add_trace(x = x1, y = y1, type = 'scatter', mode = 'markers'        , marker = list(color = '#5EA191'   ,  size = 19 )                                              ) %>%
add_trace(x = x2, y = y2, type = 'scatter', mode = 'lines'          ,   line = list(color = 'steelblue' , width = 10 )                                              ) %>%
add_trace(x = x3, y = y3, type = 'scatter', mode = 'lines+markers'  ,   line = list(color = '#d8ae2d'   , width = 8  ), marker = list(color = '#000000', size = 14) ) %>%
layout(plot_bgcolor = 'rgb(240, 240, 240)', title = titulo_grafico, xaxis = ax, yaxis = ay, margin = margens, showlegend = FALSE)
```

<p align="center">
<img src="Figura_2.png" width="280" height="230"/>
</p>

<div align="center">Figura 2. Marcadores e linhas.</div>


<p></p>

<p></p>

### 2.2 Customização de marcadores

<p align="justify"> O arquivo <a target='_blank' rel='noopener noreferrer' href='https://github.com/luizleal1974/Plotly-R-options/blob/main/Marker.R'><code>Marker.R</code></a> fornece uma sugestão de código para customizar cores e símbolos dos marcadores.</p>

```{r}
# Marcadores
path = "https://github.com/luizleal1974/Plotly-R-options/raw/main/Marker.R"
p = devtools::source_url(path)
p
```

<p align="center">
<img src="Marker.png" width="280" height="180"/>
</p>

<div align="center">Figura 3. Marcadores: cores e símbolo.</div>


</br>

# 3. Função definida pelo programador

<p></p>

<p></p>

### 3.1 R console

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

<p></p>

<p></p>


### 3.2 Shiny

<p align="justify">Nos aplicativos <b>Shiny/R</b> deve-se utilizar a estrutura contida no arquivo <a target='_blank' rel='noopener noreferrer' href='https://github.com/luizleal1974/Plotly-R-options/blob/main/app.R'><code>app.R</code></a>.</p>

```{r}
# Load app
path = "https://github.com/luizleal1974/Plotly-R-options/raw/main/app.R"
devtools::source_url(path)

# Run app
shinyApp(ui, server)
```

</br>

# 4. Tabela

<p align="justify"> O código <a target='_blank' rel='noopener noreferrer' href='https://github.com/luizleal1974/Plotly-R-options/blob/main/Tabela.R'><code>Tabela.R</code></a> permite a construção de tabelas.</p>

```{r}
# Tabela
path = "https://github.com/luizleal1974/Plotly-R-options/raw/main/Tabela.R"
p = devtools::source_url(path)
p
```

<p align="center">
<img src="Tabela.png" width="280" height="180"/>
</p>

<div align="center">Figura 4. Tabela.</div>


