# 상관계수 : 두 변수가 선형적 관계에 있다면 얼마나 선형성을 보이는지 수치상으로 나타낼 수 있는 방법
# 공분산 : 두 변수가 같은 방향으로 움직이는 정도, 측정단위에 영향을 받는 단점
# 상관계수 : 공분산을 표준편차로 나눈 값

x <- 1:10
y <- x^2
plot(x,y)

# 상관계수
cor(x,y)

# 자료가 순서형/순위자료일 경우,
cor(x,y,method="kendall")

# 상관계수가 유의한지 결정
# H0 : cor = 0 (상관관계가 없다) : p-value < 0.05 이면 H0 기각 = 유의한 상관관계가 있다
# 
cor.test(x, y)

# 상관계수를 통해 상관성을 구한다하더라도 그에 맞는 타당한 논리가 필요하고, 여러 개의 그래프가 나오면 그에 맞는 분석결과를 도출해야한다.
# 프로젝트를 했을 당시에 전기자동차 QGIS + 군집분석(딥러닝)을 추가하여 실시했었는데 밀도군집과 k-mean 클러스링을 이용한 python을 이용하여 분석하였다.

# 예를 들어, 추천해주는데 있어 1~10개까지 있는데 2개 추천값이 가장 높아 2개로 선택하였고, k-mean 코드를 돌려 2군데 군집분석하였다. 

# 30개 부서에서 부서당 35명의 직원 설문조사
# 데이터 숫자는 해당 질문에 긍정한 직원의 비율

attitude

cov(attitude)

round( cor(attitude), 3)

# 데이터를 R 검색 경로에 추가하여 변수명으로 바로 접근할 수 있게 한다.
attach(attitude)

library(psych)
pairs.panels(attitude)

# complaints & rating 상관계수가 가장 높음
plot(rating, complaints)

cor.test(rating, complaints)
