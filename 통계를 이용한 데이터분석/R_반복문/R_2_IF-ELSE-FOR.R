# 작거나 같으면 참
10 <= 10
# 크면 참
10 > 5
# 크거나 같으면 참
10 >= 5

# 변수 선언
n <- 20
# 연산자 뒤 나열한 값들 중 하나와 일치하면 참
n %in% (c(10,20,30))

n <- 10

# R에서는 AND 연산자로 양쪽 모두 참이면 참이다.
n >= 0 & n <= 100

n <- 1000
n >= 0 | n <= 100

!(10==5)

## 벡터와 스칼라 연산


score <- c(10,20)
score + 2  # score 벡터의 모든 데이터에 각각 2를 더하여 반환
score      # score 벡터 자체는 변경되지 않아서 이전 값을 가지고 있음

# 연산 결과를 score 변수에 반영하려면 다음과 같이 score에 연산 결과 저장
score <- score + 2  # score 벡터의 모든 데이터에 각각 2를 더하고,
# 연산 결과를 score에 저장
score               # score가 변경된 것을 확인할 수 있음

## 벡터와 벡터와의 연산

score1 <- c(100,200)
score2 <- c(90,91)

sum_score <- score1 + score2 # 벡터와 벡터의 더하기 연산
sum_score  # 100+90 200+91

diff <- score1 - score2
diff

score1 <- c(100,200,300,400)
score2 <- c(90,91)

sum_score <- score1 + score2  # 벡터와 벡터의 더하기 연산
sum_score # 100 + 90 200 + 91 300+90 400+91

score1 <- c(100,200,300,400, 500)
score2 <- c(90,91)

sum_score <- score1 + score2 # 벡터와 벡터의 더하기 연산
sum_score # 100 + 90 200+91 300+90 400+91


## 행렬과 스칼라와의 연산
m1 <- matrix(c(1,2,3,4,5,6), nrow = 2)
m1
m1 <- m1 * 10  # 행렬과 스칼라 곱하기 연산

m1

# 데이터 핸들링할 때 많이 쓰이는 행렬 
# 행렬과 행렬과의 연산

m1 <- matrix(c(1,2,3,4,5,6,7,8,9), nrow = 3)
m2 <- matrix(c(2,2,2,2,2,2,2,2,2), nrow = 3)
m1
m2
m1 + m2 # 행렬과 행렬 간 더하기(+) 연산


############## 흐름제어문(조건문)

## if문
score <- 76
if(score >= 80) { # 조건이 TRUE이므로 아래 문장들이 실행
  print("조건이 TRUE인 경우만 수행할 문장")
}

score <-86


## if ~ else문
 
if(score >= 91) {  # 이 조건의 결과는 FALSE
  print("A") # 조건이 TRUE일 때 수행할 문장
} else {
  print("B or C or D") # 조건이 FALSE일 때 수행할 문장
}

## if ~ else if문

score <- 86
if(score >= 91) {
  print("A")
} else if(score >= 81) { # score는 86이므로 이 조건이 TRUE
  print("B")
} else if(score >= 71) {
  print("B")
} else if(score >= 61) {
  print("D")
} else {
  print("F")
}

## ifelse() 함수

score <- 85
ifelse(score >= 91, "A", ifelse(score >= 81,"B","C or D"))

### 흐름제어문(반복문)

## for문
# 다음 for문은 첫 수행 시 num에 1이 저장된다. 그 다음 1씩 증가된 값이 저장
# num이 5가 될 때까지 { print(num) }의 문장이 반복 수행

for(num in (1:3)) {
  print(num)
}

# for문 안에 if문이나 다른 제어문을 중첩해서 사용할 수 있다.

for(num in (1:5)) {
  if(num%%2 == 0)
    print(paste(num,"짝수"))
  else
    print(paste(num,"홀수"))
}

### 함수

a <- 10
a

### 함수 정의
a <- function() { # a는 변수가 아닌 함수로 생성
  print("testa")
  print("testa")
}

#함수 생성이 함수의 실행을 의미하지는 않음.
# a()라는 함수가 생성되었을 뿐임.

# 함수 호출
a() 
# a() 함수가 호출되어 a() 함수에 저장된 프로그램 코드가 실행

# 매개변수가 있는 함수 정의와 호출
a <- function(num) { # num이라는 이름의 매개변수가 있는 함수를 생성
  print(num)        # num 변수의 값을 출력하는 코드를 작성
}

# num 매개변수에 20을 넘겨주고, 함수를 호출. 이 때, 20을 매개인자라고 부름
a(20)

# num 매개변수에 10을 넘겨주고, 함수를 호출. 이 때, 10을 매개인자라고 부름
a(10)

a <- function(num1, num2) { # 두 개의 매개변수
  print(paste(num1, '', num2))
}

a(10,20) # 매개변수에 순서대로 매핑

# 매개변수 이름을 직접 써서 데이터(매개인자) 전달
a(num1=10, num2 = 20)
a(num2=20, num1 = 10)

# 리턴데이터가 있는 함수
calculator <- function(num1, op, num2) {
  result <- 0
  if(op == "+") {
    result <- num1 + num2
  } else if(op == "-") {
    result <- num1 - num2
  } else if(op == "*") {
    result <- num1 * num2
  } else if(op == "/") {
    result <- num1 / num2
  }
  return (result)
}

n <- calculator(1,"+",2) # n은 calculator()로부터 반환받은 3을 저장
print(n)

n <- calculator(1,"-",2) # n은 calculator()로부터 반환받은 3을 저장
print(n)

