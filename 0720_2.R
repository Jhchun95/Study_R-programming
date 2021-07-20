# 백분위수
quantile(A_salary, 0.9)
quantile(B_salary, 0.9)

# 사분위수
quantile(A_salary)
quantile(B_salary)

# 상자그림
boxplot(A_salary, B_salary, names = c("A회사 salary", "B회사 salary"))

# 히스토그램
hist(A_salary, xlab = "A사 salary", ylab = "인원수", breaks =5)
hist(B_salary, xlab = "B사 salary", ylab = "인원수", breaks =5)

# 도수분포표
A_salary <- c(25,28,50,60,30,35,40,70,40,70,40,100,30,30)
cut_value <- cut(A_salary, breaks = 5)
freq <- table(cut_value)
freq

A_salary <- c(25,28,50,60,30,35,40,70,40,70,40,100,30,30)
B_salary <- c(20,40,25,25,35,25,20,10,55,65,100,100,150,300)
A_gender <- as.factor(c('남','남','남','남','남','남','남','남','남','여','여','여','여','여'))
B_gender <- as.factor(c('남','남','남','남','여','여','여','여','여','여','여','남','여','여'))

A <- data.frame(gender <- A_gender, salary <- A_salary)
B <- data.frame(gender <- B_gender, salary <- B_salary)

freqA <- table(A$gender)
freqA

freqB <- table(B$gender)
freqB

# A사의 남녀 도수분포표를 구매 저장한 freq를 이용
prop.table(freqA)
# B사의 남녀 도수분포표를 구매 저장한 freq를 이용
prop.table(freqB)

# 막대그래프
# A사의 남녀 도수분포표를 구해 저장한 freqA를 이용
barplot(freqA, names = c("남","녀"), col = c("skyblue", "pink"), ylim = c(0,10))
title(main = "A사")
# B사의 남녀 도수분포표를 구해 저장한 freqB를 이용
barplot(freqB, names = c("남","녀"), col = c("skyblue", "pink"), ylim = c(0,10))
title(main = "B사")  

# 파이그래프
pie(x= freqA, col = c("skyblue", "pink"), main = "A사")
pie(x= freqB, col = c("skyblue", "pink"), main = "B사")
