# 복습

# no, age, gender 벡터들을 각 열로 포함하는 데이터 프레임 생성
# 벡터의길이가 같아야한다.
no <- c(10,20,30,40,50)
age <- c(18,15,13,12,10)
gender <- c("M","M","M","F","M")

students <- data.frame(no,age,gender)
students

# 응용
t_no <-  c(1,2,3,4,5)
sum_no <- no + t_no
sum_no

students <- data.frame(sum_no,age,gender)
students


# if for 복습
score <- 90
ifelse(score >= 91, "A", "F")

# 엑셀과 비슷한 형식
ifelse(score >= 91, "A", ifelse(score >= 81, "B"))

# for문 복습
for(num in(1:10)) {
  print(num)
}

# 사분위수
A_salary <- c(25,28,50,60,30,35,40,70,40,70,40,100,30,30)
quantile(A_salary)
# 상자그림
boxplot(A_salary)
# 히스토그램
hist(A_salary, xlab = "A사 salary", ylab = "인원수", breaks=5)
