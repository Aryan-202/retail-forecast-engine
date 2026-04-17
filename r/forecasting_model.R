library(prophet)

df <- read_csv("data/processed/monthly_sales.csv")

prophet_df <- df %>%
  rename(ds = year_month, y = total_sales)

model <- prophet(prophet_df)

future <- make_future_dataframe(model, periods = 6, freq = "month")
forecast <- predict(model, future)

write_csv(forecast, "outputs/forecasts/forecast.csv")