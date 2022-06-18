CREATE PROCEDURE usp_SearchByTaste(@taste VARCHAR(50))
AS
BEGIN
SELECT 
c.CigarName,
'$' + CAST(c.PriceForSingleCigar AS VARCHAR) AS [Price],
t.TasteType,
b.BrandName,
CAST(s.Length AS VARCHAR)+' cm' as [CigarLength],
CAST(s.RingRange AS VARCHAR)+' cm' as [CigarRingRange]
FROM Cigars AS c
LEFT JOIN Sizes AS s ON c.SizeId=s.Id
JOIN Tastes AS t ON c.TastId=t.Id
JOIN Brands AS b ON b.Id=c.BrandId
WHERE t.TasteType = @taste
ORDER BY s.Length ASC,s.RingRange DESC
END

EXEC usp_SearchByTaste 'Woody'
