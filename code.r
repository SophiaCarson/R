# 1
x <- c(1, 2, 3)
y <- c(4, 5, 6)
e <- c(1, 1, 1)
z = 2 * x + y + e
z1 = x %*% y
z2 = x %o% y
z
z1
z2


# 2
A <- matrix(1:20, c(4, 5))
A
B <- matrix(1:20, nrow = 4, byrow = TRUE)
B
C = A + B
C
D <- A %*% t(B)
D
E = A * B
E
F <- A[1:3, 1:3]
F
G <- B[, -3]
G


# 3
x <- c(rep(1, 5), rep(2, 3), rep(3, 4), rep(4, 2))
x


# 4
n <- 5

H <- array(0, dim = c(n, n))
for (i in 1:5) {
    for (j in 1:5) {
        H[i, j] <- 1 / (i + j - 1)
    }
}
H
det(H)
solve(H)
eigen(H)


# 5
library(foreign)
df <- data.frame(
    Name = c("张三", "李四", "王五", "赵六", "丁一"),
    Sex = c("女", "男", "女", "男", "女"),
    Age = c(14, 15, 16, 14, 15),
    Height = c(156, 165, 157, 162, 159),
    Weight = c(42.0, 49.0, 41.5, 52.0, 45.5)
)

df
df <- read.table(file.choose(), header = T)
df
write.csv(df, file = "eg.csv")
df <- read.csv("eg.csv")
df


# 6
library(openxlsx)
write.xlsx(df, "eg.xlsx")
openXL("eg.xlsx")


# 7
source('funs.r')
funs(-1)
funs(1)
funs(2)
