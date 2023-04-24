# Script to read, tidy, and save Powerball numbers data
# Authors: 
# Created: 2023-04-24
# Updated: xxxx-xx-xx

# --------------------------------------------------
# packages

library(tidyverse)


# --------------------------------------------------
# read the Powerball data from Excel

powerball <- PUT CODE TO READ THE DATA HERE %>%
  rename(
    drawdate = `Draw Date`,
    numbers = `Winning Numbers`,
    multiplier = Multiplier
  )


# --------------------------------------------------
# Format, tidy, and reshape the dataset

powerball_tidy <- powerball %>%
  separate_wider_delim(
    numbers,
    delim = " ",
    names = c("w1", "w2", "w3", "w4", "w5", "powerball")
  ) %>%
  mutate(
    w1 = as.numeric(w1),
    w2 = as.numeric(w2),
    w3 = as.numeric(w3),
    w4 = as.numeric(w4),
    w5 = as.numeric(w5),
    powerball = as.numeric(powerball)
  ) %>% 
  PUT ADDITIONAL CODE TO FORMAT THE DATA HERE
  

# --------------------------------------------------
# save the tidied dataset to data_tidy



