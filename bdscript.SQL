CREATE TABLE Tbl_Credito ( 
	idCredito int identity(1,1)  NOT NULL,
	idTipCredito int,
	monto decimal(10,2) NOT NULL,
	tasInteres decimal(10,2),
	idusuarioAgente int NOT NULL,
	idEstado int NOT NULL,
	letras int,
	creado datetime DEFAULT getdate()
)
;

CREATE TABLE Tbl_Credito_Bitacora ( 
	idCredito int NOT NULL,
	idTipCredito int NOT NULL,
	monto decimal(10,2) NOT NULL,
	tasInteres decimal(10,2) NOT NULL,
	idusuarioAgente int NOT NULL,
	idEstado int NOT NULL,
	Letras int,
	creado datetime,
	modificado datetime DEFAULT getdate()
)
;

CREATE TABLE Tbl_Detalle_Credito ( 
	idDetCredito int NOT NULL,
	idCredito int NOT NULL,
	totalLetras int NOT NULL,
	noCuenta int NOT NULL,
	fechaCredito datetime NOT NULL,
	estado bit NOT NULL,
	letras int
)
;

CREATE TABLE Tbl_DocxCredito ( 
	idDocumento int NOT NULL,
	idPersona int NOT NULL,
	idTipoDocumento int,
	fecha datetime,
	idCredito int,
	estado bit
)
;

CREATE TABLE Tbl_Estado ( 
	idEstado int NOT NULL,
	nomEstado varchar(50) NOT NULL,
	estado bit NOT NULL
)
;

CREATE TABLE Tbl_Estado_Civil ( 
	idEstCivil int identity(1,1)  NOT NULL,
	nomEstCivil varchar(50),
	estado bit DEFAULT 1
)
;

CREATE TABLE Tbl_Fiador ( 
	cuiPersona int,
	idCredito int
)
;

CREATE TABLE Tbl_Letras_De_Pago ( 
	idletPago int NOT NULL,
	idCredito int NOT NULL,
	letraPago decimal(9,2) NOT NULL,
	Saldo decimal(9,2) NOT NULL,
	interesxMora int NOT NULL,
	estad bit
)
;

CREATE TABLE Tbl_PermisoxRol ( 
	idRolxPermiso int NOT NULL,
	idPermiso int NOT NULL,
	nomPermiso varchar(50) NOT NULL,
	estado bit NOT NULL,
	idRol int
)
;

CREATE TABLE Tbl_Persona ( 
	cuiPersona int NOT NULL,
	priNomPersona varchar(50) NOT NULL,
	segNomPersona varchar(50),
	priApePersona varchar(50) NOT NULL,
	segApePersona varchar(50),
	dirPersona varchar(10),
	telPersona varchar(8),
	idSexo int,
	fechNacPersona datetime,
	idEstCivil int,
	estado bit DEFAULT 1 NOT NULL
)
;

CREATE TABLE Tbl_Rol ( 
	idRol int identity(1,1)  NOT NULL,
	nomRol varchar(50) NOT NULL,
	estado bit DEFAULT 1 NOT NULL
)
;

CREATE TABLE Tbl_Sexo ( 
	idSexo int identity(1,1)  NOT NULL,
	nomSexo varchar(50) NOT NULL,
	estado bit DEFAULT 1 NOT NULL
)
;

CREATE TABLE Tbl_Solicitante ( 
	cuiPersona int,
	idCredito int
)
;

CREATE TABLE Tbl_Tipo_Credito ( 
	idTipCredito int NOT NULL,
	nomTipCredito varchar(50) NOT NULL,
	estado bit NOT NULL
)
;

CREATE TABLE Tbl_Tipo_Documento ( 
	idTipoDocumento int NOT NULL,
	nomTipoDocumento varchar(50) NOT NULL,
	estado bit DEFAULT 1 NOT NULL
)
;

CREATE TABLE Tbl_Usuario ( 
	idUsuario int identity(1,1)  NOT NULL,
	nomUsuario char(50) NOT NULL,
	contraseñaUsuario char(12) NOT NULL,
	idRol int,
	cuiPersona int,
	estado bit DEFAULT 1 NOT NULL
)
;


ALTER TABLE Tbl_Credito ADD CONSTRAINT PK_tbl_credito 
	PRIMARY KEY CLUSTERED (idCredito)
;

ALTER TABLE Tbl_Detalle_Credito ADD CONSTRAINT PK_tbl_detalle_credito 
	PRIMARY KEY CLUSTERED (idDetCredito)
;

ALTER TABLE Tbl_DocxCredito ADD CONSTRAINT PK_Tbl_Documento 
	PRIMARY KEY CLUSTERED (idDocumento)
;

ALTER TABLE Tbl_Estado ADD CONSTRAINT PK_Tbl_Estado 
	PRIMARY KEY CLUSTERED (idEstado)
;

ALTER TABLE Tbl_Estado_Civil ADD CONSTRAINT PK_tbl_estado_civil 
	PRIMARY KEY CLUSTERED (idEstCivil)
;

ALTER TABLE Tbl_Letras_De_Pago ADD CONSTRAINT PK_tbl_letras_de_pago 
	PRIMARY KEY CLUSTERED (idletPago)
;

ALTER TABLE Tbl_PermisoxRol ADD CONSTRAINT PK_Tbl_PermisoxRol 
	PRIMARY KEY CLUSTERED (idRolxPermiso)
;

ALTER TABLE Tbl_Persona ADD CONSTRAINT PK_tbl_persona 
	PRIMARY KEY CLUSTERED (cuiPersona)
;

ALTER TABLE Tbl_Rol ADD CONSTRAINT PK_tbl_rol 
	PRIMARY KEY CLUSTERED (idRol)
;

ALTER TABLE Tbl_Sexo ADD CONSTRAINT PK_tbl_sexo 
	PRIMARY KEY CLUSTERED (idSexo)
;

ALTER TABLE Tbl_Tipo_Credito ADD CONSTRAINT PK_tbl_tipo_credito 
	PRIMARY KEY CLUSTERED (idTipCredito)
;

ALTER TABLE Tbl_Tipo_Documento ADD CONSTRAINT PK_tbl_Tipo_Documento 
	PRIMARY KEY CLUSTERED (idTipoDocumento)
;

ALTER TABLE Tbl_Usuario ADD CONSTRAINT PK_Tbl_Usuario 
	PRIMARY KEY CLUSTERED (idUsuario)
;


ALTER TABLE Tbl_Persona
	ADD CONSTRAINT UQ_Tbl_Persona_cuiPersona UNIQUE (cuiPersona)
;

ALTER TABLE Tbl_Tipo_Credito
	ADD CONSTRAINT UQ_Tbl_Tipo_Credito_nomTipCredito UNIQUE (nomTipCredito)
;

ALTER TABLE Tbl_Tipo_Documento
	ADD CONSTRAINT UQ_Tbl_Tipo_Documento_nomTipoDocumento UNIQUE (nomTipoDocumento)
;

ALTER TABLE Tbl_Usuario
	ADD CONSTRAINT UQ_Tbl_Usuario_idUsuario UNIQUE (idUsuario)
;


ALTER TABLE Tbl_Credito ADD CONSTRAINT FK_Tbl_Credito_Tbl_Estado 
	FOREIGN KEY (idEstado) REFERENCES Tbl_Estado (idEstado)
;

ALTER TABLE Tbl_Credito ADD CONSTRAINT FK_tbl_credito_tbl_tipo_credito 
	FOREIGN KEY (idTipCredito) REFERENCES Tbl_Tipo_Credito (idTipCredito)
;

ALTER TABLE Tbl_Detalle_Credito ADD CONSTRAINT FK_tbl_detalle_credito_tbl_credito 
	FOREIGN KEY (idCredito) REFERENCES Tbl_Credito (idCredito)
;

ALTER TABLE Tbl_DocxCredito ADD CONSTRAINT FK_Tbl_Documento_tbl_Tipo_Documento 
	FOREIGN KEY (idTipoDocumento) REFERENCES Tbl_Tipo_Documento (idTipoDocumento)
;

ALTER TABLE Tbl_DocxCredito ADD CONSTRAINT FK_Tbl_DocxCredito_Tbl_Credito 
	FOREIGN KEY (idCredito) REFERENCES Tbl_Credito (idCredito)
;

ALTER TABLE Tbl_Fiador ADD CONSTRAINT FK_Tbl_Fiador_Tbl_Credito 
	FOREIGN KEY (idCredito) REFERENCES Tbl_Credito (idCredito)
;

ALTER TABLE Tbl_Fiador ADD CONSTRAINT FK_Tbl_Fiador_Tbl_Persona 
	FOREIGN KEY (cuiPersona) REFERENCES Tbl_Persona (cuiPersona)
;

ALTER TABLE Tbl_Letras_De_Pago ADD CONSTRAINT FK_tbl_letras_de_pago_tbl_credito 
	FOREIGN KEY (idCredito) REFERENCES Tbl_Credito (idCredito)
;

ALTER TABLE Tbl_PermisoxRol ADD CONSTRAINT FK_Tbl_PermisoxRol_Tbl_Rol 
	FOREIGN KEY (idRol) REFERENCES Tbl_Rol (idRol)
;

ALTER TABLE Tbl_Persona ADD CONSTRAINT FK_tbl_persona_tbl_estado_civil 
	FOREIGN KEY (idEstCivil) REFERENCES Tbl_Estado_Civil (idEstCivil)
;

ALTER TABLE Tbl_Persona ADD CONSTRAINT FK_tbl_persona_tbl_sexo 
	FOREIGN KEY (idSexo) REFERENCES Tbl_Sexo (idSexo)
;

ALTER TABLE Tbl_Solicitante ADD CONSTRAINT FK_Tbl_Solicitante_Tbl_Credito 
	FOREIGN KEY (idCredito) REFERENCES Tbl_Credito (idCredito)
;

ALTER TABLE Tbl_Solicitante ADD CONSTRAINT FK_Tbl_Solicitante_Tbl_Persona 
	FOREIGN KEY (cuiPersona) REFERENCES Tbl_Persona (cuiPersona)
;

ALTER TABLE Tbl_Usuario ADD CONSTRAINT FK_Tbl_Usuario_tbl_persona 
	FOREIGN KEY (cuiPersona) REFERENCES Tbl_Persona (cuiPersona)
;





/****** Object:  StoredProcedure [dbo].[procTipoCreditoMostrarTodo]    Script Date: 04/10/2015 12:35:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Luis Garcia>
-- Create date: <Create Date,,10/09/2015>
-- Description:	<Description,,Mostrar Todo de Tipo Credito >
-- =============================================
CREATE PROCEDURE [dbo].[procTipoCreditoMostrarTodo]
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT *
  FROM [bd_credito].[dbo].[Tbl_Tipo_Credito]
  
  ;
END
GO
/****** Object:  StoredProcedure [dbo].[procTipoCreditoEleminar]    Script Date: 04/10/2015 12:35:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Luis Garcia>
-- Create date: <Create Date,,10/09/2015>
-- Description:	<Description,,Elimina un Tipo Credito >
-- =============================================
CREATE PROCEDURE [dbo].[procTipoCreditoEleminar]
	-- Add the parameters for the stored procedure here
@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE [bd_credito].[dbo].[Tbl_Tipo_Credito]
   SET 
      [estado] = 0
  WHERE [bd_credito].[dbo].[Tbl_Tipo_Credito].[idTipCredito]=@id
  
  ;
END
GO
/****** Object:  StoredProcedure [dbo].[procTipoCreditoCrear]    Script Date: 04/10/2015 12:35:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Luis Garcia>
-- Create date: <Create Date,,10/09/2015>
-- Description:	<Description,,Crea un Tipo Credito >
-- =============================================
CREATE PROCEDURE [dbo].[procTipoCreditoCrear]
	-- Add the parameters for the stored procedure here
@id int,
@nomTipCredito varchar(50),
@estado bit
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [bd_credito].[dbo].[Tbl_Tipo_Credito]
           ([nomTipCredito]
           ,[estado])
     VALUES
           ( @nomTipCredito
      , @estado)
  
  ;
END
GO
/****** Object:  StoredProcedure [dbo].[procTipoCreditoBuscar]    Script Date: 04/10/2015 12:35:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Luis Garcia>
-- Create date: <Create Date,,10/09/2015>
-- Description:	<Description,,Buscar un Tipo Credito >
-- =============================================
CREATE PROCEDURE [dbo].[procTipoCreditoBuscar]
	-- Add the parameters for the stored procedure here
@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT *
  FROM [bd_credito].[dbo].[Tbl_Tipo_Credito]
  WHERE [bd_credito].[dbo].[Tbl_Tipo_Credito].[idTipCredito]=@id
  
  ;
END
GO
/****** Object:  StoredProcedure [dbo].[procTipoCreditoActualizar]    Script Date: 04/10/2015 12:35:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Luis Garcia>
-- Create date: <Create Date,,10/09/2015>
-- Description:	<Description,,Actualiza un Tipo Credito >
-- =============================================
CREATE PROCEDURE [dbo].[procTipoCreditoActualizar]
	-- Add the parameters for the stored procedure here
@id int,
@nomTipCredito varchar(50),
@estado bit
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
SELECT 
      @nomTipCredito=[nomTipCredito]
  FROM [bd_credito].[dbo].[Tbl_Tipo_Credito]
  WHERE @nomTipCredito='' and [bd_credito].[dbo].[Tbl_Tipo_Credito].[idTipCredito]=@id
  
    -- Insert statements for procedure here
	UPDATE [bd_credito].[dbo].[Tbl_Tipo_Credito]
   SET 
      [nomTipCredito] = @nomTipCredito
      ,[estado] = @estado 
  WHERE [bd_credito].[dbo].[Tbl_Tipo_Credito].[idTipCredito]=@id
  
  ;
END
GO
/****** Object:  StoredProcedure [dbo].[procSexoMostrarTodo]    Script Date: 04/10/2015 12:35:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Luis Garcia>
-- Create date: <Create Date,,10/09/2015>
-- Description:	<Description,,Muestra todo>
-- =============================================
CREATE PROCEDURE [dbo].[procSexoMostrarTodo]
	-- Add the parameters for the stored procedure here
	
	
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT *
  FROM [bd_credito].[dbo].[Tbl_Sexo]
	
           ;
END
GO
/****** Object:  StoredProcedure [dbo].[procSexoEliminar]    Script Date: 04/10/2015 12:35:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Luis Garcia>
-- Create date: <Create Date,,10/09/2015>
-- Description:	<Description,,Elimina un Sexo>
-- =============================================
CREATE PROCEDURE [dbo].[procSexoEliminar]
	-- Add the parameters for the stored procedure here
	@id int
	
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE [bd_credito].[dbo].[Tbl_Sexo]
	SET 
      [estado] = 0
	WHERE [bd_credito].[dbo].[Tbl_Sexo].[idSexo]=@id
           ;
END
GO
/****** Object:  StoredProcedure [dbo].[procSexoCrear]    Script Date: 04/10/2015 12:35:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Luis Garcia>
-- Create date: <Create Date,,10/09/2015>
-- Description:	<Description,,Crea un Nuevo Sexo>
-- =============================================
CREATE PROCEDURE [dbo].[procSexoCrear]
	-- Add the parameters for the stored procedure here
	
	@nomSexo nvarchar(50)
	
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [bd_credito].[dbo].[Tbl_Sexo]
           ([nomSexo])
     VALUES
           (@nomSexo)
           ;
END
GO
/****** Object:  StoredProcedure [dbo].[procSexoBuscar]    Script Date: 04/10/2015 12:35:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Luis Garcia>
-- Create date: <Create Date,,10/09/2015>
-- Description:	<Description,,Busca un Sexo>
-- =============================================
CREATE PROCEDURE [dbo].[procSexoBuscar]
	-- Add the parameters for the stored procedure here
	@id int
	
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT *
  FROM [bd_credito].[dbo].[Tbl_Sexo]
	WHERE [bd_credito].[dbo].[Tbl_Sexo].[idSexo]=@id
           ;
END
GO
/****** Object:  StoredProcedure [dbo].[procSexoActulizar]    Script Date: 04/10/2015 12:35:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Luis Garcia>
-- Create date: <Create Date,,10/09/2015>
-- Description:	<Description,,Actualiza un Sexo>
-- =============================================
CREATE PROCEDURE [dbo].[procSexoActulizar]
	-- Add the parameters for the stored procedure here
	@id int,
	@nomSexo nvarchar(50),
	@estado bit
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
select @nomSexo=[bd_credito].[dbo].[Tbl_Sexo].[nomSexo]
from [bd_credito].[dbo].[Tbl_Sexo]
where @nomSexo='' and [bd_credito].[dbo].[Tbl_Sexo].[idSexo]=@id
;
    -- Insert statements for procedure here
	UPDATE [bd_credito].[dbo].[Tbl_Sexo]
	SET [nomSexo] = @nomSexo
      ,[estado] = @estado
	WHERE [bd_credito].[dbo].[Tbl_Sexo].[idSexo]=@id
           ;
END
GO
/****** Object:  StoredProcedure [dbo].[procRolMostrarTodo]    Script Date: 04/10/2015 12:35:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Luis Garcia>
-- Create date: <Create Date,,10/04/2015>
-- Description:	<Description,,Muestra todo del Rol>
-- =============================================
CREATE PROCEDURE [dbo].[procRolMostrarTodo]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT *
  FROM [bd_credito].[dbo].[Tbl_Rol]
END
GO
/****** Object:  StoredProcedure [dbo].[procRolEliminar]    Script Date: 04/10/2015 12:35:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Luis Garcia>
-- Create date: <Create Date,,10/09/2015>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[procRolEliminar]
	-- Add the parameters for the stored procedure here
	@id int
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE [bd_credito].[dbo].[Tbl_Rol]
   SET 
      [estado] = 0
 WHERE [bd_credito].[dbo].[Tbl_Rol].[idRol]=@id
  ;
END
GO
/****** Object:  StoredProcedure [dbo].[procRolCrear]    Script Date: 04/10/2015 12:35:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Luis Garcia>
-- Create date: <Create Date,,10/09/2015>
-- Description:	<Description,,Crea nuevo Rol>
-- =============================================
CREATE PROCEDURE [dbo].[procRolCrear]
	-- Add the parameters for the stored procedure here
	@nomRol nvarchar(50)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [bd_credito].[dbo].[Tbl_Rol]
           ([nomRol]
           )
     VALUES
           (@nomRol)
           ;
END
GO
/****** Object:  StoredProcedure [dbo].[procRolBuscar]    Script Date: 04/10/2015 12:35:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Luis Garcia>
-- Create date: <Create Date,,10/04/2015>
-- Description:	<Description,,Busca por el Id un rol>
-- =============================================
CREATE PROCEDURE [dbo].[procRolBuscar]
	-- Add the parameters for the stored procedure here
	@id int
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT *
  FROM [bd_credito].[dbo].[Tbl_Rol]
  WHERE [bd_credito].[dbo].[Tbl_Rol].[idRol]=@id
  ;
END
GO
/****** Object:  StoredProcedure [dbo].[procRolActulizar]    Script Date: 04/10/2015 12:35:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Luis Garcia>
-- Create date: <Create Date,,10/09/2015>
-- Description:	<Description,,Actualiza un Rol>
-- =============================================
CREATE PROCEDURE [dbo].[procRolActulizar]
	-- Add the parameters for the stored procedure here
	@id int,
	@nomRol nvarchar(50),
	@estado bit
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
select @nomRol=[Tbl_Rol].[nomRol]
from [bd_credito].[dbo].[Tbl_Rol]
where @nomRol='' and [bd_credito].[dbo].[Tbl_Rol].[idRol]=@id
;

    -- Insert statements for procedure here
	UPDATE [bd_credito].[dbo].[Tbl_Rol]
		SET [nomRol] = @nomRol
		  ,[estado] = @estado
		WHERE [bd_credito].[dbo].[Tbl_Rol].[idRol]=@id
           ;
END
GO
/****** Object:  StoredProcedure [dbo].[procEstadoMostrarTodo]    Script Date: 04/10/2015 12:35:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Luis Garcia>
-- Create date: <Create Date,,10/09/2015>
-- Description:	<Description,,Mostrar Todo de Estado >
-- =============================================
CREATE PROCEDURE [dbo].[procEstadoMostrarTodo]
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT *
  FROM [bd_credito].[dbo].[Tbl_Estado]
  ;
END
GO
/****** Object:  StoredProcedure [dbo].[procEstadoEliminar]    Script Date: 04/10/2015 12:35:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Luis Garcia>
-- Create date: <Create Date,,10/09/2015>
-- Description:	<Description,,Elimina un Estado >
-- =============================================
CREATE PROCEDURE [dbo].[procEstadoEliminar]
	-- Add the parameters for the stored procedure here
	@id int
	
	
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE [bd_credito].[dbo].[Tbl_Estado]
   SET 
      [estado] = 0
 WHERE [bd_credito].[dbo].[Tbl_Estado].[idEstado]=@id

  ;
END
GO
/****** Object:  StoredProcedure [dbo].[procEstadoCrear]    Script Date: 04/10/2015 12:35:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Luis Garcia>
-- Create date: <Create Date,,10/09/2015>
-- Description:	<Description,,Crea un Estado >
-- =============================================
CREATE PROCEDURE [dbo].[procEstadoCrear]
	-- Add the parameters for the stored procedure here
	
	@nomEstado varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [bd_credito].[dbo].[Tbl_Estado]
           (
           [nomEstado]
           )
     VALUES
           (@nomEstado
           )

  ;
END
GO
/****** Object:  StoredProcedure [dbo].[procEstadoCivilMostrarTodo]    Script Date: 04/10/2015 12:35:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Luis Garcia>
-- Create date: <Create Date,,10/09/2015>
-- Description:	<Description,,Muestra todo>
-- =============================================
CREATE PROCEDURE [dbo].[procEstadoCivilMostrarTodo]
	-- Add the parameters for the stored procedure here
	
	
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT *
	FROM [bd_credito].[dbo].[Tbl_Estado_Civil]
	
           ;
END
GO
/****** Object:  StoredProcedure [dbo].[procEstadoCivilEliminar]    Script Date: 04/10/2015 12:35:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Luis Garcia>
-- Create date: <Create Date,,10/09/2015>
-- Description:	<Description,,Elimina un Estado Civil>
-- =============================================
CREATE PROCEDURE [dbo].[procEstadoCivilEliminar]
	-- Add the parameters for the stored procedure here
	@id int
	
	
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE [bd_credito].[dbo].[Tbl_Estado_Civil]
   SET 
      [estado] = 0
 WHERE [bd_credito].[dbo].[Tbl_Estado_Civil].[idEstCivil]=@id
	           ;
END
GO
/****** Object:  StoredProcedure [dbo].[procEstadoCivilCrear]    Script Date: 04/10/2015 12:35:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Luis Garcia>
-- Create date: <Create Date,,10/09/2015>
-- Description:	<Description,,Crea un Estado Civil>
-- =============================================
CREATE PROCEDURE [dbo].[procEstadoCivilCrear]
	-- Add the parameters for the stored procedure here
	@nomestadoCivil nvarchar(50)
	
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [bd_credito].[dbo].[Tbl_Estado_Civil]
           ([idEstCivil])
     VALUES
           (@nomestadoCivil)
	           ;
END
GO
/****** Object:  StoredProcedure [dbo].[procEstadoCivilBuscar]    Script Date: 04/10/2015 12:35:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Luis Garcia>
-- Create date: <Create Date,,10/09/2015>
-- Description:	<Description,,Busca un Estado Civil>
-- =============================================
CREATE PROCEDURE [dbo].[procEstadoCivilBuscar]
	-- Add the parameters for the stored procedure here
	@id int
	
	
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT *
  FROM [bd_credito].[dbo].[Tbl_Estado_Civil]
 WHERE [bd_credito].[dbo].[Tbl_Estado_Civil].[idEstCivil]=@id
  
  ;
END
GO
/****** Object:  StoredProcedure [dbo].[procEstadoCivilActualizar]    Script Date: 04/10/2015 12:35:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Luis Garcia>
-- Create date: <Create Date,,10/09/2015>
-- Description:	<Description,,Actualiza un Estado Civil>
-- =============================================
CREATE PROCEDURE [dbo].[procEstadoCivilActualizar]
	-- Add the parameters for the stored procedure here
	@id int,
	@nomEstCivil nvarchar(50),
	@estado bit
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
SELECT @nomEstCivil=[nomEstCivil]
  FROM [bd_credito].[dbo].[Tbl_Estado_Civil]
 WHERE @nomEstCivil='' and [bd_credito].[dbo].[Tbl_Estado_Civil].[idEstCivil]=@id
  
    -- Insert statements for procedure here
	UPDATE [bd_credito].[dbo].[Tbl_Estado_Civil]
   SET [nomEstCivil] = @nomEstCivil
      ,[estado] = @estado
 WHERE [bd_credito].[dbo].[Tbl_Estado_Civil].[idEstCivil]=@id
	           ;
END
GO
/****** Object:  StoredProcedure [dbo].[procEstadoBuscar]    Script Date: 04/10/2015 12:35:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Luis Garcia>
-- Create date: <Create Date,,10/09/2015>
-- Description:	<Description,,Busca un Estado >
-- =============================================
CREATE PROCEDURE [dbo].[procEstadoBuscar]
	-- Add the parameters for the stored procedure here
	@id int
	
	
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT *
  FROM [bd_credito].[dbo].[Tbl_Estado]
 WHERE [bd_credito].[dbo].[Tbl_Estado].[idEstado]=@id
  
  ;
END
GO
/****** Object:  StoredProcedure [dbo].[procEstadoActualizar]    Script Date: 04/10/2015 12:35:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Luis Garcia>
-- Create date: <Create Date,,10/09/2015>
-- Description:	<Description,,Actualiza un Estado >
-- =============================================
CREATE PROCEDURE [dbo].[procEstadoActualizar]
	-- Add the parameters for the stored procedure here
	@id int,
	@nomEstado varchar(50),
	@estado bit
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
SELECT @nomEstado=[nomEstado]
  FROM [bd_credito].[dbo].[Tbl_Estado]
 WHERE @nomEstado='' and [bd_credito].[dbo].[Tbl_Estado].[idEstado]=@id
  
    -- Insert statements for procedure here
	UPDATE [bd_credito].[dbo].[Tbl_Estado]
   SET 
      [nomEstado] = @nomEstado
      ,[estado] = @estado
 WHERE [bd_credito].[dbo].[Tbl_Estado].[idEstado]=@id

  ;
END
GO
/****** Object:  StoredProcedure [dbo].[procUsusarioBuscar]    Script Date: 26/04/2015 15:37:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Luis Garcia>
-- Create date: <Create Date,,09/04/2015>
-- Description:	<Description,,Buca uno especifico>
-- =============================================
create PROCEDURE [dbo].[procUsusarioBuscar]
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT *
  FROM [dbo].[Tbl_Usuario]
  WHERE [dbo].[Tbl_Usuario].idUsuario=@id
  ;
END

GO


/****** Object:  StoredProcedure [dbo].[procUsuarioMostrarTodo]    Script Date: 26/04/2015 15:37:46 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Luis Garcia>
-- Create date: <Create Date,,09/04/2015>
-- Description:	<Description,, Mostrara todo el contenido de la tabla>
-- =============================================
Create PROCEDURE [dbo].[procUsuarioMostrarTodo] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	

		SELECT *
		  FROM [dbo].[Tbl_Usuario]
	
END

GO


/****** Object:  StoredProcedure [dbo].[procUsuarioLogin]    Script Date: 26/04/2015 15:37:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Luis Garcia>
-- Create date: <Create Date,,09/04/2015>
-- Description:	<Description,,Login>
-- =============================================
CREATE PROCEDURE [dbo].[procUsuarioLogin]
	-- Add the parameters for the stored procedure here
	@nomUsuario nvarchar(50), 
	@contraseñaUsuario nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @pasa int;
	SET @pasa=0;
    -- Insert statements for procedure here
	SELECT @pasa=[idUsuario]
	FROM [dbo].[Tbl_Usuario]
	WHERE [dbo].[Tbl_Usuario].[nomUsuario]=@nomUsuario
	AND 
	[dbo].[Tbl_Usuario].[contraseñaUsuario]=@contraseñaUsuario
	;
	IF (@pasa<>0)
		BEGIN
			SELECT *
			FROM [dbo].[Tbl_Usuario]
			WHERE [dbo].[Tbl_Usuario].[nomUsuario]=@nomUsuario
			AND 
			[dbo].[Tbl_Usuario].[contraseñaUsuario]=@contraseñaUsuario
			;
		END
	ELSE 
		BEGIN
		SELECT @pasa=[idUsuario]
		FROM [dbo].[Tbl_Usuario]
		WHERE [dbo].[Tbl_Usuario].[nomUsuario]=@nomUsuario
		;
		IF (@pasa<>0)
			BEGIN
				SELECT 'ci' as 'idUsuario'
				  ,'Contraseña Incorrecta' as 'nomUsuario'
				  ,0 as 'contraseñaUsuario'
				  ,0 as 'idRol'
				  ,0 as 'cuiPersona'
				  ,'true' as 'estado'
				;
			END
		ELSE
			BEGIN
				SELECT 'un' as 'idUsuario'
				  ,'Usuario NO encontrado' as 'nomUsuario'
				  ,0 as 'contraseñaUsuario'
				  ,0 as 'idRol'
				  ,0 as 'cuiPersona'
				  ,'true' as 'estado'
				;	
			END
		END
END

GO



--Autor Erick Hernandez procedimientos almacenados 
--de la tabla documento por credito
/****** Object:  StoredProcedure [dbo].[procDocxCreditoActualizar]    Script Date: 30/04/2015 23:42:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Erick Hernandez>
-- Create date: <Create Date,,30/04/2015>
-- Description:	<Description,,Actualiza un Documento por credito>
-- =============================================
CREATE PROCEDURE [dbo].[procDocxCreditoActualizar]
	-- Add the parameters for the stored procedure here
	@id int,
	@idPersona int,
	@idTipoDocumento int,
	@fecha datetime,
	@idCredito int,
	@estado bit

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	select @idPersona=[idPersona]
	from [bd_Credito].[dbo].[Tbl_DocxCredito]
	where @idPersona='' and [bd_Credito].[dbo].[Tbl_DocxCredito].[idPersona]=@id
	
	select @idTipoDocumento=[idTipoDocumento]
	from [bd_Credito].[dbo].[Tbl_DocxCredito]
	where @idTipoDocumento='' and [bd_Credito].[dbo].[Tbl_DocxCredito].[idTipoDocumento]=@id

	select @fecha=[fecha]
	from [bd_Credito].[dbo].[Tbl_DocxCredito]
	where @fecha='' and [bd_Credito].[dbo].[Tbl_DocxCredito].[fecha]=@id

	select @idCredito=[idCredito]
	from [bd_Credito].[dbo].[Tbl_DocxCredito]
	where @idCredito='' and [bd_Credito].[dbo].[Tbl_DocxCredito].[idCredito]=@id

 -- Insert statements for procedure here
	UPDATE [bd_credito].[dbo].[Tbl_DocxCredito]
   SET [idPersona] = @idPersona
      ,[idTipoDocumento] = @idTipoDocumento
      ,[fecha] = @fecha
      ,[idCredito] = @idCredito
			
	WHERE [bd_credito].[dbo].[Tbl_DocxCredito].[idDocumento]=@id
           ;
END
/****** Object:  StoredProcedure [dbo].[procDocxCreditoBuscar]    Script Date: 30/04/2015 23:43:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Erick, Hernandez>
-- Create date: <Create Date,,30/04/15>
-- Description:	<Description,,Procedimiento almacenado que busca un dato de la tabla documento por credito>
-- =============================================
CREATE PROCEDURE [dbo].[procDocxCreditoBuscar]
	-- Add the parameters for the stored procedure here
	@id int 

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT	* FROM	[bd_Credito].[dbo].[Tbl_DocxCredito]
	where [bd_Credito].[dbo].[Tbl_DocxCredito].[idDocumento]=@id 
END

/****** Object:  StoredProcedure [dbo].[procDocxCreditoCrear]    Script Date: 30/04/2015 23:44:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Erick Hernandez>
-- Create date: <Create Date,,30/04/2015>
-- Description:	<Description,,crea un documento por credito>
-- =============================================
CREATE PROCEDURE [dbo].[procDocxCreditoCrear]
	-- Add the parameters for the stored procedure here

	@idPersona int,
	@idTipoDocumento int,
	@fecha datetime,
	@idCredito int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO [dbo].[Tbl_DocxCredito]
           ([idPersona]
           ,[idTipoDocumento]
           ,[fecha]
           ,[idCredito])
     VALUES
			(@idPersona
			,@idTipoDocumento
			,@fecha
			,@idCredito)
END
/****** Object:  StoredProcedure [dbo].[procDocxCreditoEliminar]    Script Date: 30/04/2015 23:44:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Erick Hernandez>
-- Create date: <Create Date,,30/04/2015>
-- Description:	<Description,,Eliminar un Documento por credito>
-- =============================================
CREATE PROCEDURE [dbo].[procDocxCreditoEliminar]
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

 -- Insert statements for procedure here
	UPDATE [bd_credito].[dbo].[Tbl_DocxCredito]
	SET 
      [estado] = 0
	WHERE [bd_credito].[dbo].[Tbl_DocxCredito].[idDocumento]=@id
           ;
END
/****** Object:  StoredProcedure [dbo].[procDocxCreditoMostrarTodo]    Script Date: 30/04/2015 23:45:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Erick, Hernandez>
-- Create date: <Create Date,,30/04/15>
-- Description:	<Description,,Procedimiento almacenado que muestra todo lo de la tabla documento por credito>
-- =============================================
CREATE PROCEDURE [dbo].[procDocxCreditoMostrarTodo] 
	-- Add the parameters for the stored procedure here
	

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT	* FROM	[bd_Credito].[dbo].[Tbl_DocxCredito]
END

--finalizan procedimientos almacenados de erick Hernandez reynoso

--procedimientos creditoBitacora Juan Ramirez
/****** Object:  StoredProcedure [dbo].[procTipoCreditoCrear]    Script Date: 30/04/2015 11:27:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Juan Ramirez>
-- Create date: <Create Date,30/04/2015,>
-- Description:	<Description,CreditoBitacora crear,>
-- =============================================
CREATE PROCEDURE [dbo].[procCreditoBitacoraCrear]
	-- Add the parameters for the stored procedure here
	
           @idTipCredito	int,
           @monto			decimal(10,2),
		   @interes		decimal(10,2),
           @idusuarioAgente	 int,
		   @idEstado		int,
		   @letras  int,
           @creado datetime
           
           
           

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [dbo].[Tbl_Credito_Bitacora]
           (
           [idTipCredito]
           ,[monto]
           ,[tasInteres]
           ,[idusuarioAgente]
           ,[idEstado]
           ,[Letras]
           ,[creado]
            
          )
     VALUES

          (
		  @idTipCredito,
           @monto,
		   @interes	,
           @idusuarioAgente,        
           @idEstado,
		   @letras,
		   @creado
		   )

		end
GO
--------------------------------------------------------------------------------------------------------------------------

/****** Object:  StoredProcedure [dbo].[procCreditoBitacoraBuscar]    Script Date: 30/04/2015 11:52:09 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Juan Ramirez>
-- Create date: <Create Date,,30/04/2015>
-- Description:	<Description,Buscar bitacora Credito,>
-- =============================================
CREATE PROCEDURE [dbo].[procCreditoBitacoraBuscar] 
	-- Add the parameters for the stored procedure here
	@id int
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT *  FROM [dbo].[Tbl_Credito_Bitacora]
	where [dbo].[Tbl_Credito_Bitacora].idCredito = @id
END

----------------------------------------------------------------------------------------------------------------------
/****** Object:  StoredProcedure [dbo].[procCreditoBitacoraEliminar]    Script Date: 30/04/2015 11:53:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Juan Ramirez>
-- Create date: <Create Date,,30/04/2015>
-- Description:	<Description,Buscar bitacora Credito,>
-- =============================================
CREATE PROCEDURE [dbo].[procCreditoBitacoraEliminar] 
	-- Add the parameters for the stored procedure here
	@id int,
	@idEstado int
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	UPDATE [dbo].[Tbl_Credito_Bitacora]
   SET 
      [idEstado] =0 
	
	where [dbo].[Tbl_Credito_Bitacora].idCredito = @id
END
---------------------------------------------------------------------------------------------------------------------------
/****** Object:  StoredProcedure [dbo].[procCreditoBitacoraMostrarTodo]    Script Date: 30/04/2015 11:54:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,Juan,Ramirez>
-- Create date: <Create Date,30/04/2015,>
-- Description:	<Description,bitacora de credito,>
-- =============================================
CREATE PROCEDURE [dbo].[procCreditoBitacoraMostrarTodo]
 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT *  FROM [dbo].[Tbl_Credito_Bitacora]
END


--Termina procCreditoBitacora Juan Ramirez
-- empiezan los store del gordo
-- Modificar PERMISOS POR ROL
/****** Object:  StoredProcedure [dbo].[procPermisosxRolMostrarTodo]    Script Date: 05/01/2015 20:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Carlos Morales>
-- Create date: <Create Date,29/04/2015,>
-- Description:	<Description,Mostra todo los de Permisos por Rol,>
-- =============================================
CREATE PROCEDURE [dbo].[procPermisosxRolMostrarTodo]
	-- Add the parameters for the stored procedure here
	AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT *
  FROM [bd_Credito].[dbo].[Tbl_PermisoxRol]
END




--BUSCAR PERMISOS POR ROL
/****** Object:  StoredProcedure [dbo].[procPermisoxRolBuscar]    Script Date: 05/01/2015 20:11:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Carlos Morales>
-- Create date: <Create Date,29/04/2015,>
-- Description:	<Description,Buscar por ide los de la tabla Permiso por Rol y lo muestra,>
-- =============================================
CREATE PROCEDURE [dbo].[procPermisoxRolBuscar]
	-- Add the parameters for the stored procedure here
	@id int
	AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT *
  FROM  [bd_Credito].[dbo].[Tbl_PermisoxRol]
  where  [bd_Credito].[dbo].[Tbl_PermisoxRol].idRolxPermiso = @id
END




--cREAR pERMISOS POR ROL
/****** Object:  StoredProcedure [dbo].[procPermisoxRolCrear]    Script Date: 05/01/2015 20:11:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Carlos Morales>
-- Create date: <Create Date,29/04/2015,>
-- Description:	<Description,Crear por id los de la tabla Permiso por Rol y lo muestra,>
-- =============================================
CREATE PROCEDURE [dbo].[procPermisoxRolCrear]
	-- Add the parameters for the stored procedure here
		   @idPermiso	int
           ,@nomPermiso	varchar(50)
           ,@estado		bit
           ,@idRol		int
	AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO [bd_Credito].[dbo].[Tbl_PermisoxRol]
           ([idPermiso]
           ,[nomPermiso]
           ,[estado]
           ,[idRol])
     VALUES
		(
			@idPermiso	
           ,@nomPermiso	
           ,@estado		
           ,@idRol		
         )
           
END




--ELMINAR PERMISOS POR ROL
/****** Object:  StoredProcedure [dbo].[procPermisoxRolEliminar]    Script Date: 05/01/2015 20:11:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Carlos Morales>
-- Create date: <Create Date,01-05-2015,>
-- Description:	<Description,Elmina la los regristos de la tabla permisos por rol,>
-- =============================================
CREATE PROCEDURE  [dbo].[procPermisoxRolEliminar]
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE [[bd_Credito].[dbo].[Tbl_PermisoxRol]
   SET 
      [estado] = 0
 WHERE [bd_Credito].[dbo].[Tbl_PermisoxRol].idRolxPermiso = @id
END



--ACTUALIZAR PERMISOS POR ROL
/****** Object:  StoredProcedure [dbo].[procPermisosxRolActualizar]    Script Date: 05/01/2015 20:13:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Carlos Morales>
-- Create date: <Create Date,01-05-2015,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[procPermisosxRolActualizar]
	-- Add the parameters for the stored procedure here
		@id	int 
		,@idPermiso		int 
		,@idRol			int
		,@nomPermiso	varchar(50)
		,@estado		bit
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
SELECT 
      @idPermiso = [idPermiso]
  FROM [bd_Credito].[dbo].[Tbl_PermisoxRol]
  WHERE @idPermiso  = '' and [dbo].[Tbl_PermisoxRol].idRolxPermiso =@id
  SELECT   
      @idRol = [idRol]
  FROM [bd_Credito].[dbo].[Tbl_PermisoxRol]
  WHERE @idRol  = '' and [dbo].[Tbl_PermisoxRol].idRolxPermiso =@id
  SELECT
        @nomPermiso  = [nomPermiso] 
  FROM [bd_Credito].[dbo].[Tbl_PermisoxRol]
  WHERE @nomPermiso   = '' and [dbo].[Tbl_PermisoxRol].idRolxPermiso =@id
   SELECT
        @estado   = [estado]  
  FROM [bd_Credito].[dbo].[Tbl_PermisoxRol]
  WHERE @estado   = '' and [dbo].[Tbl_PermisoxRol].idRolxPermiso =@id
    -- Insert statements for procedure here

		UPDATE [bd_Credito].[dbo].[Tbl_PermisoxRol]
		   SET 
      [idPermiso]	= @idPermiso
      ,[nomPermiso] = @nomPermiso	
      ,[estado]		= @estado
      ,[idRol]		= @idRol
		 WHERE [bd_Credito].[dbo].[Tbl_PermisoxRol].idRolxPermiso = @id
END




--ACTUALIZAR PERMISOS POR ROL
/****** Object:  StoredProcedure [dbo].[procTipoDocumentoActualizar]    Script Date: 05/01/2015 20:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Carlos Morales>
-- Create date: <Create Date,29/04/2015,>
-- Description:	<Description,Actualiza la tabla Tipo de Documento y lo muestra,>
-- =============================================
CREATE PROCEDURE [dbo].[procTipoDocumentoActualizar]
	-- Add the parameters for the stored procedure here
		@idTipoDocumento	int 
		,@nomTipoDocumento	varchar(50)
		,@estado			bit
	AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
SELECT @nomTipoDocumento=[nomTipoDocumento]
  FROM [bd_Credito].[dbo].[tbl_Tipo_Documento]
 WHERE @nomTipoDocumento='' and [bd_Credito].[dbo].[tbl_Tipo_Documento].[idTipoDocumento]=@idTipoDocumento
    -- Insert statements for procedure here
UPDATE [bd_Credito].[dbo].[tbl_Tipo_Documento]
   SET 
        
      [nomTipoDocumento]	=	@nomTipoDocumento
      ,[estado]				=	@estado
      
 WHERE [bd_Credito].[dbo].[tbl_Tipo_Documento].[idTipoDocumento]=@idTipoDocumento

           
END




--BUSCAR PERMISOS POR ROL
/****** Object:  StoredProcedure [dbo].[procTipoDocumentoBuscar]    Script Date: 05/01/2015 20:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Carlos Morales>
-- Create date: <Create Date,29/04/2015,>
-- Description:	<Description,Buscar por ide los de la tabla Tipos de Documentos,>
-- =============================================
CREATE PROCEDURE [dbo].[procTipoDocumentoBuscar]
	-- Add the parameters for the stored procedure here
	@id int
	AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT *
  FROM [bd_Credito].[dbo].[tbl_Tipo_Documento]
  where [bd_Credito].[dbo].[tbl_Tipo_Documento].idTipoDocumento = @id
END

-- CREAR PERMISOS POR ROL
/****** Object:  StoredProcedure [dbo].[procTipoDocumentoCrear]    Script Date: 05/01/2015 20:15:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Luis Garcia>
-- Create date: <Create Date,,10/09/2015>
-- Description:	<Description,,Crea nuevo Rol>
-- =============================================
CREATE PROCEDURE [dbo].[procTipoDocumentoCrear]
	-- Add the parameters for the stored procedure here
	@nomDocumento nvarchar(50)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [dbo].[tbl_Tipo_Documento]
           ([nomTipoDocumento]
           ,estado)
     VALUES
           (@nomDocumento,'1')
           ;


select * from [dbo].[tbl_Tipo_Documento]
where [dbo].[tbl_Tipo_Documento].nomTipoDocumento=@nomDocumento
END
GO



--ELMINAR PERMISOS POR ROL
/****** Object:  StoredProcedure [dbo].[procTipoDocumentoEliminar]    Script Date: 05/01/2015 20:15:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Carlos Morales>
-- Create date: <Create Date,29/04/2015,>
-- Description:	<Description,Elimina por id los de la tabla Tipo de Documento y lo muestra,>
-- =============================================
CREATE PROCEDURE [dbo].[procTipoDocumentoEliminar]
	-- Add the parameters for the stored procedure here
		   @id int
	AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
UPDATE [bd_Credito].[dbo].[tbl_Tipo_Documento]
   SET 
      [estado] = 0
 WHERE [bd_Credito].[dbo].[tbl_Tipo_Documento].idTipoDocumento = @id

           
END




--MOSTRAR TODO PERMIOSOS POR ROL
/****** Object:  StoredProcedure [dbo].[procTipoDocumentoMostrarTodo]    Script Date: 05/01/2015 20:15:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Carlos Morales>
-- Create date: <Create Date,29/04/2015,>
-- Description:	<Description,Mostra todo los de la tabla Tipos de Documentos,>
-- =============================================
CREATE PROCEDURE [dbo].[procTipoDocumentoMostrarTodo]
	-- Add the parameters for the stored procedure here
	AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT *
  FROM [bd_Credito].[dbo].[tbl_Tipo_Documento]
END



;


/****** Object:  Trigger [dbo].[tggCreditoAntesActualizar]    Script Date: 04/10/2015 17:02:18 ******/

-- =============================================
-- Author:		<Author,,Luis Garcia>
-- Create date: <Create Date,,10/09/2015>
-- Description:	<Description,,trigger de Credito Antes de Actualizar >
-- =============================================
CREATE TRIGGER [dbo].[tggCreditoAntesActualizar]
   ON  [bd_credito].[dbo].[Tbl_Credito]
   INSTEAD OF UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	Declare @idCredito int
			,@nomCredito varchar(50)
           ,@monto decimal(10,2)
           ,@idusuarioCliente int
           ,@idusuarioAgente int
           ,@idtipoCredito int
           ,@interes decimal(10,2)
           ,@idEstado int
      ;
select @idCredito=a.[idCredito]
      ,@nomCredito=a.[nomCredito]
      ,@monto=a.[monto]
      ,@idusuarioCliente=a.[idusuarioCliente]
      ,@idusuarioAgente=a.[idusuarioAgente]
      ,@idtipoCredito=a.[idtipCredito]
      ,@interes=a.[interes]
      ,@idEstado=a.[idEstado] 
from [bd_credito].[dbo].[Tbl_Credito] a INNER JOIN INSERTED ins ON a.[idCredito] = ins.[idCredito]
;

    -- Insert statements for trigger here
INSERT INTO [bd_credito].[dbo].[Tbl_Credito_Bitacora]
           ([idCredito]
           ,[nomCredito]
           ,[monto]
           ,[idusuarioCliente]
           ,[idusuarioAgente]
           ,[idtipCredito]
           ,[interes]
           ,[idEstado])
     VALUES
           (@idCredito 
			,@nomCredito
           ,@monto 
           ,@idusuarioCliente 
           ,@idusuarioAgente 
           ,@idtipoCredito 
           ,@interes 
           ,@idEstado )
           ;
 select @idCredito=ins.[idCredito]
      ,@nomCredito=ins.[nomCredito]
      ,@monto=ins.[monto]
      ,@idusuarioCliente=ins.[idusuarioCliente]
      ,@idusuarioAgente=ins.[idusuarioAgente]
      ,@idtipoCredito=ins.[idtipCredito]
      ,@interes=ins.[interes]
      ,@idEstado=ins.[idEstado] 
from [bd_credito].[dbo].[Tbl_Credito] a INNER JOIN INSERTED ins ON a.[idCredito] = ins.[idCredito]
;
      UPDATE [bd_credito].[dbo].[Tbl_Credito]
   SET [nomCredito] = @nomCredito
      ,[monto] = @monto
      ,[idusuarioCliente] = @idusuarioCliente
      ,[idusuarioAgente] = @idusuarioAgente
      ,[idtipCredito] = @idtipoCredito
      ,[interes] = @interes
      ,[idEstado] = @idEstado
 WHERE [bd_credito].[dbo].[Tbl_Credito].[idCredito]=@idCredito
END

GO



;

;
