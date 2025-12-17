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

#creating visualization HDI vs HappiScore 2022
ggplot(
  data = HDI_HappiScore_2022, # data set
  mapping = aes(
    x = HDI, # x variable 
    y = Happiness_Score_2022 # y variable
  )
) + geom_point() + labs(
  title = "Human Development Index vs Happiness Score, Year 2022", # title
  x = xlab("Human Development Index"), # x-axis label
  y = ylab("Happiness Score") # y-axis label
) + geom_smooth( # line of best fit
  method = "lm", # linear model 
  se = FALSE
)
