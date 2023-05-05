# Customização de gráficos HTML

<p align="justify">Para reproduizr a Figura 1 copie o código abaixo e cole no prompt de comando da linguagem de programação R.</p>

<li><a target='_blank' rel='noopener noreferrer' href='https://github.com/luizleal1974/Plotly-R-options/blob/main/Figura_1_a.R'><code>Figura_1_a.R</code></a>: Customização de mouseover e fonte.</li>
<li><a target='_blank' rel='noopener noreferrer' href='https://github.com/luizleal1974/Plotly-R-options/blob/main/Figura_1_b.R'><code>Figura_1_b.R</code></a>: Inserção de imagem e equações LaTex.</li>
<li><a target='_blank' rel='noopener noreferrer' href='https://github.com/luizleal1974/Plotly-R-options/blob/main/Figura_1_c.R'><code>Figura_1_c.R</code></a>: Customização de fonte no ggplot.</li>


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
Figura 1. Gráficos em HTML.
</p>

