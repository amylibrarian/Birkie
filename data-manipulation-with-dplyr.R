# load 
library("dplyr")

dat <- read.csv("data/gapminder_data.csv")

mean(dat$gdpPercap)
mean(dat[1:5, "gdpPercap"])
mean(dat[dat$continent == "Americas", "gdpPercap"])
#### using dplyr for data subsetting ----
filter(dat, continent == "Americas")
dat_2 <- filter(dat,continent == "Americas", year >2000)
select(dat, continent)
select(dat_2, country, year, gdpPercap)
# %>% is the pipe that works the same as in the unix shell
dat %>%
  filter(continent == "Americas", year > 2000) %>%
  select(country, year, gdpPercap)

sin(log(exp(5)))
5 %>%
  exp()%>%
  log()%>%
  sin()
#### group_by() and summarize() ----
summary_1 <- dat %>%
  group_by(country) %>%
  summarize(avg_life_exp = mean(lifeExp))
