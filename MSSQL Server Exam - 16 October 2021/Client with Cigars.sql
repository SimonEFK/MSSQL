CREATE FUNCTION udf_ClientWithCigars(@name VARCHAR(MAX)) 
RETURNS INT
BEGIN
  RETURN(SELECT 
  COUNT(*)
  FROM ClientsCigars AS cc
  LEFT JOIN Clients AS c ON c.Id=cc.ClientId
  LEFT JOIN Cigars AS crs ON crs.Id=cc.CigarId
  WHERE c.FirstName=@name)
END

--SELECT dbo.udf_ClientWithCigars('Betty')
