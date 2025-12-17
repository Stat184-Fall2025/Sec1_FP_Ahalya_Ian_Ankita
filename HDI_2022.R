library(tidyverse)
library(rvest)

HDI_2022_raw <- read_html("https://countryeconomy.com/hdi") %>%
  html_elements(css = "table") %>%
  html_table()
View(HDI_2022)
str(HDI_2022)

HDI_2022 <- (HDI_2022_raw[[1]])

HDI_2022_clean <- HDI_2022 %>%
  select(-c(,3:5)) %>%
  separate_wider_delim(
    cols = Countries,
    delim = " [",
    names = c("Country", "junk")
    ) %>%
  select(-c(,2)) %>%
  rename()