library(openalexR)
library(readxl)
library(jsonlite)
library(plotly)
num_var <- 42
char_var <- "Экономика"
logical_var <- TRUE
print(paste("num_var - ", class(num_var)))
print(paste("char_var - ",class(char_var)))
print(paste("logical_var - ",class(logical_var)))

print("------")

vec <- c(1, 2, 3, 4, 5)
mat <- matrix(c(1, 2, 3, 4), nrow = 2, ncol = 2)
lst <- list(name = "Анализ", year = 2023, values = c(10, 20, 30))
df <- data.frame(
  Year = c(2020, 2021, 2022),
  GDP = c(1.5, 2.3, 1.8),
  Inflation = c(3.2, 4.1, 3.9)
)
print("Вектор:")
print(vec)
print("Матрица:")
print(mat)
print("Список:")
print(lst)
print("Фрейм данных:")
print(df)

print("------")

print("Измененный фрейм:")
df$Unemployment <- c(5.0, 4.8, 5.2)
print(head(df))

print("------")

data <- read.csv("inflation-gdp.csv")
str(data)
print(summary(data))

print("------")

excel_data <- read_excel("inflation-consumer-prices-annual.xlsx")
print(excel_data)

print("------")

url <- "https://api.openexchangerates.org/latest.json?app_id=52e5c90ac79f4281abcac9456bf246ff"
currency_data <- fromJSON(url)
print(currency_data)

print("------")

mean_value <- mean(data$Inflation, na.rm = TRUE)
print(mean_value)

max_value <- max(data$Inflation, na.rm = TRUE)
min_value <- min(data$Inflation, na.rm = TRUE)
print(max_value)
print(min_value)

print("------")

filtered_data <- subset(df, Unemployment > 5)
print(filtered_data)

print("------")

df$GDP_Percent <- df$GDP*100
print(df)

print("------")

plot(df$Year, df$GDP, type = "b", col = "blue",
     main = "Динамика ВВП", xlab = "Год", ylab = "ВВП") 

hist(df$Inflation, col = "lightgreen",
     main = "Распределение инфляции", xlab = "Инфляция")

print("------")

fig <- plot_ly(df, x = ~Year, y = ~GDP, type = "scatter", mode = "lines+markers")
print(fig)
