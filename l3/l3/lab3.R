data("mtcars")
library(lmtest)
# print(head(mtcars))
# str(mtcars)

# model_simple <- lm(mpg ~ wt, data = mtcars)
# print(summary(model_simple))

model_multiple <- lm(mpg ~ wt + hp, data = mtcars)
# print(summary(model_multiple))
# plot(model_multiple, which = 2)
# print(bptest(model_multiple)
# print(cor(mtcars$wt, mtcars$hp))
# print(summary(model_multiple))
# print(anova(model_multiple))
new_data <- data.frame(wt = c(3.5, 4.0), hp = c(150, 200))
predictions <- predict(model_multiple, newdata = new_data, interval =
                         "confidence")
# print(predictions)

library(ggplot2)
ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  geom_line(aes(y = predict(model_multiple)), color = "blue") +
  labs(title = "Фактические и прогнозируемые значения", x = "Вес", y =
         "Расход топлива") +
  theme_minimal()
