# [실습] 주성분분석 : princomp()
# 주성분분석(Principal Component Analysis, PCA)
# 여러 변수들의 변량을 '주성분'이라는 불리는 서로 상관성이 높은 여러 변수들의 선형조합으로 만든 새로운 변수들로 요약, 축소하는 기법이다.
# 1. 주성분으로 전체 변동을 가장 많이 설명할 수 있어야한다.
# 2. 여러 변수들 간에 내재하는 상관관계, 연관성을 이용해 소수의 주성분 또는 요인으로 차원을 축소함으로써 데이터를 이해하기 쉽고 관리하기 쉽게 해줍니다

fit <- princomp(iris[,1:4], cor=TRUE) # 상관행렬 이용한 주성분분석 수행
# 결과를 fit에 저장


# [실습] 주성분분석 : summary()
summary(fit)


# [실습] 주성분분석 : loading()
loadings(fit)


# [실습] 주성분 개수 선택법 - 스크리 그래프()
screeplot(fit, type = "lines", main = "scree plot")

