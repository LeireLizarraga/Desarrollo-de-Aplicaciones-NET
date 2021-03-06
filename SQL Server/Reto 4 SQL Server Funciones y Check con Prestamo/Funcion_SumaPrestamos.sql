USE [CheDB]
GO
/****** Object:  UserDefinedFunction [bco].[f_SumaPrestamos]    Script Date: 15/03/2019 11:20:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
ALTER FUNCTION [bco].[f_SumaPrestamos]
(
	-- Add the parameters for the function here
	@IDTitular int
)
RETURNS money
AS
BEGIN
	-- Declare the return variable here
	DECLARE @ret  money

	-- Add the T-SQL statements to compute the return value here
	SELECT @ret = SUM(importe) FROM bco.Prestamos
	WHERE idTitular = @IDTitular

	-- Return the result of the function
	RETURN @ret

END
