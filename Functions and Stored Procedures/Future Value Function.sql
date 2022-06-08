CREATE FUNCTION ufn_CalculateFutureValue(@I DECIMAL(15,2),@R FLOAT,@T INT)

RETURNS DECIMAL(15,4)
BEGIN
 DECLARE @futureValue DECIMAL(15,4)
 SET @futureValue = @I*(POWER(1+@R,@T))
 RETURN @futureValue
END

SELECT dbo.ufn_CalculateFutureValue(1000,0.1,5)