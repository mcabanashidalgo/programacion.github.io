data <- read.csv("../Introduccion y estadisticos resumenes/auto-mpg.csv", 
                 header = TRUE,
                 stringsAsFactors = F)

data$cylinders <- factor(data$cylinders, 
                         levels = c(3,4,5,6,8),
                         labels = c("3cil", "4cil", "5cil", "6cil", "8cil"))


summary(data)  # Resumen de datos
str(data)  #  Variables tipo, obervaciones

dim(data)

summary(data$cylinders)  # resumen de una sola variable (la media)
summary(data$mpg)

# Resumen por grupo
aggregate(mpg ~cylinders, data= data, FUN= mean)

# Usando dplyr or pipes
data %>% 
  group_by(cylinders) %>% 
  summarise(media_grupo = mean(mpg))

install.packages(c("modeest", "raster", "moments"))
library(modeest) #moda
library(raster) #quantiles, cv
library(moments) # asimetría, curtosis


X = data$mpg

#### Medidas de Centralización
mean(X) #sum(X)/length(X)
median(X)
mfv(X)
quantile(X)

#### Medidas de Dispersión
var(X)
sd(X)
cv(X) #sd(X)/mean(X)

#### Medidas de asimetría
skewness(X)
moments::kurtosis(X)

par(mfrow = c(1,1))
hist(X)

### scatter plot (relacion ente variables)

plot(data$weight, data$mpg, col= 'green')
cor(data$weight, data$mpg)

# Modelo de regresion

modelo = lm(mpg~weight, data = data)
abline(modelo)

summary(modelo)
names(summary(modelo))

qqnorm(modelo$residuals)
qqline(modelo$residuals)

# Visualizar relacion entre variable explicativa y residuos
ggplot(data = data, aes(weight, modelo$residuals)) +
  geom_point() + geom_smooth(color = "firebrick") + geom_hline(yintercept = 0) +
  theme_bw()

# Tabla de frencuencia

table(data$cylinders)
prop.table(table(data$cylinders))
