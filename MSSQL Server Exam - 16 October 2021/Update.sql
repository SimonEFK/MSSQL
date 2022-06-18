UPDATE Cigars
SET PriceForSingleCigar = PriceForSingleCigar * 1.2
WHERE id in(SELECT c.Id FROM Cigars AS c
				LEFT JOIN Tastes AS t ON    t.Id=c.TastId 
				WHERE t.TasteType='Spicy' AND t.Id=Cigars.TastId)
UPDATE Brands
SET BrandDescription = 'New description'
WHERE BrandDescription IS NULL

