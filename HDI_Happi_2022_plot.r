# visualization for plot 2022

#loading in packages
library(tidyverse)
library(rvest)

# creating the combined data
HDI_HappiScore_2022 <- full_join(
  x = HDI_2022_clean,
  y = happiClean_2022,
  by = join_by(Country == Country)
)
View(HDI_HappiScore_2022)
str(HDI_HappiScore_2022)