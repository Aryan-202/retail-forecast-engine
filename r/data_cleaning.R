library(tidyverse)
library(lubridate)

df <- read_csv("data/raw/train.csv")

# Clean column names
df <- janitor::clean_names(df)

# Convert date
df$order_date <- dmy(df$order_date)

# Remove NA
df <- df %>% drop_na(sales)

# Remove duplicates
df <- distinct(df)

# Save cleaned data
write_csv(df, "data/processed/cleaned_data.csv")
