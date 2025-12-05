library(readxl)
library(tidyverse)

HDI_raw <- read_excel("C:/Users/ahaly/OneDrive - The Pennsylvania State University/Desktop/HDR25_Statistical_Annex_HDI_Table.xlsx")

HDI_clean <- HDI_raw %>%
  select(-c(1, 4:15)) %>%
  slice(-c(1:7, 82, 133, 177, 204:278)) %>%
  rename("Country" = `Table 1. Human Development Index and its components`,
         "HDI" = `...3`)