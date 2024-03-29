
library(plotly)

# Header
cabecalho = list(values = c("<b>No</b>",
                            "<b>Nome</b>",
                            "<b>Idade</b><br><b>(anos)</b>"
                             ),
                 align = c("center", "center"),
                 line = list(width = 3, color = 'black'),
                 fill = list(color = c("steelblue", "steelblue")),
                 font = list(family = "Calibri", size = 24, color = "white"),
                 height = 40
                 )

# Cells
No = c("<b>1</b>", "<b>2</b>", "<b>3</b>")
Nome = c("John", "Peter", "Paul")
Idade = c(50, 25, 37)
celulas = list(values = rbind(No, Nome, Idade),
               align = c("center", "center", "center"),
               line = list(color = "black", width = 3),
               fill = list(color = c('steelblue', 'white', 'white')),
               font = list(family = "Calibri", size = 24, color = c('white', "black", 'black')),
               height = 40
               )

# Tabela
margens = list(autoexpand = FALSE, b = 200, t = 200, r = 500, l = 500)
fig <- plot_ly(type = 'table',
               columnwidth = c(15, 15, 15),
               columnorder = c(0, 1, 2),
               header = cabecalho,
               cells = celulas
               ) %>%
layout(margin = margens)
fig
