# importing libraries
library(dplyr)

# opening and loading data set
fire_data <- read.csv("fire_area_datasets/NFDB_point_20220901.csv")
View(fire_data)

# cleaning
fire_data_clean <- fire_data %>% filter(SRC_AGENCY == "BC") %>% select(FIRE_ID, LATITUDE, LONGITUDE, YEAR, MONTH, DAY, SIZE_HA)
View(fire_data_clean)

# save file
write.csv(fire_data_clean, file =  "BC_Fire_data.csv")
