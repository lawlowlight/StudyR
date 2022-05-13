## 데이터입출력
age <- c(28, 17, 35, 46, 23, 67, 30, 50)
age
class(age)
str(age)

min(age)
max(age)

cat('가장 젊은 나이는', min(age), '세 이고\n','가장 많은 나이는',max(age),
    '입니다.')

## 화면에서 데이터 입력받기
install.packages(('svDialogs')) # 패키지 설치
library(svDialogs)
user.input <- dlgInput('Input income')$res
user.input
income <- as.numeric(user.input)
income
tax <- income * 0.05
tax

10
100
1000
10000

cat('세금', tax, '원')
# 1e+4 부터 출력을 10000로 변경하는 옵션
options(scipen = 4)
1000000

cat('세금', tax, '원')

x <- 1
y <- 10
print(x)
cat(x, y)
print(iris[1:6,])
head(iris)
cat(iris[1:6,])

## LAB 체질량 지수 계산 1
library(svDialogs)
height <- dlgInput('Input height(cm)')$res
weight <- dlgInput('Input height(kg)')$res

height <- as.numeric(height)
weight <- as.numeric(weight)

height.res <- height / 100
bmi <- weight / (height.res^2)
bmi

cat('키', height*100, 'cm, 몸무게는 ', weight,'kg 입니다. \n',sep = "")
cat('BMI는', bmi, '입니다.', sep = "")

# 숫자 천단위 콤마
install.packages('formattable')
library('formattable')

num.data <- c(1250000, 22500, 123.456, 123,444, 1789.34)
num.data
comma(num.data)

## 파일 입출력
getwd()

# csv 파일읽기
air <- read.csv('./day3/airquality.csv')
air
head(air)
tail(air)
str(air)

setosa.iris <- subset(iris, Species == 'setosa')
setosa.iris
str(setosa.iris)
# row.names = F # 행번호가 같이 저장안됨
write.csv(setosa.iris, './day3/setosa.iris.csv', row.names =  F)


## 엑셀 읽고 쓰기
library(xlsx)
airquality.xlsx <- read.xlsx('./day3/airquality.xlsx')

## LAB 다이아몬스 정보 제공하기
library(ggplot2)
str(diamonds)

levels(diamonds$cut)
levels(diamonds$color)
levels(diamonds$clarity)
diamonds.new <- subset(diamonds, cut=='Premium' & carat>=2)
str(diamonds.new)
write.csv(diamonds.new, './day3/shiny_diamonds.csv', row.names = F)

## color가 D나 H가 아닌 나머지
diamonds.new.without.DH <- subset(diamonds.new, color != 'D' & color != 'H')
str(diamonds.new.without.DH)

write.csv(diamonds.new.without.DH, './day3/shiny_diamonds_without_DH.csv')
