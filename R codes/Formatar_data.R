library(openxlsx)
library(plotly)

# Dados
arquivo = tempfile(fileext = ".xlsx")
path = "https://github.com/luizleal1974/Plotly-R-options/raw/main/R%20codes/Formatar_data.xlsx"
download.file(path, destfile = arquivo, mode = 'wb')
dados = read.xlsx(arquivo, sheet = 1)
dados$Data = openxlsx::convertToDate(dados$Data)

# Scatter plot
p = ggplot(data = dados, mapping = aes(x = Data, y = Valores)) +
geom_point(size = 1.5, pch = 20, col = 'black') +
geom_smooth(formula = 'y~x', method = 'lm', linewidth = 0.5, col = 'red', se = FALSE) +
scale_x_date(date_labels = "%d/%b/%Y", breaks = dados$Data) +
theme(axis.text.x  = element_text(color = "black", size = 18, angle = 45, hjust = 0.5, vjust = 0.5, face = "plain"),
      axis.text.y  = element_text(color = "black", size = 18, angle = 0 , hjust = 0.5, vjust = 0.5, face = "plain"),
      axis.title.x = element_text(color = "black", size = 20, angle = 0 , hjust = 0.5, vjust = 0.5, face = "plain"),
      axis.title.y = element_text(color = "black", size = 20, angle = 0 , hjust = 0.5, vjust = 0.5, face = "plain")
      )
ggplotly(p) %>% layout(margin = list(b = 50, t = 50, l = 50, r = 10), hoverlabel = list(font = list(family = "Calibri", size = 30, color = 'white')))
