# visualization for plot 2022

#loading in packages
library(tidyverse)
library(rvest)

# removing unneeded columns
HappiScore2022 <- happiClean %>%
  select(-c(Happiness_Score_2023))

View(HDI_2022_clean)

# creating the combined data
HDI_HappiScore_clean_2022 <- left_join(
  x = HDI_2022_clean,
  y = HappiScore2022,
  by = join_by(Country == Country)
)
View(HDI_HappiScore_clean_2022)