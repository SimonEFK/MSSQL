CREATE FUNCTION ufn_IsWordComprised(@setOfLetters VARCHAR(50) , @word VARCHAR(50)) 
 RETURNS BIT
 BEGIN
 DECLARE @count INT = 1;
 DECLARE @wordLenght VARCHAR(50) = LEN(@word);
 DECLARE @currentLetter CHAR(1) = SUBSTRING(@word,@count,1)

	WHILE (@count<=@wordLenght)
	BEGIN
	
			IF CHARINDEX(@currentLetter,@setOfLetters) = 0
			RETURN 0
			SET @count+=1;
			SET @currentLetter = SUBSTRING(@word,@count,1)
	END
	RETURN 1;
 END


 
SELECT dbo.ufn_IsWordComprised('oistmiahf','halves')