################################################################################
# Author: J. Jameson
# SMDM Short Course 2024
#
# Generate tables
################################################################################


# Table 1: Regression models ---------------------------------------------------

model_1 <- lm(rating ~ age + gender, data = data)

model_2 <- lm(rating ~ age + gender + income + limit, data = data)

model_3 <- lm(rating ~ age + gender + income + limit +
                       cards + student, data = data)

# Generate table 1 latex output
stargazer(model_1, model_2, model_3, 
          type = "latex",
          title = "Regression Models",
          dep.var.labels = "Credit Rating",
          dep.var.caption = "Dependent Variable: Credit Rating",
          column.labels = c("Model 1", "Model 2", "Model 3"),
          covariate.labels = c('Age', 'Female', 'Income', 'Credit Limit', 
                               'Number of Cards', 'Student'),
          style = "qje", out = "outputs/tables/table_1.tex")
