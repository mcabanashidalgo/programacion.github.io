##command examples
2+2
rep(1,100)


##create an objetc
my_object <- seq(from=0, to=50, by=2)

## view the object
my_object

##plot the object
plot(my_object)

##working directory
getwd()

#excel spreadsheets
install.packages("readxl")
library(readxl)
my_excel.data <- read_excel("Documents/14_310x_Intro_to_R/my_excel.data.xlsx")

##csv files
csv <- read.csv("Documents/14_310x_Intro_to_R/my_csv.csv", sep = ";")

## como cargar un .dta files (Stata)
install.packages("foreign")
library(foreign)

my_DTAdata <- read.dta("archivo .dta")

##sav files (SPSS)
install.packages("haven")
library(haven)

my_SPSSdata <- read_sav("Desktop/DADES/CEO_1a_2020/Microdades anonimitzades -962.sav")


##Punctuation
rep(1. 100)
rep (1, 100)

my_object[1]  ## Para ver el número que se encuentra en esa posición
my_object[2]
my_object[3]

## Using help files
?sample
sample(c(0,1), 100, replace = TRUE)

