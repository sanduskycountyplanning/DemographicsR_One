#INSTALL AND LOAD THE PACKAGES

install.packages(c("choroplethr", "choroplethrMaps"))
library(choroplethr)

data(df_pop_state)
head(df_pop_state)

state_choropleth(df_pop_state)

data(df_state_demographics)

colnames(df_state_demographics)

df_state_demographics$value = df_state_demographics$per_capita_income

state_choropleth(df_state_demographics)