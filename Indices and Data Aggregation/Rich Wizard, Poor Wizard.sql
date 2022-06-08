SELECT SUM(k.Result) AS SumDifference
FROM
(SELECT 
w.FirstName AS [Host Wizard],
w.DepositAmount [Host Wizard Deposit],
g.FirstName AS [Guest Wizard],
g.DepositAmount AS [Guest Wizard Deposit],
w.DepositAmount - g.DepositAmount AS Result
FROM WizzardDeposits AS w
LEFT JOIN WizzardDeposits AS g ON w.Id+1 = g.Id ) AS K
