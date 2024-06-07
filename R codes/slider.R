library(reshape)
library(plotly)

# Parametros
por = 0.01 # by
g_lib = 40 # Graus de liberdade

# Normal padrao
x0 = seq(from = -5, to = 5,  by = por)
y0 = dnorm(x0, mean = 0, sd = 1)

# Normal padrao: 95%
valores0_ci = seq(from = qnorm(0.025), to = qnorm(0.975),  by = por)
valores0_ci[length(valores0_ci)] = qnorm(0.975)
x0_ci = c(qnorm(0.025), valores0_ci, qnorm(0.975))
y0_ci = c(0, dnorm(valores0_ci, mean = 0, sd = 1), 0)

# t-Student
x = seq(from = -5, to = 5,  by = por)
y = list() ; for(i in 1:g_lib) y[[i]] = dt(x, df = i)

# Data frame
student = y[[1]]
for(i in 2:g_lib) student = cbind(student, y[[i]])
colnames(student) = paste("y", 1:g_lib, sep = "")
dfr = data.frame(x, student)
dados = melt(dfr, id.vars = "x")
dados$variable = as.numeric(sub(pattern = "y", replacement = "", x = as.character(dados$variable)))

##################################
##################################
##################################
#######                    #######
#######                    #######
#######                    #######
#######   t-Student: 95%   #######
#######                    #######
#######                    #######
#######                    #######
##################################
##################################
##################################

# Confidence interval values
valores_ci = list()
valores_ci[[1]] = seq(from = -5, to = 5, length.out = (length(x)-2))
for(i in 2:g_lib) valores_ci[[i]] = seq(from = qt(0.025, df = i), to = qt(0.975, df = i), length.out = (length(x)-2))

# x values
x_ci = list()
x_ci[[1]] = c(-5, valores_ci[[1]], 5)
for(i in 2:g_lib) x_ci[[i]] = c(qt(0.025, df = i), valores_ci[[i]], qt(0.975, df = i))

# y values
y_ci = list() ; for(i in 1:g_lib) y_ci[[i]] = c(0, dt(valores_ci[[i]], df = i), 0)

# Data frame
datum = list() ; for(i in 1:g_lib) datum[[i]] = data.frame(x_ci = x_ci[[i]], y_ci = y_ci[[i]])
dataset = datum[[1]] ; for(i in 2:g_lib) dataset = rbind(dataset, datum[[i]])

###########################
###########################
###########################
#######             #######
#######             #######
#######             #######
#######   Grafico   #######
#######             #######
#######             #######
#######             #######
###########################
###########################
###########################

# Data frame final
dados = cbind(dados, dataset)

# Atributos dos eixos
ax = list(title         = TeX("\\LARGE x"),
          zerolinecolor = 'rgb(255, 255, 255)',
          zerolinewidth = 2,
          tickfont      = list(family = "Calibri", size = 24, color = "black"),
          gridcolor     = 'rgb(255, 255, 255)')

ay = list(title         = TeX("\\LARGE f(x)"),
          zerolinecolor = 'rgb(255, 255, 255)',
          zerolinewidth = 2,
          tickfont      = list(family = "Calibri", size = 24, color = "black"),
          gridcolor     = 'rgb(255, 255, 255)')

# Grafico
plot_ly(data = dados) %>%
add_trace(x = x0,
          y = y0,
          type = "scatter",
          name = 'Normal padrao',
          line = list(color = '#1f77b4'),
          mode = 'lines',
          hoverlabel = list(font = list(family = "Calibri", size = 30, color = 'white'))
          ) %>%
add_polygons(x = x0_ci,
             y = y0_ci,
             color = I("blue"),
             name = "95%",
             opacity = 0.3,
             hoverlabel = list(font = list(family = "Calibri", size = 30, color = 'white'))
             ) %>%
add_trace(x = ~x,
          y = ~value,
          type = "scatter",
          frame = ~variable,
          name = 't-Student',
          line = list(color = '#f60050'),
          mode = 'lines',
          hoverlabel = list(font = list(family = "Calibri", size = 30, color = 'white'))
          ) %>%
add_polygons(x = ~x_ci,
             y = ~y_ci,
             frame = ~variable,
             color = I("red"),
             name = "95%",
             opacity = 0.3,
             hoverlabel = list(font = list(family = "Calibri", size = 30, color = 'white'))
             ) %>%
animation_slider(currentvalue = list(prefix = "Graus de liberdade: n = ",
                                     font = list(family = "Calibri", size = 24, color = 'black')
                                     ),
                 font = list(family = "Calibri", size = 24, color = 'black'),
                 hide = FALSE
                 ) %>%
animation_button(font = list(family = "Calibri", size = 28, color = 'steelblue'),
                 bgcolor = '#dae6f0',
                 label = "Play",
                 visible = TRUE
                 ) %>% 
layout(plot_bgcolor = 'rgb(230, 230, 230)',
       title        = list(text = TeX("\\LARGE \\displaystyle\\lim_{n\\to+\\infty} t_n = N \\left(0 \\ ; 1 \\right)"),
                           font = list(size = 15, color = 'black')
                           ),       
       margin       = list(autoexpand = FALSE, b = 160, t = 80, l = 90, r = 230),
       legend       = list(title = list(text = "<b>Distribuicao de <br>probabilidade</b>",
                                        font = list(family = "Calibri", size = 22, color = 'black')),
                           font = list(family = "Calibri", size = 20, color = 'black')
                           ),
       xaxis        = ax,
       yaxis        = ay,
       images       = list(list(source = "https://images.plot.ly/language-icons/api-home/r-logo.png",
                                xref = "x",
                                yref = "y",
                                x = -5.43,
                                y = 0.415,
                                sizex = 0.75,
                                sizey = 0.75,
                                opacity = 0.75,
                                layer = "below"
                                )
                           )
       ) %>%
config(mathjax = 'cdn') # Este comando permite escrever equacoes LaTeX.
