CREATE FUNCTION F_FORMAT (
	 @VALUE INT
	,@PAD INT
	,@PADCHAR CHAR(1)
	)
RETURNS VARCHAR(MAX)
AS
BEGIN
	RETURN (
			SELECT REPLICATE(@PADCHAR, @PAD - LEN(@VALUE)) + CONVERT(VARCHAR, @VALUE)
			)
END;