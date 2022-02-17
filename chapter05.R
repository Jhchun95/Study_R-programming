### 데이터의 대략적인 특징 파악

# 첫번째 행부터 6번째 행까지 추출
# 값이 들어있는 데이터의 앞부분을 확인하고 싶을 때 사용.
# 디폴트로 처음 6개의 관측값을 출력
head(Orange) 

# 더 많은 값을 출력하고 싶다면 head(Orange, n=10) 같이 선언한다.

# 첫번째 행부터 3번째 행까지 추출
head(Orange,3) 

# 마지막 행부터 6개의 행까지 추출
# 마지막 값을 관찰할 때는 head가 아닌 tail을 쓴다.
tail(Orange) 
# 마지막 행부터 3개의 행까지 추출
tail(Orange,10)

# 데이터의 구조를 파악하기 위해 선언
str(Orange) 
summary (Orange)


### 외부 파일 읽기
## CSV 파일 불러오기, 경로를 올바르게 적지 않으면 에러 
nhis <- read.csv("C:/data/NHIS_OPEN_GJ_EUC-KR.csv")
head(nhis)

nhis <- read.csv("C:/data/NHIS_OPEN_GJ_EUC-KR.csv", fileEncoding="EUC-KR")
nhis <- read.csv("C:/data/NHIS_OPEN_GJ_EUC-KR.csv", fileEncoding = "UTF-8")

sample <- read.csv("c:/data/sample.csv", header = F,  
                    fileEncoding="EUC-KR", stringsAsFactor = TRUE)
str(sample)

## 엑셀 파일 불러오기
install.packages('openxlsx') #openxlsx 패키지 설치
library(openxlsx)

nhis_sheet1 = read.xlsx('c:/data/NHIS_OPEN_GJ_EUC-KR.xlsx')
# 디폴트로 엑셀 파일의 첫번째 sheet를 읽음

nhis_sheet2 = read.xlsx('c:/data/NHIS_OPEN_GJ_EUC-KR.xlsx', sheet=2)
# 엑셀 파일의 두번째 sheet를 읽음.

## 빅데이터 파일 불러오기
install.packages('data.table') # data.table 패키지 설치
library(data.table)

nhis_bigdata = fread("c:/data/NHIS_OPEN_GJ_BIGDATA_UTF-8.csv", encoding = "UTF-8" )
str(nhis_bigdata)


### 데이터 추출
## 행 인덱스를 이용하여 행 제한

# 1행만 추출
Orange[1,]          
# 1행부터 5행까지 추출
Orange[1:5, ]
# 6행부터 10행까지 추출
Orange[6,10, ]
# 1행과 5행 추출
Orange[c(1,5), ]    
# 1~29행 제외하고 모든 행 추출
Orange[-c(1:29), ]  

## 데이터를 비교하여 행 제한
# age컬럼의 데이터가 118인 행만 추출
Orange[Orange$age == 118, ] 
Orange[Orange$age %in% c(118,484), ]
# age 컬럼의 데이터가 118 또는 484인 행만 추출

Orange[Orange$age >= 1372, ]
# age 컬럼의 데이터가 1372와 같거나 큰 행만 추출

## 열이름을 이용하여 열 제한
# Orange의 circumference 열만 추출. 행은 모든 행 추출
Orange[ , "circumference"]


# Orange의 Tree와 circumference 열만 추출. 행은 1행만 추출
Orange[1, c("Tree", "circumference")]

# Orange 데이터프레임의 첫번째 열만 추출
Orange[ , 1]      
# Orange 데이터프레임의 1열과 3열만 추출
Orange[ , c(1,3)] 
# Orange 데이터프레임의 첫번째 열부터 3번째 열만 추출
Orange[ , c(1:3)] 
# Orange 데이터프레임의 1열과 3열만 제외하고 추출
Orange[ , -c(1:3)]

## 행과 열제한

Orange[1:5, "circumference"]

# Tree열이 3또는 2인 행의 Tree열과 circumference 열 추출
Orange[Orange$Tree %in% c(3,2), c("Tree", "circumference")]

## 정렬

OrangeT1 <- Orange[Orange$circumference < 50, ]
OrangeT1[order(OrangeT1$circumference), ]

# 내림차순 정렬은 order() 안에 마이너스(-) 기호를 사용하면 됨
OrangeT1[ order(-OrangeT1$circumference), ]

## 그룹별 집계
# Tree 별 circumference 평균
aggregate(circumference~Tree, Orange, mean)


### 데이터 구조 변경

## 데이터 준비
stu1 <- data.frame(no=c(1,2,3), midterm = c(100,90,80))
stu2 <- data.frame(no=c(1,2,3), finalterm = c(100,90,80))
stu3 <- data.frame(no=c(1,4,5), quiz = c(99,88,77))
stu4 <- data.frame(no=c(4,5,6), midterm = c(99,88,77))

## 데이터 병합
stu1
stu2
# 프레임 결합
merge(stu1, stu2)
stu3
# 프레임 결합
merge(stu1,stu3)
merge(stu1,stu3, all = TRUE)
stu4
stu1
# 프레임 
rbind(stu1,stu4)
stu2
cbind(stu1,stu2)
cbind(stu1,stu3)

