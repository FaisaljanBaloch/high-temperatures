library(tidyverse)
library(worldmet)

# Download data
years <- 2015:2024
x <- lapply(years, function(y) {
  importNOAA(code = "727930-24233", year = y)
})

# Save data
saveRDS(x, "data/sea_wather.rds")