install.packages("haven")
library(haven)

titanic <- read.csv("C:/Users/Magha/OneDrive/Desktop/titanic.csv")

View(titanic)

hist(titanic$Age)



library(lattice)
xyplot(Pclass ~ Age | factor(Survived), data=titanic)

install.packages("ggplot2")
library(ggplot2)

ggplot(titanic, aes(x = Age)) + theme_bw() +
  facet_wrap(~ Pclass) + geom_bar() + labs(y = "Passenger Count",
                                           title = "Age")


install.packages("leaflet")
library(leaflet)


EF <- leaflet() %>%
  addTiles() %>%  
  addMarkers(lng=2.294694, lat=48.858093, popup="Eiffel Tower")
EF


GGB <-leaflet() %>%
  addTiles() %>%  
  addMarkers(lng=-122.4783, lat=
              37.8199, popup="Golden Gate Bridge")
GGB
