SELECT 
 k.ContinentCode,k.CurrencyCode,k.Total
FROM 
(SELECT 
c.ContinentCode,
c.CurrencyCode,
COUNT(c.CurrencyCode) AS Total,
DENSE_RANK() OVER(PARTITION BY ContinentCode ORDER BY COUNT(c.CurrencyCode) DESC ) AS ranked
FROM Countries AS c
GROUP BY c.ContinentCode,c.CurrencyCode 
)AS k
WHERE ranked = 1 AND Total>1
ORDER BY ContinentCode