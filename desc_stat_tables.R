# tables for HDI/Happiness Score


HDI2022_stats <- HDI_Happiscore_clean %>%
  summarize(
    Countries = n(),
    min = min(HDI, na.rm = TRUE),
    Q1 = quantile(HDI, probs = 0.25, na.rm = TRUE),
    median = median(HDI, na.rm = TRUE),
    Q3 = quantile(HDI, probs = 0.75, na.rm = TRUE),
    max = max(HDI, na.rm = TRUE),
    mad = mad(HDI, center = median, constant = 1.4826, na.rm = FALSE, low = FALSE, high = FALSE),
    mean = mean(HDI),
    sd = sd(HDI)
  ) 

Happi2022_stats <- HDI_Happiscore_clean %>%
  summarize(
    Countries = n(),
    min = min(Happiness_Score_2022, na.rm = TRUE),
    Q1 = quantile(Happiness_Score_2022, probs = 0.25, na.rm = TRUE),
    median = median(Happiness_Score_2022, na.rm = TRUE),
    Q3 = quantile(Happiness_Score_2022, probs = 0.75, na.rm = TRUE),
    max = max(Happiness_Score_2022, na.rm = TRUE),
    mad = mad(Happiness_Score_2022, center = median, constant = 1.4826, na.rm = FALSE, low = FALSE, high = FALSE),
    mean = mean(Happiness_Score_2022),
    sd = sd(Happiness_Score_2022)
  ) 
