SELECT 
w.DepositGroup
,SUM(w.DepositAmount) AS TotalSum
FROM WizzardDeposits AS w
WHERE w.MagicWandCreator = 'Ollivander Family'
GROUP BY w.DepositGroup