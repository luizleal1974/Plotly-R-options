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

### 1.2 Argumento <code>hoverinfo</code>

<p align="justify">Este argumento permite define se, e quais, informações serão apresentadas no mouseover.</p>

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


<p></p>

<p></p>

### 1.3 Características do <i>hover</i>

<p align="justify">O código de programação sugerido apresenta formas de customizar o mousehover. <b>É imporatne destacar que na função <code>add_annotations</code> não é possível utilizar estas funcionalidades</b>b.</p>

```{r}
# Carregar pacote
library(plotly)

# Dados
x  = seq(from = -4, to = 4, by = 0.1) ; y  = dnorm(x = x , mean = 0, sd = 1)
xa = seq(from = -2, to = 2, by = 0.1) ; ya = dnorm(x = xa, mean = 0, sd = 1)

# Atributos dos eixos
ax = list(title = "Eixo x", zerolinecolor = 'rgb(255, 255, 255)', zerolinewidth = 2, gridcolor = 'rgb(255, 255, 255)')
ay = list(title = "Eixo y", zerolinecolor = 'rgb(255, 255, 255)', zerolinewidth = 2, gridcolor = 'rgb(255, 255, 255)')

# Margens
margens = list(autoexpand = FALSE, b = 200, t = 200, r = 500, l = 500)

# Rotulos
distr_norm = paste("<b>Distribuicao normal</b>"               ,
                   paste("Valor x: " , round(x, 2), sep = "") ,
                   paste("Valor y: " , round(y, 2), sep = "") ,
                   sep = "\n"
                   )

# Grafico
plot_ly() %>%
add_trace(x = xa,
          y = ya,
          type = "scatter",
          mode = "lines",
          fill = "tozeroy",
          fillcolor = "#b5cde1"
          ) %>%
add_trace(x = x ,
          y = y ,
          type = 'scatter',
          mode = 'lines',
          line = list(color = 'steelblue', width = 3),
          hoverinfo  = "text",
          hovertext  = distr_norm,
          hoverlabel = list(bgcolor = "ba0048", font = list(family = "Calibri", size = 26, color = 'white'))
          ) %>%
add_text(x = 0.0,
         y = 0.2,
         text = "1 - &#945;",
         textfont = list(family = "sans serif", size = 40, color = toRGB("#ff0000")),
         textposition = "middle center",
         name = '',
         hoverinfo  = "text",
         hovertext  = "Intervalo de confianca (1 - &#945;)", 
         hoverlabel = list(bgcolor = "#20b2aa", font = list(family = "Calibri", size = 36, color = 'white'))
         ) %>%
layout(plot_bgcolor = 'rgb(240, 240, 240)', title = "", xaxis = ax, yaxis = ay, margin = margens, showlegend = FALSE)
```

<p align="center">
<img src="Hover.png" width="280" height="230"/>
</p>

<div align="center">Figura 2. Customização hover.</div>

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

# Grafico
titulo_grafico = "</br> </br> </br> </br> </br> Grafico"
plot_ly() %>%
add_trace(x = x1, y = y1, type = 'scatter', mode = 'markers'        , marker = list(color = '#5EA191'   ,  size = 19 )                                              ) %>%
add_trace(x = x2, y = y2, type = 'scatter', mode = 'lines'          ,   line = list(color = 'steelblue' , width = 10 )                                              ) %>%
add_trace(x = x3, y = y3, type = 'scatter', mode = 'lines+markers'  ,   line = list(color = '#d8ae2d'   , width = 8  ), marker = list(color = '#000000', size = 14) ) %>%
layout(plot_bgcolor = 'rgb(240, 240, 240)',
       title = titulo_grafico,
       xaxis = ax,
       yaxis = ay,
       margin = margens,
       showlegend = FALSE
       )
```

<p align="center">
<img src="Figura_2.png" width="280" height="230"/>
</p>

<div align="center">Figura 3. Marcadores e linhas.</div>


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

<div align="center">Figura 4. Marcadores: cores e símbolo.</div>


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

<div align="center">Figura 5. Tabela.</div>

</br>

# 5. Texto e anotações

Sugestão de código para adicionar texto e anotações no gráfico.

```{r}
library(plotly)

# Dados
x1 = c(0, 1, 2, 3, 4) ; y1 = c(1, 2, 6, 8, 9)

# Margens
margens = list(autoexpand = FALSE, b = 200, t = 200, r = 500, l = 500)

# Atributos dos eixos
ax = list(title = "Eixo x", zerolinecolor = 'rgb(255, 255, 255)', zerolinewidth = 2, gridcolor = 'rgb(255, 255, 255)')
ay = list(title = "Eixo y", zerolinecolor = 'rgb(255, 255, 255)', zerolinewidth = 2, gridcolor = 'rgb(255, 255, 255)')

# Grafico
plot_ly() %>%
add_trace(x = x1, y = y1, type = 'scatter', mode = 'markers') %>%
layout(plot_bgcolor = 'rgb(240, 240, 240)', xaxis = ax, yaxis = ay,margin = margens, showlegend = FALSE) %>%
add_annotations(xref = "paper",
                yref = "paper",
                x = 1,
                y = 0.2,
                xanchor = 'left',
                yanchor = 'bottom',
                text = "<b>NOME 1 \nANDRE LUIZ LEAL</b>",
                font = list(family = 'Calibri', size = 20, color = '#009999'),
                showarrow = FALSE,
                align = "left"
                ) %>%
add_annotations(xref = "x",
                yref = "y",
                x = 2,
                y = 6,
                xanchor = 'left',
                yanchor = 'bottom',
                text = "<b>NOME 2 \nLUIZ HENRIQUE LEAL</b>",
                font = list(family = 'Calibri', size = 20, color = '#009999'),
                showarrow = FALSE,
                align = "center"
                )
```

<p align="center">
<img src="Text_and_Annotations.png" width="480" height="270"/>
</p>

<div align="center">Figura 6. Texto e anotações.</div>

</br>

# 6. Funções

<p align="justify">É possível construir funções que contenham um conjunto de comandos e, a partir um destas funções, construir um gráfico. Tem-se a seguir uma estrutura básica na qual é importante destacar que o elemento <code><b>p</b></code> representa, simultânemante, o argumento das funções e o objeto no qual o gráfico deve ser armazenado.</p>

<table width="100%">
  <tr>
  <td> suppressWarnings(suppressMessages(library(plotly))) </br> f1 = function(<code><b>p</b></code>, mostra) &nbsp; layout(<code><b>p</b></code>, showlegend = mostra) </br> f2 = function(<code><b>p</b></code>, estilo) add_trace(<code><b>p</b></code>, x = c(-1, 1), y = c(-2, 2), type = estilo, mode = 'markers') </br> <code><b>p</b></code> = plot_ly() </br> <code><b>p</b></code> = <code><b>p</b></code> %>% </br> f1(mostra = TRUE) %>% </br> f2(estilo = 'scatter') </br> <code><b>p</b></code> </td>
  </tr>
</table>

<p align="justify">No código de programação sugerido a seguir, o gráfico é construído a partir de duas funções definidas pelo programador: (i) a função <code>features</code> define o <i>background</i> do gráfico e adiciona um texto em uma posição (x;y) pré-definida; (ii) a função <code>curva</code> estabele os padrões do gráfico de linhas. Eventualmente este tipo de abordagem pode ser útil na construção de gráficos.</p>

```{r}
suppressWarnings(suppressMessages(library(plotly)))

# ====== Features (Function set by user) ====== #
features = function(p, x_pos, y_pos){
           margens = list(autoexpand = FALSE, b = 200, t = 200, r = 500, l = 500)
           ax = list(title = "Eixo x", zerolinecolor = 'rgb(255, 255, 255)', zerolinewidth = 2, gridcolor = 'rgb(255, 255, 255)')
           ay = list(title = "Eixo y", zerolinecolor = 'rgb(255, 255, 255)', zerolinewidth = 2, gridcolor = 'rgb(255, 255, 255)')
           layout(p, plot_bgcolor = 'rgb(240, 240, 240)', xaxis = ax, yaxis = ay,margin = margens, showlegend = TRUE) %>% add_annotations(xref = "x", yref = "y", x = x_pos, y = y_pos, xanchor = 'left', yanchor = 'bottom', text = "<b>NOME 2</b>", font = list(family = 'Calibri', size = 20, color = '#009999'), showarrow = FALSE)
           }

# ====== Lines (Function set by user) ====== #
curva = function(p, linha, x_val, y_val, curve_color){
        ROTULOS = paste("<b>Valores</b>", paste("x values: ", x_val, sep = ""), paste("y values: ", y_val, sep = ""), sep = "\n")
        NOME = paste("Curva ", linha, sep = "")
        add_trace(p, x = x_val, y = y_val, hoverinfo = "text", hovertext = ROTULOS, type = 'scatter', mode = 'lines', name = NOME, line = list(color = curve_color), showlegend = TRUE)
        }

# Dados
x1 = c(0, 1, 2, 3, 4) ; y1 = c(1, 2, 6, 8, 9)
x2 = c(0, 1, 2, 3, 4) ; y2 = c(2, 4, 5, 3, 1)

# Grafico
p = plot_ly()
p = p %>%
curva(linha = 1, x_val = x1, y_val = y1, curve_color = 'steelblue') %>%   # Function set by user
curva(linha = 2, x_val = x2, y_val = y2, curve_color = 'crimson') %>%     # Function set by user
features(x_pos = 1, y_pos = 8)                                            # Function set by user
p
```
