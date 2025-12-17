library(tidyverse)
library(ggplot2)

HDI_Happiscore_clean <- left_join(
  x = HDI_clean,
  y = happiClean,
  by = join_by(Country == Country)
)
view(HDI_Happiscore_clean)

ggplot(
  data = HDI_Happiscore_clean,
  mapping = aes(
    x = HDI,
    y = Happiness_Score_2023
  )
) + geom_point() + labs(
  title = "Human Development Index vs Happiness Score, Year 2023",
  y = ylab("Happiness Score"),
  x = xlab("Human Development Index")
) + geom_smooth(
  method = "lm"
)
  