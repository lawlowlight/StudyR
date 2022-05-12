
total = 50
total

d <- c(1, 2, 3, 4, 5, 6, 7, 8)
d
d[1]
d[1:3]
d[c(1,3,7)]
d[seq(1,5,2)]
d[-2] # 파이썬과 상이, -는 인덱스를 뻬고 출력
d[-seq(1,5,2)]

e <- 1:10
e
e <- 10:1
e
f <- seq(10, 1, -2)
f


## 1월에서 4월까지 1분기 매출액 계산
sales <- c(640,720,680,540)
names(sales) <- c('M1','M2','M3','M4')
names(sales)
sales
sales[1] # 인덱스 1번 매출액 = M1
sales['M2'] # M2 2월달 매출액
sales['m2'] # 대소문자 구분
sales[c('M1','M4')] # 1,4월 매출액 출력

# 벡터의 원소값 변경
v1 <- c(1,5,7,8,9)
v1
v1[2] <- 4
v1
sales['M2'] <- 880
sales

v1[c(1,5)] <- c(100,200)
v1
v1 <- c(100, 200, 300, 400, 500)
v1


## LAB 만기적금액 계산
customer <- c('kim','lee','park','choi','seo')
deposit <- c(5000000,4500000,4000000,550000,6000000)
rate <- c(3,5,3.0,4,5,4.5)
period <- c(2,2,5,7,4)

deposit
rate

#산술연산으로 간단하게 결과내기
result = deposit * (1 + rate/100)^period

