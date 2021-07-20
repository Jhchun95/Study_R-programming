A_salary <- c(25,28,50,60,30,35,40,70,40,70,40,100,30,30) # 연봉 변수
A_hireyears <- c(1,1,5,6,3,3,4,7,4,7,4,10,3,3)
A <- data.frame(salary <- A_salary, hireyears <- A_hireyears)

# 산점도 그래프
plot(A$hireyears, A$salary, xlab = "근무년수", ylab = "연봉(백만원단위)")

pairs(iris[,1:4], main = "iris data")

# 상관행렬
cor(iris[,1:4])

# 상관행렬 히트맵
heatmap(cor(iris[,1:4]))
