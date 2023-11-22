library (MSR)
library (ggplot2)

# Q1a - graphs
ggplot(data = cadbury, aes(x = Price, y = Sales)) +
  geom_point()

ggplot(data = cadbury, aes(x = Feature, y = Sales)) +
  geom_point()

ggplot(data = cadbury, aes(x = Display, y = Sales)) +
  geom_point()

# Q1c - checking VIFs
vnames <- colnames(cadbury)[3:5]
vif(vnames,cadbury)

# Q1d-h - regression 
clm <- lm(Sales ~ Price + Feature + Display, cadbury)
summary (clm)

# Q1g
714.113 + (-41.542 * 15) + 33.897 + 0

# Q1i
clm_weather <- lm(Sales ~ Price + Feature + Display + Weather, cadbury)
summary (clm_weather)

# Q2
cleanse_lm <- lm(ratings ~ form + noapply + disinfect + bio + price, cleanser)
summary (cleanse_lm)
