#2020/11/20(五), 109學年第一學期 資料科學應用 R小考(1)
#學號:A107260036 姓名:顏郁芹
#ex.1(a)    
x <- read.csv("Calculus-score-A.csv",skip=2)
names(x) <- c("座號", "學號", "姓名", "性別", "quiz(1)", "quiz(2)", "quiz(3)", "quiz(4)", "TA", "MidtermExam", "FinalExam" ,"Attendance")
head(x, 5)
tail(x, 5)
library(readxl)
y <- read_excel("Calculus-score-B.xls", skip=2)
names(y) <- c("座號", "學號", "姓名", "性別", "quiz(1)", "quiz(2)", "quiz(3)", "quiz(4)", "TA", "MidtermExam", "FinalExam" ,"Attendance")
head(y, 5)
tail(y, 5)
#ex.1(b) 
options("max.print" = 10000)
x$"class" <- "A" 
y$"class" <- "B"
score <- rbind(x, y)
score[38:43,]
#ex.1(c) 
score[is.na(score)] <- 0
score$"學期成績" <- (score$"quiz(1)"*0.07 + score$"quiz(2)"*0.07 + score$"quiz(3)"*0.08 + score$"quiz(4)"*0.08 + score$"TA"*0.15 + score$"MidtermExam"*0.25 + score$"FinalExam"*0.30) + score$"Attendance"
score$"學期成績" <- ifelse(score$"學期成績" >= 100, 100, score$"學期成績" )
score$"學期成績" 
#ex.1(d) 
subset(score, score$"學期成績" >= 55 & score$"學期成績"<60) 
#ex.1(e) 
mean(score$"學期成績"[1:40])
mean(score$"學期成績"[41:95])
bscore <- which(score[,4] == "男")
mean(bscore)
gscore <- which(score[,4] == "女")
mean(gscore)
#ex.1(f) 
q <- subset(score, 60 >score$"學期成績" & score[,13] =="A")
length(q)/40
W <- subset(score, 60 >score$"學期成績" & score[,13] =="B")
length(W)/55


#ex.2(a) 
set.seed(123456)
Letters.code <- sample(LETTERS[1:5], 20, replace=T)
Numbers.code <- ifelse(Letters.code%in%c("A","E"),1,ifelse(Letters.code =="C",2,3))
Numbers.code
#ex.2(b) 
data <- data.frame(Letters.code, Numbers.code)
data




