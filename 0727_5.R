# [실습1] 차분
n <- head(Nile)
n

# 1차 차분
n.diff1 <- diff(n,differences = 1)
n.diff1

# 2차 차분
n.diff2 <- diff(n,differences = 2)
n.diff2


# [실습2] 자기회귀 누적이동평균 모델
# 시계열 자료 : 시간에 따라 관측된 자료
# 대부분의 많은 자료 시계열 자료가 자기회귀 누적이동평균 모델을 따름
install.packages("forecast")      # forecast 패키지 설치하기
library(forecast)                 # forecast 패키지 불러오기

# ARIMA 모형은 기본적으로 비정상 시계열 모형 
auto.arima(Nile)

Nile.arima <- arima(Nile, order=c(1,1,1))
Nile.arima

forecast(Nile.arima, h=5)

plot(forecast(Nile.arima, h=5))

# [실습3] 분해시계열
plot(ldeaths)

ldeaths.decomp <- decompose(ldeaths)
plot(ldeaths.decomp)

ldeaths.decomp.trend <- ldeaths.decomp$trend
plot(ldeaths.decomp.trend)

ldeaths.decomp.seasonal <- ldeaths.decomp$seasonal
plot(ldeaths.decomp.seasonal)
