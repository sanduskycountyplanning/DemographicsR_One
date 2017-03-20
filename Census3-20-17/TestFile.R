library(tigris)
library(acs)
library(stringr)

api.key.install(key = "90070cf4db43c9d489a7c9716badcd696d16254b")

geo <- geo.make(state="OH", county = "Sandusky", county.subdivision = "*")

income <- acs.fetch(endyear = 2015, span = 5, geography = geo, table.number = "B19001", col.names = "pretty")

names(attributes(income))

attr(income, "acs.colnames")