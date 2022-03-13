# R-프로그래밍
# 변수 선언문

# 입력할 때 Alt + - 누르면 <- 생성된다.

# age 변수에 20을 저장한다
age <- 20
age

age <- 30
age

# age 변수에 20을 저장한다
age <- 20
# 데이터 타입을 확인하는 class() 함수
# 괄호 안에 변수 이름을 넣는다.
class(age)

# 숫자 데이터 타입
# 숫자 뒤에 L을 붙이면 정수타입이 된다.
age <- 20L
class(age)

# 문자 데이터 타입
name <- "LJI"
class(name)

# 논리 데이터 타입
is_effective <- T
# True
is_effective
is_effective <- F
# False
is_effective
class(is_effective)

# 펙터 데이터 타입
# 범주형 데이터를 저장하기 위한 데이터 타입
sido <- factor("서울", c("서울", "부산", "제주"))
sido
class(sido)
# 전체 범주를 확인한다
levels(sido)

a <- NULL
jumsu <- c(NA,90,100) # 첫번째 값에 NA 저장

10/0 # Inf 무한대 실수
0/0 # Not a Number

