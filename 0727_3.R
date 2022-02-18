# [실습1] 단순선형회귀|모델 생성
# 1. y = f(x)와 같이 이론에서 주어지는 경제적 변수들 간의 관계를 추정(estimate) 및 검정(test).
# 2. 설명변수의 값을 토대로 종속변수의 값을 예측(forecast)
# 반응변수 Yi를 하나의 설명변수 Xi로 설명

data(Orange)
head(Orange)

model <- lm(circumference ~ age, Orange)
model

#회귀계수
coef(model)

# [실습2] 단순선형회귀|잔차
# 잔차
# 데이터의 변수 수가 많을 경우, 선형성 가정을 검토하는 작업이 쉽지 않지만 모형의 잔차를 이용하면 선형성, 독립성, 정규성 가정을 검토할 수 있는 장점이 있다.
r <- residuals(model)
r[0:4]

# fitted() 함수로 model이 예측한 값 구하기
f <- fitted(model)

# residuals() 함수로 잔차 구하기
r <- residuals(model)

# 예측한 값에 잔차를 더하여 실제값과 동일한지 확인해보자.
# 예측한 값과 잔차 더하기
f[0:4] + r[0:4]

# 위의 값이 다음의 실제 데이터와 동일함을 확인할 수 있다.
# 실제값
Orange[0:4, 'circumference']

# 잔차 제곱합
deviance(model)


# [실습3] 단순선형회귀|예측
# 예측
predict.lm(model, newdata = data.frame(age=100))


# [실습4] 단순선형회귀|예측
summary(model)
