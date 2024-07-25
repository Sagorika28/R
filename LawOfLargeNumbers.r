# Test the Law of Large numbers by taking N normally distributed numbers and count the number of times they fall between the 1st SD (-1 to 1) and compare with E(X) = 68.2%

N <- 100000
count <- 0
x <- rnorm(N)

for (item in x) {
  if (item > -1 & item < 1) {
    # find number of items that fall within 1st SD
    count <- count + 1
  }
}
#print(abs(sum))
mean <- ( count / N ) * 100
print(mean)
