
##########
#        #
# PACOTE #
#        #
##########

# Carregar pacote
  library(plotly)
  library(reshape)



#########
#       #
# DADOS #
#       #
#########

# Animais
  Animals <- c("<b>Giraffes</b>",
               "<b>Orangutans</b>",
               "<b>Black-and-white</b> </br> </br> <b>snub-nosed</b> </br> <b>monkeys</b>"
               )

# Frequencia
  SF <- c(20, 14, 23)
  LA <- c(12, 18, 29)

# Percentual
  SFp <- prop.table(SF)
  LAp <- prop.table(LA)

# Rotulos
  SFr <- paste("<b>", round(SFp*100, 2), "% </b>", sep = "")
  LAr <- paste("<b>", round(LAp*100, 2), "% </b>", sep = "")

# Dados
  dados = cbind(melt(data.frame(Animals, SFp, LAp), id.vars = "Animals"),
                melt(data.frame(Animals, SFr, LAr), id.vars = "Animals")
                )[,c(1:3,6)]
  colnames(dados)[2:4] = c("Zoo", "Percentual", "Rotulo")
  dados$Zoo = ifelse(dados$Zoo == "SFp", "<b>San Francisco</b>", "<b>Los Angeles</b>")
  dados$Percentual = round(dados$Percentual*100, 1) 

# Base de dados completa
  dados



###########
#         #
# GRAFICO #
#         #
###########

# Plot
  p = ggplot(data = dados, mapping = aes(x = Animals, y = Percentual, fill = Zoo)) + 
      geom_bar(position = "dodge", stat = "identity") +
      coord_flip() +
      geom_text(mapping = aes(label = Rotulo), size = 7, position = position_dodge2(width = 0.9)) +
      ylim(0, 54) +
      labs(title = "\n \n <b>Mamiferos</b>", x = "<b>Animais</b>", y = "<b>Percentual (%)</b>", fill = "<b>Zoologico</b>") +
      theme(plot.title = element_text(color = "black", size = 20, angle = 90, hjust = 0.5, vjust = 0.5, face = "plain"),
            axis.text.x = element_text(color = "black", size = 20, angle = 0, hjust = 0.5, vjust = 0.5, face = "plain"),
            axis.text.y = element_text(color = "black", size = 20, angle = 0, hjust = 0.5, vjust = 0.5, face = "plain"),
            axis.title.x = element_text(color = "black", size = 20, angle = 0, hjust = 0.5, vjust = 0.5, face = "plain"),
            axis.title.y = element_text(color = "black", size = 20, angle = 0, hjust = 0.5, vjust = 0.5, face = "plain"),
            legend.title = element_text(size = 20),
            legend.text = element_text(size = 20),
            legend.key.size = unit(5, 'cm')
            )
  ggplotly(p) %>% layout(margin = list(b = 150, t = 150, l = 450, r = 450))

