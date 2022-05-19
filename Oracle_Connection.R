## Oracle연결 1. RODBC
install.packages('RODBC') # ROracle open DataBase Connetity
# Java DB Connectity
## 2. Library 연결
library(RODBC)


## 데이터원본 설정
conn1 = odbcConnect('SCOTT_DSN', uid = 'scott' , pwd = 'tiger',
                    DBMSeconding = 'euc-kr'
                    believeNRows = F)

## 연결확인
summary(conn1)

## 쿼리 실행행
res <- sqlQuery(conn1, 'SELECT * FROM dept')
str(res)


## 접속 해제
odbcClose(conn1)
conn1
