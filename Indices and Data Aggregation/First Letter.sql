SELECT
DISTINCT
LEFT(w.FirstName,1) AS FirstLetter
FROM WizzardDeposits AS w
WHERE w.DepositGroup = 'Troll Chest'
ORDER BY FirstLetter ASC