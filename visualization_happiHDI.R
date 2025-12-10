library(tidyverse)
library(ggplot2)

HDI_Happiscore_clean <- left_join(
  x = HDI_clean,
  y = happiClean,
  by = join_by(Country == Country)
)
view(HDI_Happiscore_clean)

ggplot(
  
)