# [실습1] 다중선형회귀|모델 생성
height_father <- c(180,172,150,180,177,160,170,165,179,159) # 아버지 키
height_mother <- c(160,164,166,188,160,160,171,158,169,159) # 어머니 키
height_son <- c(180,173,163,184,165,165,175,168,179,160) # 아들키
height <- data.frame(height_father, height_mother, height_son)
head(height)

model <- lm(height_son ~ height_father + height_mother, data = height)
model

# 회귀계수
coef(model)


# [실습2] 다중선형회귀|잔차
# 잔차
r <- residuals(model)
r[0:4]

# 잔차 제곱합
deviance(model)


# [실습3] 다중선형회귀|예측
# 예측(점 추정)
predict.lm(model, newdata = data.frame(height_father = 170, height_mother = 160))
# 예측(구간 추정)
predict.lm(model, newdata = data.frame(height_father = 170, height_mother = 160),
           interval = "confidence")

# [실습4] 다중선형회귀|결정계수와 수정된 결정계수
summary(model)


