################################################################################
# Author: J. Jameson
# SMDM Short Course 2024
#
# Generate figures
################################################################################

# Theme set for all plots ------------------------------------------------------
theme_set(theme_classic() + theme(text = element_text(size = 16)))



# Figure 1: Boxplot of credit rating -------------------------------------------

# Notes: This figure shows the distribution of credit ratings by age
# group and reported gender.

fig_1 <- data %>% 
  filter(age < 89) %>%
ggplot(aes(x = age_group, y = rating, fill = gender)) +
  geom_boxplot(position = position_dodge(width = 0.8), scale = "width") +
  labs(x = "Age Group", y = "Credit Rating", fill = 'Reported Gender') +
  theme(legend.position = "top")

ggsave("outputs/figures/fig_1.png", fig_1, width = 10, height = 6, dpi = 300)
