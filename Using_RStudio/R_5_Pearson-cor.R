# [실습1] 피어슨 상관계수 구하기
cor(Orange$circumference, Orange$age)

# 피어슨 상관계수 구하기(산점도 그리기)
plot(Orange$circumference, Orange$age, col="red", pch=19)


# [실습2] 피어슨 상관계수 구하기
cor(iris[, 1:4])

# [실습3] 상관계수 검정
cor.test(iris$Petal.Length, iris$Petal.Width, method = "pearson") # 피어슨 상관계수 검정

# 스피어만 상관계수를 검정하려면 cor.test() 함수의 매개인자만 다음과 같이 변경하면 된다.
# cor.test(첫 번째 변수, 두 번째 변수, method= "spearman") # 스피어만 상관계수 
cor.test(iris$Petal.Length, iris$Petal.Width, method = "spearman")
