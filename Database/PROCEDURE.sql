-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE <Procedure_Name, sysname, ProcedureName> 
	-- Add the parameters for the stored procedure here
	<@Param1, sysname, @p1> <Datatype_For_Param1, , int> = <Default_Value_For_Param1, , 0>, 
	<@Param2, sysname, @p2> <Datatype_For_Param2, , int> = <Default_Value_For_Param2, , 0>
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT <@Param1, sysname, @p1>, <@Param2, sysname, @p2>
END
GO
-- PROCEDURE OF TABLE SLIDE --
CREATE PROCEDURE p_SlideSearch
@Offset		VARCHAR,
@Limit		VARCHAR,
@Order		VARCHAR
AS
BEGIN
	RETURN TRUE
END
GO

CREATE PROCEDURE p_SlideEntry
AS
BEGIN
END
GO

CREATE PROCEDURE p_SlideDelete
AS
BEGIN
END
GO

-- PROCEDURE OF TABLE USER --
CREATE PROCEDURE p_UserSearch
@Offset		VARCHAR,
@Limit		VARCHAR,
@Order		VARCHAR
AS
BEGIN
	RETURN TRUE
END
GO

CREATE PROCEDURE p_UserEntry
AS
BEGIN
END
GO

CREATE PROCEDURE p_UserDelete
AS
BEGIN
END
GO

-- PROCEDURE OF TABLE ROLE --
CREATE PROCEDURE p_RoleSearch
@Offset		VARCHAR,
@Limit		VARCHAR,
@Order		VARCHAR
AS
BEGIN
	RETURN TRUE
END
GO

CREATE PROCEDURE p_RoleEntry
AS
BEGIN
END
GO

CREATE PROCEDURE p_RoleDelete
AS
BEGIN
END
GO

-- PROCEDURE OF TABLE NEWS --
CREATE PROCEDURE p_NewsSearch
@Offset		VARCHAR,
@Limit		VARCHAR,
@Order		VARCHAR
AS
BEGIN
	RETURN TRUE
END
GO

CREATE PROCEDURE p_NewsEntry
AS
BEGIN
END
GO

CREATE PROCEDURE p_NewsDelete
AS
BEGIN
END
GO

-- PROCEDURE OF TABLE TAG --
CREATE PROCEDURE p_TAGSearch
@Offset		VARCHAR,
@Limit		VARCHAR,
@Order		VARCHAR
AS
BEGIN
	RETURN TRUE
END
GO

CREATE PROCEDURE p_TAGEntry
AS
BEGIN
END
GO

CREATE PROCEDURE p_TAGDelete
AS
BEGIN
END
GO

-- PROCEDURE OF CATEGORY (MENU)
CREATE PROCEDURE p_CategorySearch
@Offset		VARCHAR,
@Limit		VARCHAR,
@Order		VARCHAR
AS
BEGIN
	RETURN TRUE
END
GO

CREATE PROCEDURE p_CategoryEntry
AS
BEGIN
END
GO

CREATE PROCEDURE p_CategoryDelete
AS
BEGIN
END
GO

-- PROCEDURE OF PRODUCT & PRODUCT_MENU
CREATE PROCEDURE p_ProductSearch
@Offset		VARCHAR,
@Limit		VARCHAR,
@Order		VARCHAR
AS
BEGIN
	RETURN TRUE
END
GO

CREATE PROCEDURE p_ProductEntry
AS
BEGIN
END
GO

CREATE PROCEDURE p_ProductDelete
AS
BEGIN
END
GO
--https://www.youtube.com/watch?v=OGhVgf9lafc
--http://stackoverflow.com/questions/243782/need-a-row-count-after-select-statement-whats-the-optimal-sql-approach