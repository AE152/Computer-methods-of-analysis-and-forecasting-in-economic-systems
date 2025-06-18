library(ggplot2)
library(plotly)
data("economics")
#print(head(economics))

#ggplot(data = economics, aes(x = date, y = unemploy)) +
# geom_line(color = "blue") +
# labs(title = "Динамика уровня безработицы", x = "Год", y = "Количество
#безработных") +
# theme_minimal()

#ggplot(data = economics, aes(x = date, y = unemploy)) +
#  geom_line(color = "blue") +
#  geom_point(color = "red", size = 1) +
#  labs(title = "Динамика уровня безработицы", x = "Год", y = "Количество
#безработных") +
#  theme_minimal()


# set.seed(123)
# inflation <- rnorm(100, mean = 3, sd = 1)
# ggplot(data = data.frame(inflation), aes(x = inflation)) +
#   geom_histogram(binwidth = 0.5, fill = "lightgreen", color = "black") +
#   labs(title = "Распределение уровня инфляции", x = "Инфляция", y =
#          "Частота") +
#   theme_minimal()

# p <- ggplot(data = economics, aes(x = date, y = unemploy)) +
#   geom_line(color = "blue") + labs(title = "Динамика уровня безработицы", x
#                                    = "Год", y = "Количество безработных") + theme_minimal()
# 
# ggplotly(p)

fig <- plot_ly(economics, x = ~date, y = ~psavert, type = "scatter", mode =
                 "lines+markers", name = "Норма сбережений") %>% layout(title = "Динамика
нормы сбережений", xaxis = list(title = "Год"), yaxis = list(title = "Процент"))
fig

