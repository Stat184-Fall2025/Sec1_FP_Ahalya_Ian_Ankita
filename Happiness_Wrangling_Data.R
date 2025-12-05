library(tidyverse) #loading in tidyverse
happiRaw <- read.csv("hapiscore_whr.csv") # read in csv file
str(happiRaw) # checking structure of the data 
View(happiRaw) # Viewing the data

# cleaning the data
happiClean <- happiRaw %>%
  select(-c(geo, X2005:X2022)) %>% # removing unneeded columns
  rename(
    Happiness_Score_2023 = X2023 #rename to a more appropriate name
  )

View(happiClean) # view the clean data