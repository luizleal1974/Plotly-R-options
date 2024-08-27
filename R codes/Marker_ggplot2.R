library(plotly)

# Dados
Fuel = c("Gasoline", "Gasoline", "Gasoline", "Kerosene", "Kerosene", "Kerosene", "Diesel", "Diesel", "Diesel", "Biodiesel", "Biodiesel", "Biodiesel", "Biodiesel", "Solar (HSD)", "Solar (HSD)", "Solar (HSD)", "Solar (HSD)")
Km = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17)
Gallon = c(7, 9, 8, 1, 3, 4, 13, 11, 15, 20, 22, 23, 21, 6, 9, 7, 8)
dados = data.frame(Fuel, Km, Gallon)

# Grafico
grupo = unique(dados$Fuel)
n = length(grupo)
p <- ggplot(data = dados, mapping = aes(x = Km, y = Gallon))
for(i in 1:n){
 subset_data <- subset(dados, Fuel == grupo[i])
 p <- p + geom_point(data = subset_data,
                     mapping = aes(color = Fuel),
                     size = 5,
                     shape = (14 + i)
                     ) +
          labs(title = "Pacote ggplot2") +
          theme(plot.title = element_text(hjust = 0.5))
}
ggplotly(p)