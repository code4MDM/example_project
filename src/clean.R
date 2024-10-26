################################################################################
# Author: J. Jameson
# SMDM Short Course 2024
################################################################################

# DESCRIPTION: This script cleans the data for analysis ------------------------

names(data) <- tolower(names(data))

data <- data %>%
  mutate(age_group = cut(
    age, breaks = seq(20, 90, by = 10), right = FALSE, 
    labels = paste(seq(20, 80, by = 10), "-", seq(29, 89, by = 10), sep = ""))
    )

# any other cleaning steps would go here...