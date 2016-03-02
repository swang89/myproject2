z <- gapminder[gapminder$country=="Zimbabwe",]
plot(z$year,z$lifeExp,xlab="year",ylab="life expectancy", ylim=c(0,80), type="l", main="Zimbabwe")

us <- gapminder[gapminder$country=="United States",]
plot(us$year,us$lifeExp,xlab="year",ylab="life expectancy", ylim=c(0,80), type="l", main="United States")

mx <- gapminder[gapminder$country=="Mexico",]
plot(mx$year,mx$lifeExp,xlab="year",ylab="life expectancy", ylim=c(0,80), type="l", main="Mexico")


plot_life_expectancy <- function (country,color="black"){
  country_data <- gapminder[gapminder$country==country,]
plot(country_data$year,country_data$lifeExp,xlab="year",ylab="life expectancy", ylim=c(0,80), 
     type="l", main=country, col=color)

ave_life_expectancy <- mean(country_data$lifeExp)
return(ave_life_expectancy)


plot_life_expectancy(country="Mexico")
plot_life_expectancy(country="United States")
plot_life_expectancy(country="Zimbabwe", color="red")
