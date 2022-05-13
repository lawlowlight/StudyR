## 매트릭스 계속

z <- matrix(1:20, nrow = 4, ncol = 5, byrow = T)
z

x <- c(20, 25, 30, 35)
x

m1 <- cbind(z, x) # 열기준 결합
m1

y <- 36:41
y

m2 <- rbind(m1, y) # 행기준 결합
m2

#값추출
m2[1,3]
m2[1,6]
m2[1,7]

z[1,6]
z[1,5]
z[4,5]
z
z[,5]

z[2,1:3]
z[1,c(1,2,4)]
z
z[1:2,]
z[1:2,c(2,4)]
z[,c(1,4)]
z

# 매트릭스 이름 붙이기
score <- matrix(c(90,85,69,78,85,96,49,95,90,80,70,60),
                nrow = 4)
score
rownames(score) <- c('John','Tom','Mark','Jane')
score
colnames(score) <- c('English','Math','Science')
score

score['John','Math']
score['Math','Tom'] # Error

score['Tom',]
score[,'Science']
rownames(score)
colnames(score)
colnames(score)[2]

##  LAB. 햄버거 영양 성분 정보 제공하기

ham <- matrix(c(514,533,566,917,853,888,11,13,10), nrow =3, byrow = T)
ham
rownames(ham) <- c('M','L','B')
ham
colnames(ham) <- c('열량(Kcal)','나트륨(na)','포화지방(fat)')
ham # 매트릭스 내용 확인

ham['M','나트륨(na)'] # M사의 나트륨 함량
ham['M',] # M사의 모든 영양 정보
ham[,'열량(Kcal)'] # 모든 브랜드의 칼로리 정보

# 데이터프레임
physicals <- matrix(c(168.4,169.5,172.1,185.2,173.7,175.2,
                      62.4,65.3,59.8,46.5,49.8,58.7), nrow = 6, byrow = T)

physicals
colnames(physicals) <- c('키','몸무게')
physicals

city <- c("Seoul","Tokyo","Washington") # 문자로 이루어진 벡터
city
rank <- c(1,3,2) # 숫자로 이루어진 벡터
rank
city.info <- data.frame(city, rank)# 데이터프레임 생성
city.info

## iris 데이터셋
iris
head(iris)
tail(iris)
str(iris)
z
str(z)
str(ham)
str(x)
str(c('John','Tom','Mark','Jane'))

iris[140,]
iris[,5]
levels(iris[,5])
iris[,c(1,2)]
iris[,c('Sepal.Length','Petal.Length','Species')]
head(iris)

head(iris[,c('Sepal.Length','Petal.Length','Species')])
tail(iris[,c('Sepal.Length','Petal.Length','Species')])

val[1,]

## LAB2 햄버거 영양정보2
Kcal <- c(514, 533, 566)
na <- c(917, 853, 888)
fat <- c(11, 13, 10)
menu <- c('새우','불고기','치킨')
burger <- data.frame(Kcal, na, fat, menu)
burger
rownames(burger) <- c('M','L','B')
burger

burger.sum <- burger[,'na'] * burger[,'fat']
burger.sum

burger['M', 'na']
burger['M',]
burger[,'Kcal']
burger[c('M','B'), 'menu']

##
dim(iris)
dim(x)
dim(ham)
dim(burger)
nrow(iris)
ncol(iris)
colnames(iris)
head(iris)
tail(iris)

head(iris, n = 2)
tail(iris,)
head(x = iris, n = 10)
str(iris)

iris$Sepal.Length
levels(iris$Species)
levels(iris[,'Species'])

# 행별, 열별 합계, 평균 산술계산
colSums(iris[,-5]) # 열별 합계
colMeans(iris[,-5]) # 열별 평균
rowSums(iris[,-5]) # 행별 합계
rowMeans(iris[,-5]) # 행별 평균

colSums(iris[,c(1,2)]) #최소 2개 이상의 열이 선택되어야 함
colMeans(iris[,-5])
head(iris)
rowSums(iris[,-5])
rowMeans(iris[,-5])

z <- matrix(1:20, nrow=4)
z
t(z) #행과 열 방향 변환환
t(burger)
str(burger)
str(t(burger))

iris.subnet.1 <- subset(iris, Species=='setosa')
iris.subnet.1

iris.subnet.2 <- subset(iris, Sepal.Length>5.0 & Sepal.Width>3.0)
iris.subnet.2
str(iris.subnet.2)

iris.subnet.2$Sepal.Length

iris.subnet.2[,c(1,2,5)]

a <- matrix(1:20, 4, 5)
b <- matrix(21:40, 4, 5)
a + b
a * b

a.2 <- a * 2
a.2 

class(iris)
str(iris)
class(z)
str(z)
is.matrix(iris)
is.matrix(z)
is.data.frame(iris)

## LAB 벚나무 판매
class(trees)
trees
str(trees)
girth.mean <- mean(trees$Girth)
girth.mean
candidate <- subset(trees, Girth >= girth.mean & Height > 80 & Volume > 50)
candidate
nrow(candidate)

# 종업원 팁 계산
install.packages('reshape2')
library(reshape2)
tips

is.matrix(tips)
is.array(tips)
is.date.frame(tips)
class(tips)
str(tips)
levels(tips$day)

head(tips)
tail(tips)

table(tips$day)
class(table(tips$day))

dinner <- subset(tips, time=='Dinner')
dinner
lunch <- subset(tips, time=='Lunch')
Lunch
table(dinner$day)
table(lunch$day)

head(dinner)
dinner.data <- dinner[c('total_bill','tip','size')]
lunch.data <- lunch[c('total_bill','tip','size')]
str(dinner.data)
str(lunch.data)
colSums(dinner.data)
colMeans(dinner.data)
colSums(lunch.data)
colMeans(lunch.data)

tips.rate <- tips$tip/tips$total_bill
tips.rate
mean(tips.rate) * 100
