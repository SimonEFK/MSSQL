SELECT
c.FirstName+' '+ c.LastName AS [FullName],
a.Country,
a.ZIP,
'$'+CAST(MAX(crs.PriceForSingleCigar)AS VARCHAR) AS [CigarPrice]
FROM ClientsCigars AS cc
LEFT JOIN Clients AS c ON c.Id=cc.ClientId
LEFT JOIN Addresses AS a ON a.Id=c.AddressId
LEFT JOIN Cigars crs ON cc.CigarId=crs.Id
WHERE a.ZIP NOT LIKE '%[^0-9]%'
GROUP BY c.Id , (c.FirstName+' '+ c.LastName),a.Country,a.ZIP
ORDER BY FullName