# [실습] 주성분분석 : princomp()

fit <- princomp(iris[,1:4], cor=TRUE) # 상관행렬 이용한 주성분분석 수행
# 결과를 fit에 저장


# [실습] 주성분분석 : summary()
summary(fit)


# [실습] 주성분분석 : loading()
loadings(fit)


# [실습] 주성분 개수 선택법 - 스크리 그래프()
screeplot(fit, type = "lines", main = "scree plot")

