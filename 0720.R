A_salary <- c(25,28,50,60,30,35,40,70,40,70,40,100,30,30) # 백만 원 단위
B_salary <- c(20,40,25,25,35,25,20,10,55,65,100,100,150,300)

# 백분율
mean(A_salary)
mean(B_salary)
# 결측값(NA)이 있는 경우 결측값을 제거하고 평균을 구할 때는 na.rm = T 인자를 사용
# 결측값 : 값이 기록되지 않았거나 관측되지 않은 경우, 데이터에 저장되는 값
# 함수를 사용할 때 na.rm=T 속성을 지정하면 결측치를 제외하고 함수를 실행
mean(A_salary, na.rm = T)

median(A_salary)
median(B_salary)
# 결측값(NA)이 있는 경우 결측값을 제거하고 평균을 구할 때는 na.rm = T 인자를 사용
median(A_salary, na.rm = T)

mean(A_salary, trim = 0.1)
mean(B_salary, trim = 0.1)

# 범위
range(A_salary)
range(B_salary)

# 최소값, 최대값
min(A_salary)
max(A_salary)
min(B_salary)
max(B_salary)

# 분산
var(A_salary)
var(B_salary)

# 표준편차
sd(A_salary)
sd(B_salary)

