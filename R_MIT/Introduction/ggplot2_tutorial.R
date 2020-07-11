#### ggplot2 tutorial ###
library(ggplot2)
install.packages("ggplot2")

#Dataset = CARS

cars ## BdD de R

myData <- cars

# Plot

ggplot(myData, aes(x=speed, y=dist)) ##myData$speed
ggplot(myData, aes(x=speed, y=dist))+geom_point() #Asignamos como se visualizará
g <- ggplot(myData, aes(x=speed, y=dist))+geom_point()+theme_minimal()
g
gg <- g+coord_cartesian(xlim = c(10,15), ylim = c(25, 50)) #Delimitamos la cuadrícula
gg 

## Histogram ##

#Dataset = mtcars

mtcars #bdD de R

myData1 <- mtcars
#plot
ggplot(myData1, aes(x=wt))+geom_histogram()
ggplot(myData1, aes(x=wt))+geom_histogram(binwidth = 0.5) #modificamos el ancho de las barras
ggplot(myData1, aes(x=wt))+
  geom_histogram(binwidth = 0.5, color="black", fill="white")
h <- ggplot(myData1, aes(x=wt))+
  geom_histogram(binwidth = 0.5, color="black", fill="white")
h+ geom_vline(aes(xintercept=mean(wt)), color="red", linetype="dashed", size=1) # Con xintercept marcamos una linea que nos marque el valor que queramos

ggplot(myData1, aes(x=wt))+
  geom_histogram(binwidth = 0.5, aes(y=..density..),
                 alpha=0.3, color="black", fill="white")+      #Ponemos un gráfico de área para destacar otra cuestion
  geom_density(alpha=0.2, fill="red")
