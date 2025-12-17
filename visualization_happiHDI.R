library(tidyverse)
library(ggplot2)

# creates full data set
HDI_Happiscore_clean <- left_join(
  x = HDI_clean,
  y = happiClean,
  by = join_by(Country == Country)
)
view(HDI_Happiscore_clean)

# HDI vs Happiness Score (2023)
ggplot(
  data = HDI_Happiscore_clean,
  mapping = aes(
    x = HDI, # x variable
    y = Happiness_Score_2023 # y variable
  )
) + geom_point() + labs(
  title = "Human Development Index vs Happiness Score, Year 2023", # title
  y = ylab("Happiness Score"), # x axis 
  x = xlab("Human Development Index") # y axis
) + geom_smooth(
  method = "lm", # creates best fit line
  se = FALSE # removes shaded part
)


  