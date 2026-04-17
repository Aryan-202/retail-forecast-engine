df <- read_csv("data/processed/cleaned_data.csv")

monthly_sales <- df %>%
  mutate(year_month = floor_date(order_date, "month")) %>%
  group_by(year_month) %>%
  summarise(total_sales = sum(sales))

write_csv(monthly_sales, "data/processed/monthly_sales.csv")