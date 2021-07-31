# Alt + - 누르면 <- 생성된다.
# 변수 선언
age <- 20
# age 는 20이다.
age
age <- 30
# age는 30이다.
age

#숫자 데이터 타입
age <- 20
class(age)

age <- 20L
class(age)

# 문자 데이터 타입
name <- "LJI" #control+enter
class(name)

# 논리 데이터 타입
is_effective <- T
is_effective
is_effective <- F
is_effective
class(is_effective)

# 펙터 데이터 타입
sido <- factor("서울", c("서울", "부산", "제주"))
sido
class(sido)
levels(sido)

a <- NULL
jumsu <- c(NA,90,100) # 첫번째 값에 NA 저장

10/0 # Inf 무한대 실수
0/0 # Not a Number

