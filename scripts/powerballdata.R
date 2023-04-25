# Script to read, tidy, and save Powerball numbers data
# Authors: 
# Created: 2023-04-24
# Updated: xxxx-xx-xx

# --------------------------------------------------
# packages

library(tidyverse)


# -------------------------------------------------------
# read Powerball data from the Excel file in data_raw

# x-----INSTRUCTIONS FOR THIS SECTION-----x
# Delete the instructions when you are done
# Read the data from the Excel file found in
# the tidy_raw folder. Unlike RMarkdown, do 
# not use ../ before the folder name in the 
# file path, just use "data_raw/" before the
# name of the file you are reading in.
# x---------------------------------------x

powerball <- PUT CODE TO READ THE DATA HERE %>%
  rename(
    drawdate = `Draw Date`,
    numbers = `Winning Numbers`,
    multiplier = Multiplier
  )


# -------------------------------------------------------
# Format, tidy, and reshape the dataset

# x-----INSTRUCTIONS FOR THIS SECTION-----x
# Delete the instructions when you are done
# Pivot the dataset so that all of the ball
# values (white and the powerball) are in a
# single column.
# x---------------------------------------x

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
  PUT CODE TO PIVOT THE DATASET HERE
  
# -------------------------------------------------------
# write tidied dataset to data_tidy folder

# x-----INSTRUCTIONS FOR THIS SECTION-----x
# Delete the instructions when you are done
# Write the pivoted data into an Excel file
# in the tidy_data folder. Unlike markdown,
# do not use ../ before the folder name in
# the file path. Just use "data_tidy/".
# x---------------------------------------x

