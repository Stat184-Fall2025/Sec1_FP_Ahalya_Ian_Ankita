library(tidyverse) #loading in tidyverse
library(ggplot2)

happiRaw <- read.csv("hapiscore_whr.csv") # read in csv file
str(happiRaw) # checking structure of the data 
View(happiRaw) # Viewing the data

# cleaning the data
happiClean <- happiRaw %>%
  select(-c(geo, X2005:X2021)) %>% # removing unneeded columns
  rename(
    Happiness_Score_2023 = X2023, #rename to a more appropriate name
    Country = name,
    Happiness_Score_2022 = X2022
  )

View(happiClean) # view the clean data