SELECT 
TOP(5) 
k.CigarName,
k.PriceForSingleCigar,
k.ImageURL
FROM (SELECT 
c.CigarName,
c.PriceForSingleCigar,
c.ImageURL,
s.Length,
s.RingRange
FROM 
Cigars AS c
JOIN Sizes AS s ON c.SizeId=s.Id
WHERE s.Length>=12 )AS K
WHERE k.CigarName LIKE '%ci%' OR (k.PriceForSingleCigar>50 AND k.RingRange>2.55)
ORDER BY k.CigarName ASC ,k.PriceForSingleCigar DESC