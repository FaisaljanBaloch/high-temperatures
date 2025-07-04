library(tidyverse)
library(worldmet)

# Download data
years <- 2010:2021
x <- importNOAA(code = "725090-14739", year = years)

# Save data
saveRDS(x, "data/sea_wather.rds")
