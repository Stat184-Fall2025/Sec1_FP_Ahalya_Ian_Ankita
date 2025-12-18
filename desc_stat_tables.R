# tables for HDI/Happiness Score
library(tidyverse)
library(rvest)
library(kableExtra)

HDI2022_stats <- HDI_HappiScore_2022 %>%
  summarize(
    Countries = n(),
    Minimum = min(HDI, na.rm = TRUE),
    `Quartile 1` = quantile(HDI, probs = 0.25, na.rm = TRUE),
    Median = median(HDI, na.rm = TRUE),
    `Quartile 3` = quantile(HDI, probs = 0.75, na.rm = TRUE),
    Maximum = max(HDI, na.rm = TRUE),
    Mean = mean(HDI, na.rm = TRUE),
    `Standard Deviation` = sd(HDI, na.rm = TRUE),
  ) %>%
  mutate(
    Year = "2022"
  )

Happi2022_stats <- HDI_HappiScore_2022 %>%
  summarize(
    Countries = n(),
    Minimum = min(Happiness_Score_2022, na.rm = TRUE),
    `Quartile 1` = quantile(Happiness_Score_2022, probs = 0.25, na.rm = TRUE),
    Median = median(Happiness_Score_2022, na.rm = TRUE),
    `Quartile 3` = quantile(Happiness_Score_2022, probs = 0.75, na.rm = TRUE),
    Maximum = max(Happiness_Score_2022, na.rm = TRUE),
    Mean = mean(Happiness_Score_2022, na.rm = TRUE),
    `Standard Deviation` = sd(Happiness_Score_2022, na.rm = TRUE)
  ) %>%
  mutate(
    Year = "2022"
  )


HDI2023_stats <- HDI_Happiscore_clean %>%
  summarize(
    Countries = n(),
    Minimum = min(HDI, na.rm = TRUE),
    `Quartile 1` = quantile(HDI, probs = 0.25, na.rm = TRUE),
    Median = median(HDI, na.rm = TRUE),
    `Quartile 3` = quantile(HDI, probs = 0.75, na.rm = TRUE),
    Maximum = max(HDI, na.rm = TRUE),
    Mean = mean(HDI, na.rm = TRUE),
    `Standard Deviation` = sd(HDI, na.rm = TRUE),
  ) %>%
  mutate(
    Year = "2023"
  )

Happi2023_stats <- HDI_Happiscore_clean %>%
  summarize(
    Countries = n(),
    Minimum = min(Happiness_Score_2023, na.rm = TRUE),
    `Quartile 1` = quantile(Happiness_Score_2023, probs = 0.25, na.rm = TRUE),
    Median = median(Happiness_Score_2023, na.rm = TRUE),
    `Quartile 3` = quantile(Happiness_Score_2023, probs = 0.75, na.rm = TRUE),
    Maximum = max(Happiness_Score_2023, na.rm = TRUE),
    Mean = mean(Happiness_Score_2023, na.rm = TRUE),
    `Standard Deviation` = sd(Happiness_Score_2023, na.rm = TRUE)
  ) %>%
  mutate(
    Year = "2023"
  )

HDI_stats <- bind_rows(HDI2022_stats, HDI2023_stats)
Happi_stats <- bind_rows(Happi2022_stats, Happi2023_stats)

HDI_stats %>%
  kable( 
    caption = "Five Number Summary for Global Human Development Index", # title of table
    booktabs = TRUE,
    align = c("l", rep("c",6)),
    format.args = list(big.mark = ',') # adds separators to the number totals
  ) %>% 
  kableExtra::kable_styling(
    bootstrap_options = c("striped","condensed"), 
    font_size = 16, 
    stripe_color = "gray!10" # adds back stripes
  )


Happi_stats %>%
  kable( 
    caption = "Five Number Summary for Global Happiness Score", # title of table
    booktabs = TRUE,
    align = c("l", rep("c",6)),
    format.args = list(big.mark = ',') # adds separators to the number totals
  ) %>% 
  kableExtra::kable_styling(
    bootstrap_options = c("striped","condensed"), 
    font_size = 16, 
    stripe_color = "gray!10" # adds back stripes
  )
