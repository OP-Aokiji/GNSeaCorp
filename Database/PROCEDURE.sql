-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
--CREATE PROCEDURE <Procedure_Name, sysname, ProcedureName> 
--	-- Add the parameters for the stored procedure here
--	<@Param1, sysname, @p1> <Datatype_For_Param1, , int> = <Default_Value_For_Param1, , 0>, 
--	<@Param2, sysname, @p2> <Datatype_For_Param2, , int> = <Default_Value_For_Param2, , 0>
--AS
--BEGIN
--	-- SET NOCOUNT ON added to prevent extra result sets from
--	-- interfering with SELECT statements.
--	SET NOCOUNT ON;

--    -- Insert statements for procedure here
--	SELECT <@Param1, sysname, @p1>, <@Param2, sysname, @p2>
--END
--GO
-- PROCEDURE OF TABLE SLIDE --
CREATE PROCEDURE p_SlideSearch
	@SLIDE_ID	CHAR(5),
	@OFFSET		VARCHAR,
	@LIMIT		VARCHAR,
	@ORDER		VARCHAR
AS
BEGIN
  DECLARE @V_SQL_QUERY NVARCHAR(MAX);
  SET @V_SQL_QUERY =   'SELECT	SLIDE_ID,
								DESCRIPTION,
								IMAGE_URL,
								SLOGAN1,
								SLOGAN2
						FROM	SLIDE
						WHERE VALID_FLAG = ''1'' ';
	IF @SLIDE_ID IS NOT NULL
		SET @V_SQL_QUERY = @V_SQL_QUERY + ' AND SLIDE_ID LIKE ''%' + @SLIDE_ID +  '%'' ';

	IF @ORDER IS NOT NULL
		SET @V_SQL_QUERY = @V_SQL_QUERY + ' ORDER BY ' + @ORDER ;

	IF @OFFSET IS NOT NULL AND @LIMIT IS NOT NULL
	   SET @V_SQL_QUERY = @V_SQL_QUERY + ' LIMIT ' + @LIMIT +  ' OFFSET ' + @OFFSET;

	EXEC(@V_SQL_QUERY);
END
GO
CREATE PROCEDURE p_SlideEntry
	@SLIDE_ID		CHAR(5),
	@DESCRIPTION	NVARCHAR(500),
	@IMAGE_URL		TEXT,
	@SLOGAN1		NVARCHAR(50),
	@SLOGAN2		NVARCHAR(50),
	@USER			NVARCHAR(20)
AS
BEGIN
	IF  NOT EXISTS(SELECT 1 FROM SLIDE WHERE SLIDE_ID = @SLIDE_ID)
			INSERT INTO SLIDE (
				SLIDE_ID,
				DESCRIPTION,
				IMAGE_URL,
				SLOGAN1,
				SLOGAN2,
				VALID_FLAG,
				ADD_USER,
				ADD_DATE,
				UPDATE_USER,
				UPDATE_DATE
			) VALUES (
				 (SELECT  DBO.F_FORMAT(ISNULL(MAX(CONVERT(INT, SLIDE_ID)) + 1, 1), 5, '0')
				 FROM SLIDE)
				,@DESCRIPTION
				,@IMAGE_URL
				,@SLOGAN1
				,@SLOGAN2
				,'1'
				,@USER
				,GETDATE()
				,@USER
				,GETDATE()
			);
	ELSE
		UPDATE SLIDE SET
			DESCRIPTION = @DESCRIPTION
			,IMAGE_URL = @IMAGE_URL
			,SLOGAN1 = @SLOGAN1
			,SLOGAN2 = @SLOGAN2
			,VALID_FLAG = '1'
			,ADD_USER = @USER
			,UPDATE_DATE = FORMAT(GETDATE(),'dd/MM/yyyy HH:mm')
		WHERE SLIDE_ID = @SLIDE_ID
			
	IF @@ROWCOUNT > 0
		SELECT ERR_CODE = 'SUCCESS';
	ELSE
		SELECT ERR_CODE = 'ERROR';
END
GO
CREATE PROCEDURE p_SlideDelete
	@SLIDE_ID		CHAR(5),
	@UPDATE_USER	CHAR(20),
	@UPDATE_DATE	DATETIME
AS
BEGIN
	UPDATE	SLIDE
	SET		VALID_FLAG	= '0',
			UPDATE_USER	= @UPDATE_USER,
			UPDATE_DATE	= @UPDATE_DATE
	WHERE	SLIDE_ID	= @SLIDE_ID;

	IF @@ROWCOUNT > 0
		SELECT ERR_CODE = 'S';        
	ELSE                              
		SELECT ERR_CODE = 'E';        
END                                   
GO                                                                         
---- PROCEDURE OF TABLE USER --
--CREATE PROCEDURE p_UserSearch
--	@Offset		VARCHAR,
--	@Limit		VARCHAR,
--	@Order		VARCHAR
--AS
--BEGIN
	
--END
--GO

CREATE PROCEDURE p_UserEntry
	@USER_ID		VARCHAR(20),
	@ROLD_ID		CHAR(5),
	@PASSWORD		NVARCHAR(MAX),
	@FIRST_NAME		NVARCHAR(50),
	@LAST_NAME		NVARCHAR(50),
	@ADDRESS		NVARCHAR(100),
	@GENDER			BIT,
	@PHONE_NUMBER	VARCHAR(20),
	@IDENTIFICATION	VARCHAR(30),
	@AVATAR_URL		TEXT,
	@USER			NVARCHAR(20)
AS
BEGIN
	IF NOT EXISTS(SELECT 1 FROM ACCOUNT WHERE USER_ID = @USER_ID)
		INSERT INTO ACCOUNT(
			USER_ID,
			ROLD_ID,
			PASSWORD,
			FIRST_NAME,
			LAST_NAME,
			ADDRESS,
			GENDER,
			PHONE_NUMBER,
			IDENTIFICATION,
			AVATAR_URL,
			VALID_FLAG,
			ADD_USER,
			ADD_DATE,
			UPDATE_USER,
			UPDATE_DATE
		) VALUES (
			 @USER_ID
			,@ROLD_ID
			,@PASSWORD
			,@FIRST_NAME
			,@LAST_NAME
			,@ADDRESS
			,@GENDER
			,@PHONE_NUMBER
			,@IDENTIFICATION
			,@AVATAR_URL
			,'1'
			,@USER
			,FORMAT(GETDATE(),'dd/MM/yyyy HH:mm')
			,@USER
			,FORMAT(GETDATE(),'dd/MM/yyyy HH:mm')
		);
	ELSE
		UPDATE ACCOUNT SET
			 ROLD_ID       	= @ROLD_ID
			,PASSWORD      	= @PASSWORD
			,FIRST_NAME    	= @FIRST_NAME
			,LAST_NAME     	= @LAST_NAME
			,ADDRESS       	= @ADDRESS
			,GENDER        	= @GENDER
			,PHONE_NUMBER  	= @PHONE_NUMBER
			,IDENTIFICATION	= @IDENTIFICATION
			,AVATAR_URL    	= @AVATAR_URL
			,VALID_FLAG    	= '1'
			,ADD_USER      	= @USER
			,ADD_DATE      	= FORMAT(GETDATE(),'dd/MM/yyyy HH:mm')
			,UPDATE_USER   	= @USER
			,UPDATE_DATE   	= FORMAT(GETDATE(),'dd/MM/yyyy HH:mm')
		WHERE USER_ID       = @USER_ID;

	IF @@ROWCOUNT > 0
		SELECT ERR_CODE = 'S';        
	ELSE                              
		SELECT ERR_CODE = 'E';
END
GO

CREATE PROCEDURE p_UserDelete
	@USER_ID		VARCHAR(20),
	@USER			NVARCHAR(20)
AS
BEGIN
	UPDATE ACCOUNT SET
		 VALID_FLAG    	= '0'
		,UPDATE_USER   	= @USER
		,UPDATE_DATE   	= FORMAT(GETDATE(),'dd/MM/yyyy HH:mm')
	WHERE USER_ID       = @USER_ID;
END
GO

CREATE PROC [dbo].[P_ACCOUNT_LOGIN] (
	@USER_ID NVARCHAR(50)
	,@PASSWORD NVARCHAR(MAX)
	)
AS
BEGIN
	IF EXISTS (
			SELECT *
			FROM ACCOUNT
			WHERE USER_ID = @USER_ID
				AND PASSWORD = @PASSWORD
			)
		SELECT ERR_CODE = 'SUCCESS'
			,*
		FROM ACCOUNT
		WHERE USER_ID = @USER_ID
			AND PASSWORD = @PASSWORD;
	ELSE
		SELECT ERR_CODE = 'ERROR';
END;
GO

-- PROCEDURE OF TABLE ROLE --
--CREATE PROCEDURE p_RoleSearch
--@Offset		VARCHAR,
--@Limit		VARCHAR,
--@Order		VARCHAR
--AS
--BEGIN
--	RETURN TRUE
--END
--GO

CREATE PROCEDURE p_RoleEntry
	@ROLE_ID			CHAR(5),
	@TYPE				NVARCHAR(5),
	@ROLE_NAME			NVARCHAR(50),
	@READ_ONLY			BIT,
	@ENABLE_INSERT		BIT,
	@ENABLE_UPDATE		BIT,
	@ENABLE_DELETE		BIT,
	@DESCRIPTION		NVARCHAR(500),
	@USER				NVARCHAR(20)
AS
BEGIN
	IF NOT EXISTS (SELECT 1 FROM ROLE WHERE ROLE_ID = @ROLE_ID AND TYPE = @TYPE)
		INSERT INTO ROLE (
			 ROLE_ID
			,TYPE				--QUYỀN GIỮA CÁC MENU
			,ROLE_NAME
			,READ_ONLY
			,ENABLE_INSERT	
			,ENABLE_UPDATE	
			,ENABLE_DELETE
			,DESCRIPTION
			,VALID_FLAG
			,ADD_USER
			,ADD_DATE
			,UPDATE_USER
			,UPDATE_DATE
		) VALUES (
			 @ROLE_ID
			,@TYPE
			,@ROLD_NAME
			,@READ_ONLY
			,@ENABLE_INSERT
			,@ENABLE_UPDATE
			,@ENABLE_DELETE
			,@DESCRIPTION	
			,'1'
			,@USER
			,FORMAT(GETDATE(),'dd/MM/yyyy HH:mm')
			,@USER
			,FORMAT(GETDATE(),'dd/MM/yyyy HH:mm')
		);
	ELSE
		UPDATE ROLE SET
			ROLD_NAME      = 	@ROLD_NAME,
			READ_ONLY      = 	@READ_ONLY,
			ENABLE_INSERT  = 	@ENABLE_INSERT,
			ENABLE_UPDATE  = 	@ENABLE_UPDATE,
			ENABLE_DELETE  = 	@ENABLE_DELETE,
			DESCRIPTION    = 	@DESCRIPTION,
			VALID_FLAG     = 	'1',
			ADD_USER       = 	@USER,
			ADD_DATE       = 	FORMAT(GETDATE(),'dd/MM/yyyy HH:mm'),
			UPDATE_USER    = 	@USER,
			UPDATE_DATE    =  	FORMAT(GETDATE(),'dd/MM/yyyy HH:mm')
		WHERE	ROLE_ID = @ROLE_ID
		AND		TYPE	= @TYPE;
	
	IF @@ROWCOUNT > 0
		SELECT ERR_CODE = 'S';        
	ELSE                              
		SELECT ERR_CODE = 'E';
END
GO

CREATE PROCEDURE p_RoleDelete
	@ROLE_ID			CHAR(5),
	@TYPE				NVARCHAR(5),
	@USER				NVARCHAR(20)
AS
BEGIN
	UPDATE ROLE SET
		 VALID_FLAG    	= '0'
		,UPDATE_USER   	= @USER
		,UPDATE_DATE   	= FORMAT(GETDATE(),'dd/MM/yyyy HH:mm')
	WHERE	ROLE_ID = @ROLE_ID 
	AND		TYPE	= @TYPE;

	IF @@ROWCOUNT > 0
		SELECT ERR_CODE = 'S';        
	ELSE                              
		SELECT ERR_CODE = 'E';
END
GO

-- PROCEDURE OF TABLE NEWS --
--CREATE PROCEDURE p_NewsSearch
--@Offset		VARCHAR,
--@Limit		VARCHAR,
--@Order		VARCHAR
--AS
--BEGIN
--	RETURN TRUE
--END
--GO

CREATE PROCEDURE p_NewsEntry
	@NEWS_ID		CHAR(5),
	@TITLE			NVARCHAR(50),
	@SUMMARY		NVARCHAR(200),
	@CONTENT		TEXT,
	@USER			NVARCHAR(20)
AS
BEGIN
	IF NOT EXISTS (SELECT 1 FROM NEWS WHERE NEWS_ID = @NEWS_ID)
	BEGIN
		INSERT INTO NEWS (
<<<<<<< HEAD
			 NEWS_ID			
=======
			 NEWS_ID		
>>>>>>> 3599e44e034c672f6cefa36b92b42134ed419aa6
			,TITLE		
			,SUMMARY		
			,CONTENT		
			,VALID_FLAG	
			,ADD_USER	
			,ADD_DATE	
			,UPDATE_USER
			,UPDATE_DATE
		) VALUES (
			 @NEWS_ID
			,@TITLE
			,@SUMMARY
			,@CONTENT
			,'1'
			,@USER
			,FORMAT(GETDATE(),'dd/MM/yyyy HH:mm')
			,@USER
			,FORMAT(GETDATE(),'dd/MM/yyyy HH:mm')
		);
		END
	ELSE 
		BEGIN
			UPDATE NEWS SET
				TITLE		= @TITLE,
				SUMMARY	    = @SUMMARY,
				CONTENT	    = @CONTENT,
				VALID_FLAG	= '1',
				UPDATE_USER = @USER,
				UPDATE_DATE = FORMAT(GETDATE(),'dd/MM/yyyy HH:mm')
			WHERE NEWS_ID = @NEWS_ID;
		END
	
	IF @@ROWCOUNT > 0
		SELECT ERR_CODE = 'S';        
	ELSE                              
		SELECT ERR_CODE = 'E';
END
GO

CREATE PROCEDURE p_NewsDelete
	@NEWS_ID		CHAR(5),
	@USER			NVARCHAR(20)
AS
BEGIN
	UPDATE NEWS SET
		VALID_FLAG	= '0',
		UPDATE_USER = @USER,
		UPDATE_DATE = FORMAT(GETDATE(),'dd/MM/yyyy HH:mm')
	WHERE NEWS_ID = @NEWS_ID;
	
	UPDATE TAG SET
		VALID_FLAG = '0'
	WHERE TAG_ID = @NEWS_ID;
	
	IF @@ROWCOUNT > 0
		SELECT ERR_CODE = 'S';        
	ELSE                              
		SELECT ERR_CODE = 'E';
END
GO

-- PROCEDURE OF TABLE TAG -- Hiện tại không cần cái này
--CREATE PROCEDURE p_TAGSearch
--@Offset		VARCHAR,
--@Limit		VARCHAR,
--@Order		VARCHAR
--AS
--BEGIN
--	RETURN TRUE
--END
--GO

--CREATE PROCEDURE p_TAGEntry
--AS
--BEGIN
--END
--GO

--CREATE PROCEDURE p_TAGDelete
--AS
--BEGIN
--END
--GO

-- PROCEDURE OF CATEGORY (MENU)
<<<<<<< HEAD
ALTER PROCEDURE p_CategorySearch
	@MENU_ID		CHAR(2)
AS
BEGIN
	DECLARE @V_SQL_QUERY NVARCHAR(MAX);
	SET @V_SQL_QUERY =   'SELECT	MENU_ID,
									MENU_NAME
							FROM	MENU
							WHERE	TYPE		= ''2''
							AND		PARENT_ID	= ''03''
							AND		VALID_FLAG	= ''1'' ';
	IF @MENU_ID IS NOT NULL
		SET @V_SQL_QUERY = @V_SQL_QUERY + ' AND MENU_ID = ''' + @MENU_ID +  ''' ';

	SET @V_SQL_QUERY = @V_SQL_QUERY + ' ORDER BY MENU_ID';

	EXEC(@V_SQL_QUERY);

	SELECT	MENU_ID,
			MENU_NAME
	FROM	MENU
	WHERE	TYPE		= '2'
	AND		PARENT_ID	= '03'
	AND		VALID_FLAG	= '1'
=======
CREATE PROCEDURE p_CategorySearch

AS
BEGIN
	SELECT	* 
	FROM	MENU
	WHERE	TYPE		= '2'
	AND		PARENT_ID	= '03'
>>>>>>> 3599e44e034c672f6cefa36b92b42134ed419aa6
	ORDER BY MENU_ID
END
GO

-- NÊN SELECT LẤY MENU ID LỚN NHẤT
CREATE PROCEDURE p_CategoryEntry
	@MENU_ID		CHAR(2),
	@MENU_NAME		NVARCHAR(50),
	@DESCRIPTION	NVARCHAR(500),
	@USER			NVARCHAR(20)
AS
BEGIN
	IF NOT EXISTS (SELECT 1 FROM MENU WHERE MENU_ID = @MENU_ID AND PARENT_ID = '03' AND TYPE = '2')
		INSERT INTO MENU (
			 MENU_ID
			,TYPE		
			,PARENT_ID	
			,MENU_NAME	
			,DESCRIPTION
			,VALID_FLAG	
			,ADD_USER	
			,ADD_DATE	
			,UPDATE_DATE
			,UPDATE_USER
		) VALUES (
			 @MENU_ID
			,'2'
			,'03'
			,@MENU_NAME
			,@DESCRIPTION
			,'1'
			,@USER
			,FORMAT(GETDATE(),'dd/MM/yyyy HH:mm')
			,@USER
			,FORMAT(GETDATE(),'dd/MM/yyyy HH:mm')
		);
	ELSE
		UPDATE MENU SET
			 MENU_NAME		= @MENU_NAME
			,DESCRIPTION	= @DESCRIPTION
			,VALID_FLAG		= '1'
			,UPDATE_DATE	= FORMAT(GETDATE(),'dd/MM/yyyy HH:mm')
			,UPDATE_USER	= @USER
		WHERE	MENU_ID		= @MENU_ID
		AND		TYPE		= '2'
		AND		PARENT_ID	= '03';
END
GO

CREATE PROCEDURE p_CategoryDelete
	@MENU_ID		CHAR(2),
	@USER			NVARCHAR(20)
AS
BEGIN
	UPDATE MENU SET
		 VALID_FLAG		= '0'
		,UPDATE_DATE	= FORMAT(GETDATE(),'dd/MM/yyyy HH:mm')
		,UPDATE_USER	= @USER
	WHERE	MENU_ID		= @MENU_ID
	AND		TYPE		= '2'
	AND		PARENT_ID	= '03';
END
GO

-- PROCEDURE OF PRODUCT & PRODUCT_MENU
--CREATE PROCEDURE p_ProductSearch
--@Offset		VARCHAR,
--@Limit		VARCHAR,
--@Order		VARCHAR
--AS
--BEGIN
--	RETURN TRUE
--END
--GO

CREATE PROCEDURE p_ProductEntry
	@PRODUCT_ID		CHAR(10),		
	@PRODUCT_NAME	NVARCHAR(50),
	@PRICE1			MONEY,			
	@DESCRIPTION	NVARCHAR(500),
	@IMAGE_URL		TEXT,			
	@USER			NVARCHAR(20),
	@MENU_ID		CHAR(2)
AS
BEGIN
	IF NOT EXISTS (SELECT 1 FROM PRODUCT WHERE PRODUCT_ID = @PRODUCT_ID) 
	BEGIN
			INSERT INTO PRODUCT (
				PRODUCT_ID,
				PRODUCT_NAME,
				PRICE1,
				DESCRIPTION,
				IMAGE_URL,
				VALID_FLAG,
				ADD_USER,
				ADD_DATE,
				UPDATE_USER,
				UPDATE_DATE
			) VALUES (
				@PRODUCT_ID,
				@PRODUCT_NAME,
				@PRICE1,
				@DESCRIPTION,
				@IMAGE_URL,
				'1',
				@USER,
				FORMAT(GETDATE(),'dd/MM/yyyy HH:mm'),
				@USER,
				FORMAT(GETDATE(),'dd/MM/yyyy HH:mm')
			);
		
			INSERT INTO PRODUCT_MENU (
				MENU_ID,
				TYPE,	
				PRODUCT_ID,
				VALID_FLAG,
				ADD_USER,
				ADD_DATE,
				UPDATE_USER,
				UPDATE_DATE
			) VALUES (
				@MENU_ID,
				'2',
				@PRODUCT_ID,
				'1',
				@USER,
				FORMAT(GETDATE(),'dd/MM/yyyy HH:mm'),
				@USER,
				FORMAT(GETDATE(),'dd/MM/yyyy HH:mm')
			)
		END 
	ELSE 
		BEGIN
			UPDATE PRODUCT SET
				PRODUCT_NAME = @PRODUCT_NAME,
				PRICE1		 = @PRICE1,
				DESCRIPTION	 = @DESCRIPTION,
				IMAGE_URL	 = @IMAGE_URL,
				VALID_FLAG	 = '1',
				UPDATE_USER	 = @USER,
				UPDATE_DATE	 = FORMAT(GETDATE(),'dd/MM/yyyy HH:mm')
			WHERE	PRODUCT_ID = @PRODUCT_ID;
		
			UPDATE PRODUCT_MENU SET
				VALID_FLAG	 = '1',
				UPDATE_USER	 = @USER,
				UPDATE_DATE	 = FORMAT(GETDATE(),'dd/MM/yyyy HH:mm')
			WHERE	PRODUCT_ID	= @PRODUCT_ID
			AND		MENU_ID		= @MENU_ID
			AND		TYPE		= '2';
		END
	
END
GO

CREATE PROCEDURE p_ProductDelete
	@PRODUCT_ID		CHAR(10),		
	@USER			NVARCHAR(20),
	@MENU_ID		CHAR(2)
AS
BEGIN
	UPDATE PRODUCT SET
		VALID_FLAG	 = '0',
		UPDATE_USER	 = @USER,
		UPDATE_DATE	 = FORMAT(GETDATE(),'dd/MM/yyyy HH:mm')
	WHERE	PRODUCT_ID = @PRODUCT_ID;
	
	UPDATE PRODUCT_MENU SET
		VALID_FLAG	 = '0',
		UPDATE_USER	 = @USER,
		UPDATE_DATE	 = FORMAT(GETDATE(),'dd/MM/yyyy HH:mm')
	WHERE	PRODUCT_ID	= @PRODUCT_ID
	AND		MENU_ID		= @MENU_ID
	AND		TYPE		= '2';
END
GO
--https://www.youtube.com/watch?v=OGhVgf9lafc
--http://stackoverflow.com/questions/243782/need-a-row-count-after-select-statement-whats-the-optimal-sql-approach