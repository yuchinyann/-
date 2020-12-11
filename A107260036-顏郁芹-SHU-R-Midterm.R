# 2020/12/11(五), 109學年第一學期 資料科學應用 R期中考
#學號:A107260036        姓名:顏郁芹
#ex1
stud <- function(x, y, ){
    ans <- (
    ans
#ex2(a)
library(readxl)
x <- read_excel("Score-109.xlsx", skip=1)
head(x, 5)
tail(x, 5)
#ex2(b)
x[is.na(x)] <- 0
names(x) <- c("Id", "Calculus", "English")
x
Id <- (x$Id)
Id <- Id[x$Calculus < 60 & x$English < 60]
Id
Calculus <- (x$Calculus)
Calculus <- Calculus[x$Calculus < 60 & x$English < 60]
Calculus
English <- (x$English)
English <- English[x$Calculus < 60 & x$English < 60]
English 
data.frame(Id, Calculus, English)
#ex2(c)
my.cor <- function
#ex2(d)

#ex3(a)

my.dnorm <- function(x, μ=1, σ=1,kernel){
    
}
#ex3(b)

