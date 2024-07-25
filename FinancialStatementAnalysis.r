# Scenario: You are a Data Scientist working for a consulting firm. One of your colleagues from the Auditing department has asked you to help them assess the financial statement of organisation X. You have been supplied with two vectors of data: monthly revenue and monthly expenses for the financial year in question. Your task is to calculate the following financial metrics:
#- profit for each month
#- profit after tax for each month (the tax rate is 30%)
#- profit margin for each month - equals to profit after tax divided by revenue
#- good months - where the profit after tax was greater than the mean for the year
#- bad months - where the profit after tax was less than the mean for the year
#- the best month - where the profit after tax was max for the year
#- the worst month - where the profit after tax was min for the year

#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution
# profit for each month
profit <- revenue - expenses

#- profit after tax for each month (the tax rate is 30%)
#Calculate Tax As 30% Of Profit And Round To 2 Decimal Points
profitTax <- profit - round((profit * 0.3),2)

#- profit margin for each month - equals to profit after tax divided by revenue
#Calculate Tax As 30% Of Profit And Round To 2 Decimal Points
profitMargin <- round(profitTax / revenue, 2) * 100

#- good months - where the profit after tax was greater than the mean for the year
goodMonths <- profitTax > mean(profitTax)

#- bad months - where the profit after tax was less than the mean for the year
badMonths <- profitTax < mean(profitTax)

#- the best month - where the profit after tax was max for the year
bestMonth <- which.max(profitTax)

#- the worst month - where the profit after tax was min for the year
worstMonth <- which.min(profitTax)

#Convert All Calculations To Units Of One Thousand Dollars
revenue.1000 <- round(revenue / 1000, 0)
expenses.1000 <- round(expenses / 1000, 0)
profit.1000 <- round(profit / 1000, 0)
profit.after.tax.1000 <- round(profitTax / 1000, 0)


#Print Results
revenue.1000
expenses.1000
profit.1000
profit.after.tax.1000
profitMargin
goodMonths
badMonths
bestMonth
worstMonth

M <- rbind(
  revenue.1000,
  expenses.1000,
  profit.1000,
  profit.after.tax.1000,
  profitMargin,
  goodMonths,
  badMonths,
  bestMonth,
  worstMonth
)

#Print The Matrix
print(M)
