data("AirPassengers")
library(forecast)
library(tseries)
library(plotly)
library(ggplot2)

# print(class(AirPassengers) )
# plot(AirPassengers)

# my_ts <- ts(AirPassengers, start = c(2000, 1), frequency = 12) 
# print(my_ts)

# decomposed <- decompose(AirPassengers)
# plot(decomposed)

# stl_decomposed <- stl(AirPassengers, s.window = "periodic")
# plot(stl_decomposed)

# smoothed_ma <- ma(AirPassengers, order = 12) 
# plot(AirPassengers, main = "Сглаживание скользящим средним")
# lines(smoothed_ma, col = "red")

# smoothed_ets <- HoltWinters(AirPassengers)
# plot(smoothed_ets)

# acf(AirPassengers)

# print(adf.test(AirPassengers))

# diff_ts <- diff(AirPassengers)
# plot(diff_ts)
# print(adf.test(diff_ts))

# par(mfrow = c(3, 1)) 
# plot(decomposed$trend, main = "Тренд", ylab = "Значение")
# plot(decomposed$seasonal, main = "Сезонность", ylab = "Значение")
# plot(decomposed$random, main = "Остатки", ylab = "Значение")

fig <- plot_ly(x = time(AirPassengers), y = as.numeric(AirPassengers), type =
                 "scatter", mode = "lines", name = "Исходный ряд") %>%
  add_trace(y = decomposed$trend, name = "Тренд", mode = "lines") %>%
  layout(title = "Декомпозиция временного ряда", xaxis = list(title = "Время"),
         yaxis = list(title = "Значение"))
fig

