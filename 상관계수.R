x <- 1:10
y <- x^2
plot(x,y)

# 상관계수
cor(x,y)

# 자료가 순서형/순위자료일 경우,
cor(x,y,method="kendall")

# 상관계수가 유의한지 결정
# H0 : cor = 0 (상관관계가 없다) : p-value < 0.05 이면 H0 기각 = 유의한 상관관계가 있다
cor.test(x, y)

# 30개 부서에서 부서당 35명의 직원 설문조사
# 데이터 숫자는 해당 질문에 긍정한 직원의 비율

attitude

cov(attitude)

round( cor(attitude), 3)

attach(attitude)

library(psych)
pairs.panels(attitude)

# complaints & rating 상관계수가 가장 높음
plot(rating, complaints)

cor.test(rating, complaints)
