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
  data = HDI_HappiScore_2022,
  mapping = aes(
    x = HDI,
    y = Happiness_Score_2022
  )
) + geom_point() + labs(
  title = "Human Development Index vs Happiness Score, Year 2022",
  y = ylab("Happiness Score"),
  x = xlab("Human Development Index")
) + geom_smooth(
  method = "lm",
  se = FALSE
)
