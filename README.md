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

# 2. Função definida pelo programador

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
