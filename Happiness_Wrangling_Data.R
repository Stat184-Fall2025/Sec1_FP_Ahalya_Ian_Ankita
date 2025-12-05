library(tidyverse)
happiRaw <- read.csv("hapiscore_whr.csv")
str(happiRaw)
View(happiRaw)

happiClean <- happiRaw %>%
  select(-c(geo, X2005:X2022)) %>%
  rename(
    Happiness_Score_2023 = X2023
  )

View(happiClean)