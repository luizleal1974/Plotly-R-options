# 1. Histograma

<p></p>

### 1.1 Quebras defindidas automaticamente

<p align="justify">O arquivo <a target='_blank' rel='noopener noreferrer' href='https://github.com/luizleal1974/Plotly-R-options/blob/main/Histogram/Histogram.R'><code>Histogram.R</code></a> contém um código em que as quebras (<i>breaks</i>) são definidas automaticamente.</p>

```{r}
# Figura 1
path = "https://github.com/luizleal1974/Plotly-R-options/raw/main/Histogram/Histogram.R"
p = devtools::source_url(path) ; p
```

<p align="center">
<img src="/Histogram/Histogram.png" alt="Drawing"/>
Figura 1. Histograma: quebras defindidas automaticamente.
</p>

</br>


### 1.2 Omissão de <i>labels</i>

<p align="justify">O histograma do pacote <code>plolty</code> não alinha perfeitamente as barras com os intervalos de classe. Neste contexto, podem ocorrer situações em que seja recomendável omitir os rótulos do eixo x conforme pode ser observado no arquivo <a target='_blank' rel='noopener noreferrer' href='https://github.com/luizleal1974/Plotly-R-options/blob/main/Histogram/Histogram4.R'><code>Histogram4.R</code></a> (Figura 2).</p>

```{r}
# Figura 2
path = "https://github.com/luizleal1974/Plotly-R-options/raw/main/Histogram/Histogram4.R"
p = devtools::source_url(path) ; p
```

<p align="center">
<img src="/Histogram/Histogram4.png" alt="Drawing"/>
Figura 2. Histograma: omissão de <i>labels</i>.
</p>


</br>

</br>
