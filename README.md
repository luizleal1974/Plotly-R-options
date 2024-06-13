# 1. Customização de gráficos HTML

<p></p>

### 1.1 Introdução

<p align="justify">Os códigos em linguagem de programação R disponíveis neste repositório fornecem as seguintes customizações para gráficos HTML:</p>

<p align="justify">
<li><a target='_blank' rel='noopener noreferrer' href='https://github.com/luizleal1974/Plotly-R-options/blob/main/R%20codes/Figura_1_a.R'><code>Figura_1_a.R</code></a>: Customização de mouseover e fonte.</li>
<li><a target='_blank' rel='noopener noreferrer' href='https://github.com/luizleal1974/Plotly-R-options/blob/main/R%20codes/Figura_1_b.R'><code>Figura_1_b.R</code></a>: Inserção de imagem e equações LaTex. <code>Nota: Adiciona gráficos de linhas utilizando looping.</code></li>
<li><a target='_blank' rel='noopener noreferrer' href='https://github.com/luizleal1974/Plotly-R-options/blob/main/R%20codes/Figura_1_c.R'><code>Figura_1_c.R</code></a>: Customização de fonte no ggplot.</li>
</p>

<p align="justify">Para reproduizr a Figura 1 utilize o código abaixo.</p>

```{r}
# Figura 1
path1 = "https://github.com/luizleal1974/Plotly-R-options/raw/main/R%20codes/Figura_1_a.R"
path2 = "https://github.com/luizleal1974/Plotly-R-options/raw/main/R%20codes/Figura_1_b.R"
path3 = "https://github.com/luizleal1974/Plotly-R-options/raw/main/R%20codes/Figura_1_c.R"
p1 = devtools::source_url(path1) ; p2 = devtools::source_url(path2) ; p3 = devtools::source_url(path3)
p1 ; p2 ; p3
```

<p align="center">
<img src="/R codes/Figura_1.gif" alt="Drawing"/>
Figura 1. Gráficos HTML.
</p>

</br>


### 1.2 Argumento <code>hoverinfo</code>

<p align="justify">Este argumento permite definir se, e quais, informações serão apresentadas no mouseover. Acesse o arquivo <a target='_blank' rel='noopener noreferrer' href='https://github.com/luizleal1974/Plotly-R-options/blob/main/R%20codes/Hover_Info.R'><code>Hover_Info.R</code></a>.</p>

```{r}
# Mouseover information
path = "https://github.com/luizleal1974/Plotly-R-options/raw/main/R%20codes/Hover_Info.R"
p = devtools::source_url(path)
p
```

<p align="center">
<img src="/R codes/Hover_Info.png" height="350" width="750"/>
</p>

<div align="center">Figura 2. Hover information.</div>


</br>

### 1.3 <i>Hover features</i>

<p align="justify">O código de programação sugerido no arquivo <a target='_blank' rel='noopener noreferrer' href='https://github.com/luizleal1974/Plotly-R-options/blob/main/R%20codes/Hover.R'><code>Hover.R</code></a> apresenta formas de customizar o mousehover. <b>É imporatne destacar que na função <code>add_annotations</code> não é possível utilizar estas funcionalidades</b>.</p>

```{r}
# Mouseover
path = "https://github.com/luizleal1974/Plotly-R-options/raw/main/R%20codes/Hover.R"
p = devtools::source_url(path)
p
```

<p align="center">
<img src="/R codes/Hover.png" height="250" width="550"/>
</p>

<div align="center">Figura 3. Customização hover.</div>


</br>

</br>


# 2. Customizar marcadores e linhas

<p></p>

### 2.1 Introdução

<p align="justify">Sugestão de código de programação em R para customizar marcadores e linhas (<a target='_blank' rel='noopener noreferrer' href='https://github.com/luizleal1974/Plotly-R-options/blob/main/R%20codes/Marcadores_Linhas.R'><code>Marcadores_Linhas.R</code></a>).</p>

```{r}
# Marcadores e linhas
path = "https://github.com/luizleal1974/Plotly-R-options/raw/main/R%20codes/Marcadores_Linhas.R"
p = devtools::source_url(path)
p
```

<p align="center">
<img src="/R codes/Marcadores_Linhas.png" width="380" height="330"/>
</p>

<div align="center">Figura 4. Marcadores e linhas.</div>


</br>


### 2.2 Customização de marcadores

<p align="justify"> O arquivo <a target='_blank' rel='noopener noreferrer' href='https://github.com/luizleal1974/Plotly-R-options/blob/main/R%20codes/Marker.R'><code>Marker.R</code></a> fornece uma sugestão de código para customizar cores e símbolos dos marcadores.</p>

```{r}
# Marcadores
path = "https://github.com/luizleal1974/Plotly-R-options/raw/main/R%20codes/Marker.R"
p = devtools::source_url(path)
p
```

<p align="center">
<img src="/R codes/Marker.png" width="500" height="300"/>
</p>

<div align="center">Figura 5. Marcadores: cores e símbolo.</div>


</br>

</br>




# 3. Texto e anotações

Sugestão de código para adicionar texto e anotações no gráfico (<a target='_blank' rel='noopener noreferrer' href='https://github.com/luizleal1974/Plotly-R-options/blob/main/R%20codes/Text_and_Annotations.R'><code>Text_and_Annotations.R</code></a>).

```{r}
# Texto e anotacoes
path = "https://github.com/luizleal1974/Plotly-R-options/raw/main/R%20codes/Text_and_Annotations.R"
p = devtools::source_url(path)
p
```

<p align="center">
<img src="/R codes/Text_and_Annotations.png" width="480" height="270"/>
</p>

<div align="center">Figura 6. Texto e anotações.</div>


</br>

</br>


# 4. <i>Filled area</i>

<p align="justify">Os códigos de programação sugeridos permitem construir gráficos com áreas hachuradas (<i>filled area</i>).</p>

<p align="justify">
<li><a target='_blank' rel='noopener noreferrer' href='https://github.com/luizleal1974/Plotly-R-options/blob/main/R%20codes/Filled_1.R'><code>Filled_1.R</code></a> (Figura 7a): Função <code><b>add_polygons</b></code>.</li>
<li><a target='_blank' rel='noopener noreferrer' href='https://github.com/luizleal1974/Plotly-R-options/blob/main/R%20codes/Filled_2.R'><code>Filled_2.R</code></a> (Figura 7a): Argumento <code><b>fill = "tozeroy"</b></code>. Nota: Não é possível utilizar o argumento <code><b>opacity</b></code>.
<li><a target='_blank' rel='noopener noreferrer' href='https://github.com/luizleal1974/Plotly-R-options/blob/main/R%20codes/Filled_3.R'><code>Filled_3.R</code></a> (Figura 7b).</li>
</p>

```{r}
path1 = "https://github.com/luizleal1974/Plotly-R-options/raw/main/R%20codes/Filled_1.R"
path2 = "https://github.com/luizleal1974/Plotly-R-options/raw/main/R%20codes/Filled_2.R"
path3 = "https://github.com/luizleal1974/Plotly-R-options/raw/main/R%20codes/Filled_3.R"
p1 = devtools::source_url(path1) ; p2 = devtools::source_url(path2) ; p3 = devtools::source_url(path3)
p1 ; p2 ; p3
```

<p align="center">
<img src="/R codes/Filled.png" alt="Drawing"/>
Figura 7. Áreas hachuradas (<i>filled area</i>).
</p>


</br>

</br>

# 5. <i>Slider</i>

<p align="justify"> O arquivo <a target='_blank' rel='noopener noreferrer' href='https://github.com/luizleal1974/Plotly-R-options/blob/main/R%20codes/slider.R'><code>slider.R</code></a> contém uma sugestão de código de programação para customização de <i>slider</i>: funções <code>animation_slider</code> e <code>animation_button</code>.</p>


```{r}
# Slider
path = "https://github.com/luizleal1974/Plotly-R-options/raw/main/R%20codes/slider.R"
p = devtools::source_url(path)
p
```

<p align="center">
<img src="/R codes/slider.gif" alt="Drawing"/>
</p>

<div align="center">Figura 8. Slider.</div>

</br>

</br>


# 6. Tabela

<p align="justify"> O código <a target='_blank' rel='noopener noreferrer' href='https://github.com/luizleal1974/Plotly-R-options/blob/main/R%20codes/Tabela.R'><code>Tabela.R</code></a> permite a construção de tabelas.</p>

```{r}
# Tabela
path = "https://github.com/luizleal1974/Plotly-R-options/raw/main/R%20codes/Tabela.R"
p = devtools::source_url(path)
p
```

<p align="center">
<img src="/R codes/Tabela.png" width="280" height="180"/>
</p>

<div align="center">Figura 9. Tabela.</div>


</br>

</br>






# 7. Função

<p></p>

### 7.1 Mostrar/Ocultar

<p align="justify">Para criar uma função que retorne gráficos em HTML é necessário utilizar o comando <code>print</code>. Acesso o arquivo <a target='_blank' rel='noopener noreferrer' href='https://github.com/luizleal1974/Plotly-R-options/blob/main/R%20codes/Hide_Show_Plot_Output.R'><code>Hide_Show_Plot_Output.R</code></a>.</p>

<p align="center">
<img src="/R codes/Hide_Show_Plot_Output.gif" alt="Drawing"/>
</p>

<div align="center">Figura 9. Mostrar/Ocultar tabela e gráfico.</div>

</br>


### 7.2 Shiny

<p align="justify">Nos aplicativos <b>Shiny/R</b> deve-se utilizar a estrutura contida no arquivo <a target='_blank' rel='noopener noreferrer' href='https://github.com/luizleal1974/Plotly-R-options/blob/main/R%20codes/app.R'><code>app.R</code></a>.</p>

```{r}
# Load app
path = "https://github.com/luizleal1974/Plotly-R-options/raw/main/R%20codes/app.R"
devtools::source_url(path)

# Run app
shinyApp(ui, server)
```


</br>



### 7.3 Customizar

<p align="justify">É possível construir funções que contenham um conjunto de comandos e, a partir um destas funções, construir um gráfico. Tem-se a seguir uma estrutura básica na qual é importante destacar que o elemento <code><b>p</b></code> representa, simultânemante, o argumento das funções e o objeto no qual o gráfico deve ser armazenado.</p>

<table width="100%">
  <tr>
  <td> suppressWarnings(suppressMessages(library(plotly))) </br> f1 = function(<code><b>p</b></code>, mostra) &nbsp; layout(<code><b>p</b></code>, showlegend = mostra) </br> f2 = function(<code><b>p</b></code>, estilo) add_trace(<code><b>p</b></code>, x = c(-1, 1), y = c(-2, 2), type = estilo, mode = 'markers') </br> <code><b>p</b></code> = plot_ly() </br> <code><b>p</b></code> = <code><b>p</b></code> %>% </br> f1(mostra = TRUE) %>% </br> f2(estilo = 'scatter') </br> <code><b>p</b></code> </td>
  </tr>
</table>

<p align="justify">No código de programação sugerido, <a target='_blank' rel='noopener noreferrer' href='https://github.com/luizleal1974/Plotly-R-options/blob/main/R%20codes/Customizar.R'><code>Customizar.R</code></a>, o gráfico é construído a partir de duas funções definidas pelo programador: (i) a função <code>features</code> define o <i>background</i> do gráfico e adiciona um texto em uma posição (x;y) pré-definida; (ii) a função <code>curva</code> estabele os padrões do gráfico de linhas. Eventualmente este tipo de abordagem pode ser útil na construção de gráficos.</p>

</br>
